---
title: LabNotebook
comments: true
hide: true
layout: default
description: A common way to become familiar with a language is to build a calculator.  This calculator shows off button with actions.
permalink: /techtalk/home_style
categories: [C7.0]
courses: { csp: {week: 2}}
type: hacks
---




# Lab NoteBooks

8/20 I set up my computer

8/21 I downloaded the gemfiles and got homebrew to work

8/22 I got the localhost to open a github page

8/23 I customized my github page and added images and gifs

8/24 I added links to my github page and live review

8/25 Started learning python

8/28 Started learning how to use the jupyter notebook

Future Plans

8/29 Added a snake game

8/30 Added a calculator

8/31 formatted calculator and got quiz into page using replit

9/1 I aim to add wasd keys to the snake game to prevent it from moving up and down

9/4 I am to add the python tricks. I will start making an HTML table. 









<!-- Head contains information to Support the Document -->
<head>
    <!-- load jQuery and DataTables output style and scripts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>var define = null;</script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
</head>

<!-- Body contains the contents of the Document -->
<body>
    <table id="demo" class="table">
        <thead>
            <tr>
                <th>Make</th>
                <th>Model</th>
                <th>Year</th>
                <th>Color</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Ford</td>
                <td>Mustang</td>
                <td>2022</td>
                <td>Red</td>
                <td>$35,000</td>
            </tr>
            <tr>
                <td>Toyota</td>
                <td>Camry</td>
                <td>2022</td>
                <td>Silver</td>
                <td>$25,000</td>
            </tr>
            <tr>
                <td>Tesla</td>
                <td>Model S</td>
                <td>2022</td>
                <td>White</td>
                <td>$80,000</td>
            </tr>
            <tr>
                <td>Cadillac</td>
                <td>Broughan</td>
                <td>1969</td>
                <td>Black</td>
                <td>$10,000</td>
            </tr>
            <tr>
                <td>Ford</td>
                <td>F-350</td>
                <td>1997</td>
                <td>Green</td>
                <td>$15,000</td>
            </tr>
            <tr>
                <td>Ford</td>
                <td>Excursion</td>
                <td>2003</td>
                <td>Green</td>
                <td>$25,000</td>
            </tr>
            <tr>
                <td>Ford</td>
                <td>Ranger</td>
                <td>2012</td>
                <td>Red</td>
                <td>$8,000</td>
            </tr>
            <tr>
                <td>Kuboto</td>
                <td>L3301 Tractor</td>
                <td>2015</td>
                <td>Orange</td>
                <td>$12,000</td>
            </tr>
            <tr>
                <td>Ford</td>
                <td>Fusion Energi</td>
                <td>2015</td>
                <td>Guard</td>
                <td>$25,000</td>
            </tr>
            <tr>
                <td>Acura</td>
                <td>XL</td>
                <td>2006</td>
                <td>Grey</td>
                <td>$10,000</td>
            </tr>
            <tr>
                <td>Ford</td>
                <td>F150 Lightning</td>
                <td>2024</td>
                <td>Guard</td>
                <td>$70,000</td>
            </tr>
        </tbody>
    </table>
</body>

<!-- Script is used to embed executable code -->
<script>
    $("#demo").DataTable();
</script>