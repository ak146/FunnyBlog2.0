---
toc: True
comments: True
layout: post
title: Passion Project Front End Blog
description: What we learned this week, and all the amazing things we have accomplished
courses: {'csp': {'week': 10}}
type: tangibles
---

## FRONT END ISSUES
- By Andrew

- Goal of the Front End

<img src="https://media.discordapp.net/attachments/1161093395834490960/1170977522196955136/Screenshot_2023-11-05_at_10.43.25_PM.png?ex=655b00cd&is=65488bcd&hm=475c3de960c8f8bdeb70f5751f8f6795071156a3eb42e7b90fe2f2cd07849c72&=&width=1706&height=990">

- our goal is to get a homepage up. It should have a start button that leads into a game. This game will be a geoguessr for Del Norte. It should be as interactive as possible. In the game, it will loop images pulled from the backend. It will also take coordinates and allow a person to click on the correct location to score. We also want to add a timer to add more urgency. When the timer is up, the game ends.

- I went through many different iterations of ideas for the homepage. Originally I wanted to use Vanta and/or the scrolling background that was presented in the Alien Words project. Eventually we settled on the final design. 

- We went through many ideas to make the game engaging. Originally, Ryan wanted to add a "Gacha" system. This didn't fit into our overall idea. We decided to use a JS timer instead. It fit the original Geogeussr them and allowed the game to become more gamelike.



```python
// Timer Code

function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10)//calculates the minutes left
        seconds = parseInt(timer % 60, 10);// calculates second left

        minutes = minutes < 10 ? "0" + minutes : minutes; 
        seconds = seconds < 10 ? "0" + seconds : seconds; 
        display.textContent = minutes + ":" + seconds; //displays the time left

        if (--timer < 0) {
            timer = 0;
        }
        if(timer==0){
            alert("GAME OVER Your Final Score:"+score) //alerts when the game is over
            window.location.href = 'https://rliao569.github.io/Frontend-CSP/';
        }
    }, 1000);
}

window.onload = function () { //calls the method when the window is opened
    var time = 120 / 2, // time in seconds
        display = document.querySelector('#gameTimerDisplay');
    startTimer(time, display); //display
    
};
```


```python
<!DOCTYPE html>
<html>
<head>
<title>Del Norte Geoguessr</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<style>
body, html {height: 100%}
body,h1,h2,h3,h4,h5,h6 {font-family: "Amatic SC", sans-serif}
.menu {display: none}
.bgimg {
  background-repeat: no-repeat;
  background-size: cover;
  background-image: url("https://knastructural.com/wp-content/uploads/2017/01/Del-Norte-HS-Poway-K12-Structural-San-Diego.jpg");
  min-height: 100%;
}
</style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
  <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <a href="#" class="w3-bar-item w3-button">HOME</a>
    <a href="#rules" class="w3-bar-item w3-button">RULES</a>
    <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
    <a href="#devlog" class="w3-bar-item w3-button">DEVLOG</a>
  </div>
</div>
  

<!-- Header with image -->
<header class="bgimg w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-bottomleft w3-padding">
    <span class="w3-tag w3-xlarge">Made by Saaras, Will, Andrew, Ryan, Daniel</span>
  </div>
  <div class="w3-display-middle w3-center">
    <span class="w3-text-white w3-hide-small" style="font-size:100px">Del Norte Geoguessr</span>
    
    <p><a href="mapgame.html" class="w3-button w3-xxlarge w3-black">start</a></p>
  </div>
</header>

<!-- Rules Container -->
<div class="w3-container w3-padding-64 w3-blue w3-grayscale w3-xlarge" id="rules">
  <div class="w3-content">
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">Rules</h1>
    <p>Once the game loads, there will be an image of a random place on Del Norte. 
      Your job is to click on the map where you think the location is. If you get the answer wrong, then a new picture will automatically appear for you to try a different location. 
      If you get the answer right, a pop up will state that you get one point. 
      Try to get as many right as you can! At the end of the game, a leaderboard will pop up which shows the scores of other players.
      There is also a 1 minute timer which will cause the game to end. Make sure to guess as fast as you can! Time is not on your side!
    <br> 
    <br> 
    <br> 
    <br>
    <br> 
    <br> 
    <br> 
    <br>
    </p>

<!-- About Container -->
<div class="w3-container w3-padding-64 w3-red w3-grayscale w3-xlarge" id="about">
    <div class="w3-content">
      <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">About</h1>
      <p>GeoGuessr is an engaging and addictive online geographic guessing game that challenges players to test their knowledge of the world and their deduction skills by dropping them in random locations across the globe using Google Street View imagery.
  Developed by Anton Wallén, GeoGuessr offers a unique and immersive experience for geography enthusiasts, explorers, and trivia buffs.
  The objective of GeoGuessr is simple: players find themselves in an unfamiliar place, and they must determine their location by exploring the surrounding environment through a series of static images taken from Google Street View. These images can range from bustling urban streets and scenic landscapes to remote, rural areas. Players can pan, zoom, and navigate within these images to gather clues about their whereabouts.
  To make an educated guess, players can rely on various factors such as architecture, road signs, vegetation, weather conditions, and even the direction of shadows. They can also use their knowledge of geography, languages, and cultures to narrow down the possibilities. Once they feel confident about their guess, they drop a pin on a world map to mark their chosen location..</p>
      <p><strong></strong> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpyDdWvvJZiSD9CfBo4fMhNRxAa1tDTP53RA&usqp=CAU" style="width:150px" class="w3-circle w3-right" alt="Chef"></p>
  
      
    </div>
  </div>

```
