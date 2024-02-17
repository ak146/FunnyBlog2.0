---
toc: True
comments: True
layout: post
title: Collegeboard/Psuedo Code
description: Practice test corrections and Psuedo code
type: tangibles
courses: {'csp': {'week': 11}}
---

## [Pseudo Code](https://apcentral.collegeboard.org/media/pdf/ap-computer-science-principles-exam-reference-sheet.pdf)
- Example
<img src="https://media.discordapp.net/attachments/1143438030749847604/1165903186473783317/image.png?ex=65488af5&is=653615f5&hm=349a4cfef60546b6f85e59a2448ac85ed4fd0181d63f70456904909e46401d74&=">

<img src="https://media.discordapp.net//attachments/909575347773775953/1166199627083698217/namingprocedures.png?ex=65499f0a&is=65372a0a&hm=6a7d0bf546b51e54837e3cd8d5993063d9ab28ac4f19bd6e49b6a540424a30a5&">

> Instructions:
- The blue triangle represents a robot that moves in a grid of squares. The tip of the triangle indicates where the robot is facing.
- Write a procedure that allows the robot to make a detour around a block by moving to the left.

> Commands
- MOVE_FORWARD() - Moves the robot forward one square
- MOVE_BACKWARD() - Moves the robot backward one square
- ROTATE_LEFT() - Rotates the robot 90 degrees left
- ROTATE_RIGHT() - Rotates the robot 90 degrees right

> Your code here:
PROCEDURE RobotDetour <br>
{ <br>
&nbsp;&nbsp;&nbsp;&nbsp;ROTATE_LEFT() <br>
&nbsp;&nbsp;&nbsp;&nbsp;MOVE_FORWAWRD() <br>
&nbsp;&nbsp;&nbsp;&nbsp;ROTATE_RIGHT() <br>
&nbsp;&nbsp;&nbsp;&nbsp;MOVE_FORWARD() <br>
&nbsp;&nbsp;&nbsp;&nbsp;MOVE_FORWARD() <br>
&nbsp;&nbsp;&nbsp;&nbsp;ROTATE_RIGHT() <br>
&nbsp;&nbsp;&nbsp;&nbsp;MOVE_FORWARD() <br>
}

## Things to study
- Pseudo code is slightly different than actual code
- make sure I read what each function does. 
- encoding 
- 13, is it A or D?
- 29 is confusing?
- I have a lot of work to do when it comes to reading pseudo code. 
- next time it might be a good idea to use paper to visualize the code
- open standards?
- 45: I dont understand the notation

## FOR NEXT TIME
- I need to slow down and read the questions.
- I need to learn encryption again.
- I need to draw out the code thats being displayed so I can show how the pseudo code great. 

<h3>Question 18</h3>

Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A population researcher is interested in predicting the number of births that will occur in a particular community. She created a computer model that uses data from the past ten years, including number of residents and the number of babies born. The model predicted that there would be 200 births last year, but the actual number of births last year was only 120. Which of the following strategies is LEAST likely to provide a more accurate prediction?

#### Answer 18
**Answer: C**<br>
This option is incorrect. Gathering additional data may help the simulation provide a more accurate prediction.

Answer C

This option is correct. Removing details from the model may help it run quickly, but is unlikely to provide more accurate results..

<h3>Question 21</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

The following question uses a robot in a grid of squares. The robot is represented by a triangle, which is initially facing right.

The figure shows a grid of squares with 4 columns and 8 rows. The square in the first row and third column is gray, and all other squares are white. The square in the fourth row and first column contains a right-facing triangle, representing a robot. A path of arrows shows the robot’s movement from its initial location to the gray square. The path shows the robot moving 2 squares to the right from its initial location, then 3 squares up to the gray square.

Consider the procedures below.

The block code consists of 3 lines. Begin block Line 1: PROCEDURE, Move X Times, 1 word with capital M, X, and T, begin block, x, end block Begin block Line 2, indented 1 tab: REPEAT x TIMES Begin block Line 3, indented 2 tabs: MOVE underscore FORWARD End Block End block End block The block code consists of 3 lines. Begin block Line 1: PROCEDURE, Right X Times, 1 word with capital R, X, and T, begin block, x, end block Begin block Line 2, indented 1 tab: REPEAT x TIMES Begin block Line 3, indented 2 tabs: ROTATE underscore RIGHT End block End block End block

Which of the following code segments will move the robot to the gray square?

