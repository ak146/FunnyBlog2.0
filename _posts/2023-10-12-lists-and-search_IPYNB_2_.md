---
layout: post
title: Linux Shell and Bash
description: A Tech Talk on Linux and the Bash shell.
toc: True
comments: True
categories: ['5.A', 'C4.1']
courses: {'csse': {'week': 8}, 'csp': {'week': 0, 'categories': ['6.B']}, 'csa': {'week': 9}}
type: hacks
---

# Made by: Ryan, Daniel, Saaras, Will, and Andrew

## Python lists Operations

### Append function
# From the Data Abstractions Unit we Learned bout lists and how they can store multiple variables 
# Today we're going to show you how to add items to lists utilizing the append option


```python

lst = []
lst.append("item1")
print(lst)
```

    ['item1']


### Insert function
- The insert function allows you to append items to different lists at a specific location.
- Let's first understand how it may work through pseudocode

#### Exmaple 1
INSERT alist, pos, value 
INSERT alist, 1, "hi" 
- Here the alist represents your list you want to append an item to
- The position is where on the list you may want to add your item 
- Finally, the value is the item actually is that your adding to your list
- So here in total in position 1 you insert the string "hi" into alist

### Your turn!!!!
- Turn this pseudocode into python
- How may we want to implement this on python? Think back to the data abstraction unit. 
- ( Hint: Think about the differences between psueodcode and python )


```python
# ANSWER: 
# Inserting items to a specific list, remember python is 0 based on the items!!
lst.insert(0, "item0")
print(lst)
```

    ['item1', 'item0']


### Remove function
- The remove functions allows you to remove specific items at a specific position on the list

#### Pseudocode example
- REMOVE aList, pos




```python
# Remove method 
lst.remove(0)
print(lst)

## You can also access the list by the position, this is called list indexing
print(lst[0])
```

### Let's do some Collegeboard exercises
- In the following list:
  - nums = [65, 89, 92, 35, 84, 78, 28, 75]
- Figure out what the minimum number in the list, WITHOUT using the other methods and premade functions.

### Second question:
- Let's say we have a list called "animals" from a survey that stores whether or not they prefer "cats" or "dogs" as strings in this list.
- Transverse this list and tell me the total amount cats and dogs in the list



```python
nums = [65, 89, 92, 35, 84, 78, 28, 75]

## Your code here
```


```python
animals = ["cats", "dogs"]
```

### ITS BINARY SEARCH TIME
- By the end of this you should be able to know what binary search is
- What the time complexity of binary search is
- How to derive the time complexity for binary search

### HOW DOES BINARY SEARCH WORK
- pay attention to the demonstration in the front
- volunteers will be called up
- candy if you participate

Binary search is like a guessing game where you halve your options at each step. Imagine you're finding a name in a phone book:

1. **First Step:** You open the book in the middle.
2. **Second Step:** Is the name before or after the middle? You eliminate half of the remaining names.
3. **Repeat:** Keep dividing until you find the name or run out of names to check.
4. **MAKE SURE YOUR LIST IS SORTED** Binary search will not work if the list isn't sorted

Because you're halving the options each time, it's super quick. If you have \(n\) names, it takes at most \( \log_2(n) \) steps to find a name. This efficiency, where the time it takes doesn't increase much as the number of names in the phone book grows, is what makes binary search awesome! Binary search is also more optimal for searcihng compared to a linear search for anything that doesnt include small lists..


### Demo Being shown above
The sorted list we have currently, has integers [1, 3, 4, 5, 13, 20], we are currently trying to find the index of the integer 1 within the list

How it works is we start at element 0 for our left position and element 5 for our rightwards position

Our middle position becaomes 5 because ((5+0)//2)=3 so element 3

Our element 3 within the list gives us the integer 5

We then realize that oh 5 is greater then 3 so we have to move leftwards

Then to make the algorithm more efficient we move the r backwards 1 beacuse we have already checked at this point

So now we can reduce the list to [1, 3, 4]

Now we can repeat the same steps as before and find the middle of this list which is 3

We realize thats not equivalent to the integer 1, and our value is still too great

So we move the middle leftwards 1 positioon

AND BAM THATS HOW YOU CAN DO BINARY SEARCH





```python
#example of binary search in python has a time complexity of O(n)
def binarySearch(arr, x):
    l= 0 #our minimum element
    r=len(arr) - 1 # our maximum element
    while l <= r:
        mid = l + (r - l) // 2 
        if arr[mid] == x:
            return mid
        elif arr[mid] < x:
            l = mid + 1
        else:
            r = mid - 1
    return -1


sorted_list = [2, 5, 8, 12, 16]
target = 3
result = binarySearch(sorted_list, 5)
print(result)

```

    (1, 3)



```python
#Linear Search Approach in O(n)
def linear_search(target, sorted_list):
    for o in range(len(sorted_list)):
        if sorted_list[o]==target:
            return(o)
#Does not have to be a sorted list for the sake of comparison I just made it sorted
sorted_list = [1, 3, 5, 7, 9, 11, 13, 15]
target = 3
result = linear_search(target, sorted_list)
print(result)

```

    1


How big O Notation works in the context works in the case of search methods.

Lets first explain for linear search, because linear search only requires a iterative approach all we use is O(n), this is due
to the loop infinitely going until it finds the element and then after that it doesnt do anything.

However binary search is special in this sense because you don't actually have to go through an entire loop how you can picture this is by imagining a list with 1000000 integer values in it and my target value is 59223, binary search makes it so that you just divide the list by 2 until you find the element. It's a lot faster then the iterative approach, where I keep going until I get to 59223 what this does is it allows me to speed up the time and memory usage I take. because I keep dividing the list by 2 allowing for me to form a logarithm because its just repetitive multiplication of 1/2 and then that makes it so that O(log(n)) becomes the time complexity for the Binary search algorithm.




HW TIME!!!!!!!!!!!!!!!!!!
We want you guys to make a guessing game below, where utilizing binary search you can within a list of 100 sorted elemments find, a value that your code will randomize using random.randint(). We want you to also make it so every iteration output the number is higher up or lower until you actually get to the answer. We also want number of tries it took to guess the number. Points will be awarded for customizations and potential changes.

Extra credit (for above 95%): Send a screenshot on me to slack showing you can do this: https://codeforces.com/contest/1201/problem/C


```python
#Code in here
```

HW Part 2: This time instead of utilizing binary search to do it I want you to use linear search to get to the same value and I want you to output the number of iterations it took to get there. Aswell as a congrats message upon getting there points will be awarded upon creativity and completion.


```python
#Code in here
```
