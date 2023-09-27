---
title: Table
comments: true
hide: true
layout: default
description: Demo API
categories: [C7.0]
courses: { csp: {week: 3}}
type: tangibles
---
<!DOCTYPE html>
<html>
<head>
   <!-- Load jQuery and DataTables styles and scripts -->
   <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
   <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
</head>
<body>
<table id="weatherTable" class="table" style="width:100%">
   <thead>
       <tr>
           <th>Date</th>
           <th>Temperature</th>
           <th>Weather</th>
       </tr>
   </thead>
   <tbody id="weatherBody"></tbody>
</table>
<script>
 $(document).ready(function()) {
   const apiKey = "c0a73cc90fmshdc3d44c5a5834b9p18a538jsn06680b483b06";
   const apiUrl = "https://open-weather13.p.rapidapi.com/city/San%20Diego";

   fetch(apiUrl, {
     method: 'GET',
     headers: {
       'X-RapidAPI-Host': 'open-weather13.p.rapidapi.com',
       'X-RapidAPI-Key': apiKey
     }
   })
   .then(response => {
     if (!response.ok) {
       throw new Error('API response failed');
     }
     return response.json();
   })
   .then(data => {
     for (const weatherInfo of data) {
       // Populate the table with weather data
       $('#weatherBody').append('<tr><td>' +
           weatherInfo.date + '</td><td>' +
           weatherInfo.temperature + ' °C</td><td>' +
           weatherInfo.weather + '</td></tr>');
     }
     // Initialize DataTables for the table
     $("#weatherTable").DataTable();
   })
   .catch(error => {
     console.error('Error:', error);
   });
 };
 
</script>
</body>
</html>