#### Asnwer 21
**Answer: B**<br>
This option is correct. This code segment moves the robot forward two squares, rotates it right three times so that the robot faces the top of the grid, and then moves the robot forward three squares to the gray square.

This option is incorrect. This code segment moves the robot forward two squares, rotates it right one time so that the robot faces the bottom of the grid, and then moves the robot forward three squares.


<h3>Ouestion 24</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

Byte pair encoding is a data encoding technique. The encoding algorithm looks for pairs of characters that appear in the string more than once and replaces each instance of that pair with a corresponding character that does not appear in the string. The algorithm saves a list containing the mapping of character pairs to their corresponding replacement characters.

For example, the string Open quotation, THIS, underscore, IS, underscore, THE, underscore, BEST, underscore, WISH, close quotation can be encoded as Open quotation, percent, hash, underscore, hash, underscore, percent E, underscore, BEST, underscore, W, hash, H, close quotation by replacing all instances of Open quotation, T H, close quotation with Open quotation, percent, close quotationand replacing all instances of Open quotation, I S, close quotation with Open quotation, hash, close quotation.

Which of the following statements about byte pair encoding is true?

#### Answer 24
**Answer: C**<br>
Answer C

This option is correct. The transformation is lossless because an encoded string can be restored to its original version. For example, Open quotation, percent, hash, underscore, hash, underscore, percent E, underscore, BEST, underscore, W, hash, H, close quotation can be restored to Open quotation, THIS, underscore, IS, underscore, THE, underscore, BEST, underscore, WISH, close quotation by replacing all instances of Open quotation, percent, close quotationwith Open quotation, T H, close quotation and by replacing all instances of Open quotation, hash, close quotation with Open quotation, I S, close quotation.


<h3> Question 25</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

Byte pair encoding is a data encoding technique. The encoding algorithm looks for pairs of characters that appear in the string more than once and replaces each instance of that pair with a corresponding character that does not appear in the string. The algorithm saves a list containing the mapping of character pairs to their corresponding replacement characters.

For example, the string Open quotation, THIS, underscore, IS, underscore, THE, underscore, BEST, underscore, WISH, close quotation can be encoded as Open quotation, percent, hash, underscore, hash, underscore, percent E, underscore, BEST, underscore, W, hash, H, close quotation by replacing all instances of Open quotation, T H, close quotation with Open quotation, percent, close quotationand replacing all instances of  Open quotation, I S, close quotation with Open quotation, hash, close quotation.

For which of the following strings is it NOT possible to use byte pair encoding to shorten the string’s length?

#### Answer 25
**Answer: B**

This option is correct. It is not possible to use byte pair encoding in the string Open quotation, LEVEL, underscore, UP, close quotationbecause no pair of characters appears in the string more than once


<h3>Question 27</h3> 

Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A student wrote the following code for a guessing game.

The program consists of 22 lines. Begin program Line 1: one word, secret Number, left arrow, RANDOM, open parenthesis, 1 comma 100, close parenthesis Line 2: win, left arrow, false Line 3: REPEAT UNTIL, open parenthesis, win, close parenthesis Line 4: open brace Line 5: DISPLAY, open parenthesis, open quotation, Guess a number., close quotation, close parenthesis Line 6: guess, left arrow, INPUT, open parenthesis, close parenthesis Line 7: IF, open parenthesis, guess, equals, one word secret Number, close parenthesis Line 8: open brace Line 9: DISPLAY, open parenthesis, open quotation, You got it right !, end quotation, close parenthesis Line 10: close brace Line 11: ELSE Line 12: open brace Line 13: IF, open parenthesis, guess, is greater than, one word secret Number, close parenthesis Line 14: open brace Line 15: DISPLAY, open parenthesis, open quotation, Your guess is too high., end quotation, close parenthesis Line 16: close brace Line 17: ELSE Line 18: open brace Line 19: DISPLAY, open parenthesis, open quotation, Your guess is too low., end quotation, close parenthesis Line 20: close brace Line 21: close brace Line 22: close brace End program.

While debugging the code, the student realizes that the loop never terminates. The student plans to insert the instruction Win, left arrow, true somewhere in the code. Where could Win, left arrow, true be inserted so that the code segment works as intended?

#### Answer 27
**Answer: B**
This option is correct. Inserting Win, left arrow, true between line 9 and line 10 will cause the loop to terminate when the guess is correct.

<h3>Question 29 </h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

The diagram below shows a circuit composed of three logic gates. Each gate takes two inputs and produces a single output.

