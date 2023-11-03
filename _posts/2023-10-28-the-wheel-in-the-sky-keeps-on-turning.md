---
title: Scrolling Backdrop
toc: True
description: A scrolling tester backdrop for passion project (UNUSED)
courses: {'csp': {'week': 5}}
type: hacks
---


{% assign alienPlanetFile = site.baseurl | append: page.image %}
{% assign city = site.baseurl | append: page.image %}

<!-- Prepare city DOM canvas -->
<canvas id="city"></canvas>

<script>
// add canvas and add City
const canvas = document.getElementById("city");
const ctx = canvas.getContext('2d');

// find the height of the window
@@ -24,18 +24,18 @@ const maxHeight = window.innerHeight;

// Prepare Image
const backgroundImg = new Image();
backgroundImg.src = '{{city}}';

backgroundImg.onload = function () {
    const WIDTH = backgroundImg.width;
    const HEIGHT = backgroundImg.height;
    const ASPECT_RATIO = WIDTH / HEIGHT;

    // create the width of the image
    const canvasWidth = maxWidth;
    const canvasWidth = maxWidth*3;
    const canvasHeight = canvasWidth / ASPECT_RATIO;
    const canvasLeft = 0; // left-right
    const canvasTop = (maxHeight - canvasHeight) / 2;
    const canvasTop = (maxHeight - canvasHeight) ;
    canvas.width = WIDTH;
}