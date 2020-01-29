# Hive-ft_printf
Recode of the libc’s printf function.

## Objectives
 
The versatility of the printf function in C represents a great exercise in programming for
us. This project is of moderate difficulty. It will enable you to discover variadic functions
in C in a particularly relevant context as well as learn about a great example of a basic
“dispatcher” in C via the use of an array of function’s pointers.

The key to a successful ft_printf is a well-structured and good extensible code. This
is because as time goes by, you will be more and more tempted to continue to extend
your ft_printf, making your life easier for your future projects. So take your time to
code properly while keeping in mind that you will have to read again your code in a few
weeks or a few months to extend its functionality according to your needs. It would be a
shame not to being able to do it because your can’t read your own work. What do you think?

## Grade

**112 / 100**

## Implemented Bonuses
* Font and background colors
* Bold, underline and reverse colors
* Binary print
* Wildcard *
* dprintf

## Current Issues
* Precision of >19 not rounding up correctly for ex. ("%.20f\n", 1.025978542436587568678)
* Wildcard not working correctly with:
  * Negative precision with numbers
  * ncorrect amount of arguments
  
_Completed 29.1.2019._