The figure shows a logic gate with inputs A, B, C, and D. Inputs A and B lead into an AND gate. Inputs C and D lead into an OR gate. The outputs of the AND and OR gates lead into a second OR gate. The output of the second OR gate is labeled output.

For which of the following input values will the circuit have an output of false ?


#### Answer 29
**Answer: A**
This option is correct. With these inputs, the AND gate will produce an output of false and the first OR gate will produce an output of false. Since both inputs to the second OR gate will be false, the circuit will have an output of false.

<h3>Question 30</h3>



Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A video-streaming service maintains a database of information about its customers and the videos they have watched.

The program below analyzes the data in the database and compares the number of viewers of science fiction videos to the number of viewers of videos of other genres. It uses the procedure Analysis, open parenthesis, category, close parenthesis , which returns the number of unique users who viewed videos of a given category in the past year. The Analysis procedure takes approximately 1 hour to return a result, regardless of the number of videos of the given genre. All other operations happen nearly instantaneously.

 

The program consists of 9 lines. Begin program Line 1: one word sci Fi Fans, left arrow, Analysis, open parenthesis, open quotation, science fiction, close quotation, close parenthesis Line 2: one word genre List, left arrow, open bracket, open quotation, comedy, close quotation, open quotation, drama, close quotation, open quotation, mystery, close quotation, open quotation, romance, close quotation, close bracket Line 3: FOR EACH genre IN, one word genre List Line 4: open brace Line 5: IF, open parenthesis, Analysis, open parenthesis, genre, close parenthesis, greater than ampersand, one word sci Fi Fans, close parenthesis Line 6: open brace Line 7: DISPLAY, open parenthesis, genre, close parenthesis Line 8: close brace Line 9: close brace End program.
Which of the following best approximates the amount of time it takes the program to execute?

#### Answer 30
**Answer: D**
This option is correct. Each call to the Analysis procedure requires one hour of program execution time. The procedure is called
once before the loop, and then four times inside the loop (once for each of the four entries in One word, genre List). Therefore, the program will take approximately 5 hours to execute.

<h3>Question 31</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

The question below uses a robot in a grid of squares. The robot is represented as a triangle, which is initially in the bottom right square of the grid and facing toward the top of the grid.

The figure shows a grid of squares with 5 columns and 5 rows. The bottom right square of the grid contains an upward-facing triangle, representing a robot. The top left square of the grid is shaded gray. All other squares are white.

The following programs are each intended to move the robot to the gray square. Program II uses the procedure One word, Goal Reached, which returns true if the robot is in the gray square and returns 

false otherwise.
Program I: The block code consists of 5 lines. Begin block Line 1: REPEAT 4 TIMES Begin block Line 2, indented 1 tab: MOVE underscore FORWARD Line 3, indented 1 tab: ROTATE underscore LEFT Line 4, indented 1 tab: MOVE underscore FORWARD Line 5, indented 1 tab: ROTATE underscore RIGHT End block End blockProgram II: The block code consists of 5 lines. Begin block Line 1: REPEAT UNTIL, begin block, Goal Reached, 1 word with capital G and R, end block Begin block Line 2, indented 1 tab: IF, begin block, CAN underscore MOVE, begin block, forward, end block, end block Begin block Line 3, indented 2 tabs: MOVE underscore FORWARD End block Line 4, indented 1 tab: ELSE Begin block Line 5, indented 2 tabs: ROTATE underscore LEFT End block End block End block

Which of the following statements is true?

#### Answer 31
**Answer C**
This option is correct. Program I correctly moves the robot to the gray square by repeatedly moving the robot forward, rotating left, moving forward, and rotating right. Program II correctly moves the robot to the gray square by moving the robot forward to the upper-right corner of the grid, rotating left, and moving forward to the upper-left corner of the grid.

<h3>Question 33</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A flowchart is a way to visually represent an algorithm. The flowchart below is used by an apartment rental Web site to set the variable include to true for apartments that meet certain criteria.

A table is shown with 2 columns and 4 rows. The first row of the table contains the column headers, from left to right, Block and Explanation. The table is as follows: Oval, The start or end of the algorithm. Diamond, A conditional or decision step, where execution proceeds to the side labeled true if the condition is true and to the side labeled false otherwise. Rectangle, 1 or more processing steps, such as a statement that assigns a value to a variable.

