# FortissimoLanguage
## What is Fortissimo (.ff)?
Fortissimo is a gradually typed (well, I'm working towards that part), C-based language currently under construction.  My goal is to create a language suitable for Web 3.0 development with a bytecode VM that "compiles" to WASM in the browser (figuring out what to do with it natively) and friendly to JavaScript developers yet robust.  The goal with syntax is to be concise and minimalistic when it is sensible to do so.
## Introduction to Fortissimo Syntax and Grammar
### Note about features: 
  *: broken/incomplete feature
  
  **: umimplemented feature
 
### Comments:

 #This is a line comment
 
 #|This
 
   Is
   
   A
   
   Block
   
   Comment
   
   #|That can be nested!|#
   
 |#
 
 ### Puts (Printing to the console):
 
 puts 1    #Prints the number '1' to the console.
 
 puts "Hello, world!"  #Prints 'Hello, world!' to the console.
 
 puts var  #Prints the contents of var to the console.
 
 ### Variable Declarations*

myImmut: i8 :: 0       #Immutable variable declaration of an 8-bit, signed integer called 'myImmut'.

myMut: u16 := 1000     #Mutable variable declaration of a 16-bit, unsigned integer called 'myMut'.

pi32Bit: f32 :: 3.14159265358979323846264  #Immutable variable declaration of a 32-bit, floating point number called 'pi32Bit'.

cliche: string := "Hello, world!"  #Mutable variable declaration of a string called 'cliche'.

implicitLet := 9001  #An implicit declaration of a mutable variable, which by default is a 64-bit, floating point number, called 'implicitLet'.

### Array Declarations**

