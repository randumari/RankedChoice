>+++++++[<+++++++>-]<-  # store '0' (48) ascii memory inx 0
>>++++++++[<++++++++>-]<+ # store 'A' ascii memory inx 1
>++++[>+++++<-]>[<+++++>-]<--- # store 'a' ascii memory inx 2

# Please enter your choices
# Save 'P'= 97 @ inx 3
><<[>>+>+<<<-]>>>[-<<<+>>>]< # Copy 'A' inx 3
>+++++[>+++<-] # store 15 inx 5
>[-<<+>>]<< # Add inx 3 and inx 5  inx 3 = 'P'

# Save 'l' at inx 4
>+++++++++++ # Store offset from 'a'=11 @ inx 4
<<[>>+>+<<<-]>>>[-<<<+>>>]< # Add 'a' from inx 2 to inx 4

# Save 'e' at inx 5
>++++ # Store offset from 'a'=4 @ inx 5
<<<[>>>+>+<<<<-]>>>>[-<<<<+>>>>]< # Add 'a' from inx 2 to inx 5

# Save 'a' at inx 6
<<<[>>>>+>+<<<<<-]>>>>>[-<<<<<+>>>>>]<

# Save 's' (offset 18) at inx 7
>>++++[<++++>-]<++ # Store offset from 'a'=18 at inx 7
<<<<<[>>>>>+>+<<<<<<-]>>>>>>[-<<<<<<+>>>>>>]<

# Copy 'e' from inx 5 to inx 8
<<[->>>+>+<<<<]>>>>[-<<<<+>>>>]<

# Save ' ' = 32 at inx 9
>>+++++[<++++++>-]<++

# Save 'e' at inx 10
# Copy 'e' from inx 8 to inx 10
<[->>+>+<<<]>>>[-<<<+>>>]<

# Save 'n' at inx 11
# Copy 'e' from inx 10 to inx 11
[->+>+<<]>>[-<<+>>]<
# Add offset of 9 to get 'n'
+++++++++

# Save 't' at inx 12
# Copy 'n' from inx 11 to inx 12
[->+>+<<]>>[-<<+>>]<
# Add offset of 6 to get 't'
++++++

# Save 'e' at inx 13
# Copy 'e' from inx 8 to inx 13
<<<<[->>>>>+>+<<<<<<]>>>>>>[-<<<<<<+>>>>>>]<

# Save 'r' at inx 14
# Copy 't' from inx 12 to inx 14
<[->>+>+<<<]>>>[-<<<+>>>]<
# Subtract offset 2 to get 't'
--

# Save ' ' at inx 15
>>+++++[<++++++>-]<++

# Save 'y' at inx 16
# Copy 't' from inx 12 to inx 16
<<<[->>>>+>+<<<<<]>>>>>[-<<<<<+>>>>>]<
# Add offset 5 to get 'y'
+++++

# Save 'o' at inx 17
# Copy 't' from inx 12 to inx 17
<<<<[->>>>>+>+<<<<<<]>>>>>>[-<<<<<<+>>>>>>]<
# Subtract offset 5 to get 'o'
-----

# Save 'u' at inx 18
# Copy 'y' from inx 16 to inx 18
<[->>+>+<<<]>>>[-<<<+>>>]<
# Subtract offset 4 to get 'u'
----

# Save 'r' at inx 19
# Copy 'u' from inx 18 to inx 19
[->+>+<<]>>[-<<+>>]<
# Subtract offset 3 to get 'r'
---

# Save ' ' at inx 20
>>+++++[<++++++>-]<++

# Save 'c' at inx 21
# Generate 'c'=99
>++++[>+++++<-]>[<+++++>-]<-

# Save 'h' at inx 22
# Copy 'c' from inx 21 to inx 22
[->+>+<<]>>[-<<+>>]<
# Add offset 5
+++++

# Save 'o' at inx 23
# Copy 'h' from inx 22 to inx 23
[->+>+<<]>>[-<<+>>]<
# Add offset 7
+++++++

# Save 'i' at inx 24
# Copy 'h' from inx 22 to inx 24
<[->>+>+<<<]>>>[-<<<+>>>]<
# Add offset 1
+

# Save 'c' at inx 25
# Copy 'c' from inx 21 to inx 25
<<<[->>>>+>+<<<<<]>>>>>[-<<<<<+>>>>>]<

# Save 'e' at inx 26
# Copy 'c' from inx 25 to inx 26
[->+>+<<]>>[-<<+>>]<
# Add offset 2
++

# Save 's' at inx 27
# Generate 125 at inx 27
>+++++[>+++++<-]>[<+++++>-]<
# Subtract 10 to get 's' (115)
----------

# Save '\n' at inx 28
>++++++++++

# Print prompt
<<<<<<<<<<<<<<<<<<<<<<<<<.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.

# Create a temp slot
>

# While user enters non newline integers save them.  Init temp slot to 1:
>+  >++++++[<++++++>-]<++[ >------[<------>+]<-- >,.----------] # Read until newline converting ascii numbers to memory numbers