The figure shows a flow chart. An oval labeled Start points to a diamond labeled floor greater than 10. The diamond has an arrow labeled false pointing toward another diamond labeled bedrooms equals 3. The second diamond has an arrow labeled false pointing toward a rectangle labeled include left arrow false. Both diamonds have arrows labeled true pointing toward a rectangle labeled include left arrow true. Both rectangles point to an oval labeled End.

Which of the following statements is equivalent to the algorithm in the flowchart?

#### Answer 33
**Answer: A**
This option is incorrect. This expression would be used for a flowchart to set include to true whenever floor is greater than 1 0 and bedrooms equal 3. This does not correctly set include to true in cases where only one of the two conditions is   true.

<h3>Question 34</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A flowchart is a way to visually represent an algorithm. The flowchart below is used by an apartment rental Web site to set the variable include to true for apartments that meet certain criteria.

A table is shown with 2 columns and 4 rows. The first row of the table contains the column headers, from left to right, Block and Explanation. The table is as follows: Oval, The start or end of the algorithm. Diamond, A conditional or decision step, where execution proceeds to the side labeled true if the condition is true and to the side labeled false otherwise. Rectangle, 1 or more processing steps, such as a statement that assigns a value to a variable.

The figure shows a flow chart. An oval labeled Start points to a diamond labeled floor greater than 10. The diamond has an arrow labeled false pointing toward another diamond labeled bedrooms equals 3. The second diamond has an arrow labeled false pointing toward a rectangle labeled include left arrow false. Both diamonds have arrows labeled true pointing toward a rectangle labeled include left arrow true. Both rectangles point to an oval labeled End.

Which of the following statements is equivalent to the algorithm in the flowchart?


#### Answer 34
**Answer: A**
This option is incorrect. This expression would be used for a flowchart to set include to true whenever floor is greater than 1 0 and bedrooms equal 3. This does not correctly set include to true in cases where only one of the two conditions is   true.

<h3>Question 37</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

The two code segments below are each intended to display the average of the numbers in the list One word, num List. Assume that One word, num List contains more than one value.

Program I: The block code consists of 5 lines. Line 1: sum, left arrow, zero Begin block Line 2: FOR EACH num IN num List, 1 word with capital L Begin block Line 3, indented 1 tab: sum, left arrow, sum plus num Line 4, indented 1 tab: a v g, 1 word, left arrow, sum divided by LENGTH, begin block, num List, end block End block End block Line 5: DISPLAY, begin block, a v g, end blockProgram II: The block code consists of 5 lines. Line 1: sum, left arrow, zero Begin block Line 2: FOR EACH num IN num List, 1 word with capital L Begin block Line 3, indented 1 tab: sum, left arrow, sum plus num End block End block Line 4: a v g, 1 word, left arrow, sum divided by LENGTH, begin block, num List, end block Line 5: DISPLAY, begin block, a v g, end block

Which of the following best describes the two code segments?

#### Answer 37
**Answer: C**
This option is correct. Both code segments display the correct average. Code segment I requires more arithmetic operations because it performs the operation sum divided by LENGTH, open parenthesis, num List, close parenthesis within the loop, while code segment II performs the same operation only once.

<h3>Question 39</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

Which of the following explains a benefit of using open standards and protocols for Internet communication?

#### Answer 39
**Answer: A**
This option is correct. Open standards and protocols are used to prescribe the format of data sent over the Internet. This allows all connected hardware and software to communicate in a standard way.


<h3>Question 42</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

Internet protocol version 4 (IPv4) represents each IP address as a 32-bit binary number. Internet protocol version 6 (IPv6) represents each IP address as a 128-bit binary number. Which of the following best describes the result of using 128-bit addresses instead of 32-bit addresses?

#### Answer 42
**Answer: D**

This option is correct. With 32-bit addressing, IPv4 has 2 raised to the thirty second power possible addresses. With 128-bit addressing, IPv6 has 2 raised to the one hundred twenty eighth power possible addresses. Since 2 raised to the thirty second power times 2 raised to the ninety sixth power equals 2 raised to the one hundred twenty eighth power, IPv6 has 2 raised to the ninety sixth power times as many possible addresses as IPv4.

<h3>Question 43</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

An online retailer uses an algorithm to sort a list of n items by price. The table below shows the approximate number of steps the algorithm takes to sort lists of different sizes.

A table is shown with 2 columns and 7 rows. The first row of the table contains the column headers, from left to right, Number of Items, Number of Steps. The table is as follows: 10, 100 20, 400 thirty, 900 forty, 1,600 fifty, 2,500 sixty, 3,600

