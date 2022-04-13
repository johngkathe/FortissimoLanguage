#Forte Grammar Makefile

#Compiler and Flags
CXX = gcc
CXXFLAGS = -std=c89 -g -Wall -Wextra -ggdb3 -O0 -save-temps
LDFLAGS = -lm 

#Executable
EXEC = fortissimo_bytecode

#Function for finding source code.
glob = $(foreach d, $(wildcard $(1:=/*)), $(call glob, $d, $2) $(filter $(subst *, %, $2), $d))

#Automatically constructed file lists
SRCS := $(wildcard *.c)
SRCS += $(call glob, *, *.c)

HDRS := $(wildcard *.h)
HDRS += $(call glob, *, *.h)

OBJS := $(patsubst %.c, bin/%.o, $(SRCS))

#Build targets
bin/%.o: %.c $(HDRS)
		@mkdir -p $(dir $@)
		$(CXX) $(CXXFLAGS) -c $< -o $@

build: $(EXEC)

$(EXEC): $(OBJS)
		$(CXX) $(OBJS) -o $@ $(LDFLAGS)

#Execution commands
run: build
		./$(EXEC)

clean:
		rm -rf bin
		rm $(EXEC)

#Update to most recent git state.
#Use `make git m="your message"` in the terminal to modify $m
git:
		git add .
		git commit -m "$m"	
		git push -u origin master

#Print the file lists
print_e:
		@echo $(EXEC) | tr " " "\n"
print_s: 
		@echo $(SRCS) | tr " " "\n"
print_h: 
		@echo $(HDRS) | tr " " "\n"
print_o:
		@echo $(OBJS) | tr " " "\n"