>>>+>+>+>+>+>+>+>+>+>+[<]<<<[<]> # Initialize array to 10 votables set to 1 vote each and inx to first vote entry
>
# Loop to copy vote entries into appropriate slots in histogram
[
  # Loop to copy value to array head
  [
  
  # Decrement the vote entry and increment value at the array head minus two
  # Inx = original vote entry pos if decremented to 0 else one before entry header bit
  ->[>]>+<<[<] 

  # Inx = original vote entry pos regardless of if decremented to zero
  <-[+>+>-] # Move to entry header bit but move its value left one
  <[->+<]>> # Restore entry header bit and move to vote entry pos
  ]
  
  >[>]> # Inx = new vote entry pos

  # Increment index in array pointed to by vote entry but array gets shifted left one
  [
    >>[-<+>] # shift first element left one and index at first element originial pos
    <<[->>+<<] # shift vote entry to first element's pos and index at original vote entry pos
    >[-<+>]>[-<+>] # shift entry left one and vote entry left one with index just after
    <- # decrement vote entry
  ]
  <++ # increment array element indicated by vote entry (doubled since this is a primary vote)

  # Shift array to left of inx including inx right two
  [[->>+<<]<]
  

  # Move cursor to first remaining vote entry and set entry header bit
  <[<]+> 
]

# Print Histogram:
>>>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------

# Move back to prompt zeroing memory along the way
<<<<<<<<<<
-[+<-]
----------[++++++++++<----------]++++++++++
. # At ASCII boundary | print a newline
<<<<<<<<<<<<<<<<<<<<<<<<<

# Print prompt
.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.

# Create a temp slot
>

# While user enters non newline integers save them.  Init temp slot to 1:
>+  >++++++[<++++++>-]<++[ >------[<------>+]<-- >,----------] # Read until newline converting ascii numbers to memory numbers

<[<]>> # Move to first vote entry

# Loop to copy vote entries into appropriate slots in histogram
[
  # Loop to copy value to array head
  [
  
  # Decrement the vote entry and increment value at the array head minus two
  # Inx = original vote entry pos if decremented to 0 else one before entry header bit
  ->[>]>+<<[<] 

  # Inx = original vote entry pos regardless of if decremented to zero
  <-[+>+>-] # Move to entry header bit but move its value left one
  <[->+<]>> # Restore entry header bit and move to vote entry pos
  ]
  
  >[>]> # Inx = new vote entry pos

  # Increment index in array pointed to by vote entry but array gets shifted left one
  [
    >>[-<+>] # shift first element left one and index at first element originial pos
    <<[->>+<<] # shift vote entry to first element's pos and index at original vote entry pos
    >[-<+>]>[-<+>] # shift entry left one and vote entry left one with index just after
    <- # decrement vote entry
  ]
  <+ # increment array element indicated by vote entry (this is the secondary vote so one point)

  # Shift array to left of inx including inx right two
  [[->>+<<]<]
  

  # Move cursor to first remaining vote entry and set entry header bit
  <[<]+> 
]

# Print Histogram:
>>>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------
>
++++++++++++++++++++++++++++++++++++++++++++++++.
------------------------------------------------


# Pretty Print results:
>>

# Initialize divisor 10 and also print newline
++++++++++.

# Print 1st element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<<<<<<<<[->>>>>>>>>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<<<<<<<<]
# temp1=0 temp4=10
>>>>>>>>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<<<<<<<<+>>>>>>>>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Print next element
# Initialize divisor 10
++++++++++

# Print 2nd element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<<<<<<<[->>>>>>>>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<<<<<<<]
# temp1=0 temp4=10
>>>>>>>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<<<<<<<+>>>>>>>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++

# Print 3rd element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<<<<<<[->>>>>>>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<<<<<<]
# temp1=0 temp4=10
>>>>>>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<<<<<<+>>>>>>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++

# Print 4th element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<<<<<[->>>>>>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<<<<<]
# temp1=0 temp4=10
>>>>>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<<<<<+>>>>>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++


# Print 5th element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<<<<[->>>>>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<<<<]
# temp1=0 temp4=10
>>>>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<<<<+>>>>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++

# Print 6th element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<<<[->>>>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<<<]
# temp1=0 temp4=10
>>>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<<<+>>>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++

# Print 7th element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<<[->>>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<<]
# temp1=0 temp4=10
>>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<<+>>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++

# Print 8th element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<<[->>>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<<]
# temp1=0 temp4=10
>>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<<+>>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++

# Print 9th element
# X=0 temp0=X temp1=10_minus_modulus temp2=X_mod_10
<<<[->>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<<]
# temp1=0 temp4=10
>>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<<+>>] # copy temp0 to tail | inx=temp0

# Print space
>>+++++[<++++++>-]<++.[-]

# Initialize divisor 10
++++++++++

# Print tail element
# tail=0 temp0=tail temp1=10_minus_tail temp2=tail
# tail=0 temp0=tail temp1=10_minus_modulus temp2=1_for_tail=12
<<[->+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]
# temp1=0 temp4=10
>>[-]>>>++++++++++<
# operate on temp3
# divide temp3 by temp4 saved to temp5
[->-[>+>>]>[+[-<+>]>+>>]<<<<<]
>[-] # clear temp4
# print hundreds place
>>[>++++++[-<++++++++>]<.<<+>+>[-]]
# print tens place
<[<[->-<]++++++[->++++++++<]>.[-]]
# use temp3 to add 48 to temp2 and print corresponding ASCII
# print ones place
<<++++++[-<++++++++>]<.
[-] # clear temp2
<<[-<+>]< # copy temp0 to tail











