---
layout: post
title: Collegeboard Review/Psuedo Code review
description: A review of collegeboard mcq
type: post
courses: {'csp': {'week': 1}}
---

# Summary


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

## Corrections:
18: Directions: The question or incomplete statement below is followed by four suggested answers or completions. Select the one that is best in each case.

A population researcher is interested in predicting the number of births that will occur in a particular community. She created a computer model that uses data from the past ten years, including number of residents and the number of babies born. The model predicted that there would be 200 births last year, but the actual number of births last year was only 120. Which of the following strategies is LEAST likely to provide a more accurate prediction?
- Answer C and not D (This option is incorrect. Gathering additional data may help the simulation provide a more accurate prediction.)





## [Pseudo Code](https://apcentral.collegeboard.org/media/pdf/ap-computer-science-principles-exam-reference-sheet.pdf)
- Example
<img src="https://media.discordapp.net/attachments/1143438030749847604/1165903186473783317/image.png?ex=65488af5&is=653615f5&hm=349a4cfef60546b6f85e59a2448ac85ed4fd0181d63f70456904909e46401d74&=">

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