Based on the values in the table, which of the following best characterizes the algorithm for very large values of n ?

#### Answer 43
**Answer: A**
This option is correct. The pattern in the table appears to indicate that there are n squared steps for a list containing n items. This number of steps is a polynomial and therefore the algorithm runs in reasonable time. 


<h3>Question 44</h3>
A computer program uses 4 bits to represent nonnegative integers. Which of the following statements describe a possible result when the program uses this number representation?

I. The operation 4 plus 8 will result in an overflow error.

II. The operation 7 plus 10 will result in an overflow error.

III. The operation 12 plus 3 will result in an overflow error. 

#### Answer 44
**Answer: B**

Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A computer program uses 4 bits to represent nonnegative integers. Which of the following statements describe a possible result when the program uses this number representation?

I. The operation 4 plus 8 will result in an overflow error.

II. The operation 7 plus 10 will result in an overflow error.

III. The operation 12 plus 3 will result in an overflow error.

<h3>Question 45</h3>
A NAND gate is a type of logic gate that produces an output of false only when both of its two inputs are true. Otherwise, the gate produces an output of true. Which of the following Boolean expressions correctly models a NAND gate with inputs P and Q ?


#### Answer 45
**Answer: C**

The correct answer for this question would be C and not B as the expression (Not p) and Q evaluated to false when P is false and Q is true. A NAND gate should only evaluate to false when both the inputs are true and thus is option C where P and q are defined into a single parenthses, the function NOT (P and Q) would be the correct answer for this question which correctly modfels a NAND gat with teh inputs of P and Q .

<h3>Question 54</h3>
A programmer notices the following two procedures in a library. The procedures do similar, but not identical, things.

Procedure Square, open parenthesis, n, close parenthesis returns the value N squared.
Procedure Cube, open parenthesis, n, close parenthesis returns the value N raised to the third power.
Which of the following procedures is a generalization of the procedures described above?

#### Answer 54
**Answer: B**

I had originally put the answer to this question to be B as i thought the procedure Fourth (n), whicih returns the value of n^4 would be the corrrect answer but that is not the case as my answer is incorrect. The fourth procedure calculated a power of n similar to square and cude procudre but it does not generalize this functionality to calculate any power of n. And thus for this question above the correct answer would be D instead of B ad proceudre power (n, m), which returns the value of n^m produces a generalization of the proceudre describe in the question above.

<h3>Question 55</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A student wrote the procedure below, which is intended to ask whether a user wants to keep playing a game. The procedure does not work as intended.

The program consists of 13 lines. Begin program Line 1: PROCEDURE, one word Keep Playing, open parenthesis, close parenthesis Line 2: open brace Line 3: DISPLAY, open parenthesis, open quotation, Do you want to continue playing, open parenthesis, y slash n, close parenthesis, question mark, end quotation, close parenthesis Line 4: response, left arrow, INPUT, open parenthesis, close parenthesis Line 5: IF, open parenthesis, open parenthesis, response equals, open quotation, y, close quotation, close parenthesis, AND, open parenthesis, response equals, open quotation, yes, close quotation, close parenthesis, close parenthesis Line 6: open brace Line 7: RETURN, open parenthesis, true, close parenthesis Line 8: close brace Line 9: ELSE Line 10: open brace Line 11: RETURN, open parenthesis, false, close parenthesis Line 12: close brace Line 13:close brace End program.

Which of the following best describes the result of running the procedure?

#### Answer 55
**Answer: B**


This option is correct. The expression open parenthesis, open parenthesis, response equals, open quotation, y, close quotation, close parenthesis, AND, open parenthesis, response equals, open quotation, yes, close quotation, close parenthesis, close parenthesisalways evaluates to false because it is not possible for the variable response to be equal to both Open quotation, y, close quotation and Open quotation, yes, close quotation. Therefore, the procedure will always
return false.

<h3> Question 57</h3>
Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A program contains the following procedures for string manipulation.

A table is shown with 2 columns and 3 rows. The first row of the table contains the column headers, from left to right, Procedure Call and Explanation. The table is as follows: Concat, open parenthesis, s t r 1 comma s t r 2, close parenthesis, Returns a single string consisting of s t r 1 followed by s t r 2. For example, Concat, open parenthesis, quotation mark, key, quotation mark, comma, quotation mark, board, quotation mark, close parenthesis, returns, quotation mark, keyboard, quotation mark. Substring, open parenthesis, s t r, comma, start, comma, length, close parenthesis, Returns a substring of consecutive characters from s t r, starting with the character at position start and containing length characters. The first character of s t r is located at position 1. For example, Substring, open parenthesis, quotation mark, delivery, quotation mark, comma, 3, comma, 4, close parenthesis returns quotation mark, live, quotation mark.

