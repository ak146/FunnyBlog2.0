---
comments: True
layout: post
title: JS Table
description: Table
type: hacks
courses: {'csp': {'week': 3}}
---

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
    <table id="md_demo" class="table">
        <thead>
            <tr>
                <th>Class</th>
                <th>Order</th>
                <th>Family</th>
                <th>Genus</th>
                <th>Species</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Actinopetrygii</td>
                <td>Istiophoriformes</td>
                <td>Xiphiidae</td>
                <td>Xhipas</td>
                <td>X Gladius (Swordfish)</td>
            </tr>
            <tr>
                <td>Actinopetrygii</td>
                <td>Scombriformes</td>
                <td>Scombridae</td>
                <td>Thunns</td>
                <td>T. Thynnus (Blue Fin Tuna)</td>
            </tr>
            <tr>
                <td>Chonfricthyes</td>
                <td>Carchardhiniformes</td>
                <td>Characrhinidae</td>
                <td>Prionance</td>
                <td>P. gluaca(Blue Shark)</td>
            </tr>
            <tr>
                <td>Actinopterygii</td>
                <td>Istiophoroformes</td>
                <td>Istiophoridae</td>
                <td>Istiophorus</td>
                <td>Istiophorus Platyperus (Sail Fish)</td>
            </tr>
            <tr>
                <td>Chondrichthyes</td>
                <td>Lamniformes</td>
                <td>Lamnidae</td>
                <td>Isurus</td>
                <td>I. Oxyrinchus (Mako Shark)</td>
            </tr>
            <tr>
                <td>Chondrichthyes</td>
                <td>Carcharhiniformes</td>
                <td>Galeocerdonidae</td>
                <td>Galeocerdo</td>
                <td>G. Cuvier (Tiger Shark)</td>
            </tr>
            <tr>
                <td>Actinopterygii</td>
                <td>Pachycormiformes</td>
                <td>Pachyformidae</td>
                <td>Leedsichthyes</td>
                <td>Leedsicthyes Problematicus</td>
            </tr>
            <tr>
                <td>Chondricthyes</td>
                <td>Rhinopristiformes</td>
                <td>Pristidae</td>
                <td>Anoxypristis</td>
                <td>A. cuspidata</td>
            </tr>
            <tr>
                <td>Chondrichthyes</td>
                <td>Holocephali</td>
                <td>Chimaeroformes</td>
                <td>Chimarae</td>
                <td>Chimarae Argliroba</td>
            </tr>
            <tr>
                <td>Chondrichthyes</td>
                <td>Hexanchiformes</td>
                <td>Hexandchiformes</td>
                <td>Hexanchida</td>
                <td>H. Griseus</td>
            </tr>
            <tr>
                <td>Actinopterygii</td>
                <td>Aulopiformes</td>
                <td>Ipnopidae</td>
                <td>Bathypterosis</td>
                <td>B. Grallator</td>
            </tr>
        </tbody>
    </table>
</body>

<!-- Script is used to embed executable code -->
<script>
    $("#md_demo").DataTable();
</script>

