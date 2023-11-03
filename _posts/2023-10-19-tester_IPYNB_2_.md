---
layout: post
title: Moving background tester
description: A test for adding a moving background to the homepage
categories: ['C5.0', 'C7.0', 'C7.6']
image: /images/city.jpg
type: tangibles
courses: {'csp': {'week': 1}}
---

```python
{% assign city = site.baseurl | append: page.image %}

<!-- Prepare city DOM canvas -->
<canvas id="city"></canvas>

<script>
// Prepare Canvas
const canvas = document.getElementById("city");
const ctx = canvas.getContext('2d');

// Prepare Window extents
const maxWidth = window.innerWidth;
const maxHeight = window.innerHeight;

// Prepare Image
const backgroundImg = new Image();
backgroundImg.src = '{{city}}';

backgroundImg.onload = function () {
    const WIDTH = backgroundImg.width;
    const HEIGHT = backgroundImg.height;
    const ASPECT_RATIO = WIDTH / HEIGHT;

    // Set Dimensions to match the image width
    const canvasWidth = maxWidth*3;
    const canvasHeight = canvasWidth / ASPECT_RATIO;
    const canvasLeft = 0; // Start from the left edge
    const canvasTop = (maxHeight - canvasHeight) ;

    // Set Style properties
    canvas.width = WIDTH;
    canvas.height = HEIGHT;
    canvas.style.width = `${canvasWidth}px`;
    canvas.style.height = `${canvasHeight}px`;

    canvas.style.position = 'absolute';
    canvas.style.left = `${canvasLeft}px`;
    canvas.style.top = `${canvasTop}px`;
  
    var gameSpeed = 2;
    class Layer {
            constructor(image, speedRatio) {
            this.x = 0;
            this.y = 0;
            this.width = WIDTH;
            this.height = HEIGHT;
            this.image = image
            this.speedRatio = speedRatio
            this.speed = gameSpeed * this.speedRatio;
            this.frame = 0;
        }
        update() {
            this.x = (this.x - this.speed) % this.width;
        }
        draw() {
            ctx.drawImage(this.image, this.x, this.y);
            ctx.drawImage(this.image, this.x + this.width, this.y);
        }
    }

    var backgroundObj = new Layer(backgroundImg, 0.5)

    function background() {
        backgroundObj.update();
        backgroundObj.draw();
        requestAnimationFrame(background);
    }
    background();
};

</script>
```