Which of the following expressions can be used to generate the string Open quotation, Happy, close quotation?

#### Answer 57
**Answer: D**

This option is correct. This expression concatenates the first two letters of Open quotation, Harp, close quotation with the last three letters of Open quotation, puppy, close quotation, resulting
in Open quotation, Happy, close quotation.

<h3>Question 63</h3>
The program below is intended to count the number of prime numbers in a list called numbers and display the result. The program uses the procedure One word, is Prime, open parenthesis, n, close parenthesis, which returns true if n is a prime number and false otherwise.

The program does not work as intended.

The program consists of 11 lines. Begin program Line 1: count, left arrow, 0 Line 2: FOR EACH value IN numbers Line 3: open brace Line 4: count, left arrow, 0 Line 5: IF, open parenthesis, one word is Prime, open parenthesis, value, close parenthesis, close parenthesis Line 6: open brace Line 7: count, left arrow, count plus 1 Line 8: close brace Line 9: count, left arrow, count plus 1 Line 10: close brace Line 11: DISPLAY, open parenthesis, count, close parenthesis End program.

Which two lines of code should be removed so that the program will work as intended?


#### Answer 63
**Answer: B & C**

The correct answer to the question above would be B and C instead of A and D as line 1 would be incorrect as the variable count should be set to 0 before the loop so that it starts counting at 1 and line 7, the variable count should be incremented within the if stament so that it only increases whenever the value is prime. And thus option B and D, lines 4 and 9 would be the correct answer as in line 4the count is set to 0 and in line 9 the count in set to be the count plus 1 which when removed makes the procedure function correctly and the isPrime fucntion returns true if n is a prime number and false if otherwise.


<h3>Question 65</h3>
A program is created to perform arithmetic operations on positive and negative integers. The program contains the following incorrect procedure, which is intended to return the product of the integers x and y.

The program consists of 11 lines. Begin program Line 1: PROCEDURE Multiply, open parenthesis, x comma y, close parenthesis Line 2: open brace Line 3: count, left arrow, 0 Line 4: result, left arrow, 0 Line 5: REPEAT UNTIL, open parenthesis, count equals y, close parenthesis Line 6: open brace Line 7: result, left arrow, result plus x Line 8: count, left arrow, count plus 1 Line 9: close brace Line 10: RETURN, open parenthesis, result, close parenthesis Line 11: close brace End program.

A programmer suspects that an error in the program is caused by this procedure. Under which of the following conditions will the procedure NOT return the correct product?

#### Answer 65
**Answer: B and D**
For this question I got 1/2 of it correct with getting D as part of the answer. A would be incorrect as the when the values of X and Y are both positive then the proceudre will correctly calcualte the product by adding X to itself Y times but when Y is negetive then the codition count = y will never be met since teh count begin at 0 and repeatedly increases and thus under the contions of B and D the proceudre will never return the correct product.

<h3>Question 66</h3>
The procedure Smallest is intended to return the least value in the list numbers. The procedure does not work as intended.

The program consists of 12 lines. Begin program Line 1: PROCEDURE Smallest, open parenthesis, numbers, close parenthesis Line 2: open brace Line 3: min, left arrow, numbers, open bracket, 1, close bracket Line 4: FOR EACH number IN numbers Line 5: open brace Line 6: IF, open parenthesis, number is less than min, close parenthesis Line 7: open brace Line 8: RETURN, open parenthesis, number, close parenthesis Line 9: close brace Line 10:close brace Line 11: RETURN, open parenthesis, min, close parenthesis Line 12: close brace End program.

For which of the following values of One word, the List will Smallest, open parenthesis, one word, the List, close parenthesis NOT return the intended value?

#### Answer 66
**Answer: C & D**

I had originally choosen the pair of anwer to be B and C as I thought those values of theList will not return the intended value but that was not the case as the correct pair was C and D. For the list 20,10, 30 and 40; 10 would be the first value smalled than the first number in the list so that procedure returns the ocrrect value 10 and thus is teh oppsite of the intended value. But option c which returns the output as 20 and option D which outputs the the resultant value as 30 would both not return the intended value and thus fufills what the question originally asked for. WHich of the following reuslts in a FALSE asnwer...
