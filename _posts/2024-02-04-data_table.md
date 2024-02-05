---
toc: true
comments: true
layout: post
title: Table
description: hehehaw
type: plans
courses: { csse: {week: 0}, csp: {week: 0, categories: [4.A]}, csa: {week: 0} }
categories: [C1.4]
---
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>ID</th>
        </tr>
    </thead>
    <tbody id="result">
    </tbody>
</table>

<script type="module">
    const url = 'http://127.0.0.1:8086/api/users/';
    // prepare HTML result container for new output
    const resultContainer = document.getElementById("result");
    const options = {
        mode: 'cors', // no-cors, cors, same-origin
        credentials: 'include', // include, same-origin, omit
        headers: {
            'Content-Type': 'application/json'
        },
        method: 'GET', // Override the method property
        cache: 'no-cache', // Set the cache property
    };

    // fetch the API
    fetch(url, options)
        // response is a RESTful "promise" on any successful fetch
        .then(response => {
            // check for response errors and display
            if (response.status !== 200) {
                const errorMsg = 'Database response error: ' + response.status;
                window.location.href = "http://127.0.0.1:4200/FunnyBlog2.0/_posts/2024-02-04-403.md";
                console.log(errorMsg);
                const tr = document.createElement("tr");
                const td = document.createElement("td");
                td.innerHTML = errorMsg;
                tr.appendChild(td);
                resultContainer.appendChild(tr);
                return;
            }
            // valid response will contain JSON data
            response.json().then(data => {
                console.log(data);
                for (const row of data) {
                    // tr and td build out for each row
                    const tr = document.createElement("tr");
                    const name = document.createElement("td");
                    const id = document.createElement("td");
                    // data is specific to the API
                    name.innerHTML = row.name;
                    id.innerHTML = row.uid;
                    // this builds td's into tr
                    tr.appendChild(name);
                    tr.appendChild(id);
                    // append the row to table
                    resultContainer.appendChild(tr);
                }
            })
            // catch fetch errors (i.e., ACCESS to server blocked)
            .catch(err => {
                console.error(err);
                const tr = document.createElement("tr");
                const td = document.createElement("td");
                td.innerHTML = err + ": " + url;
                tr.appendChild(td);
                resultContainer.appendChild(tr);
            ;
            });
        });
</script>


<button onclick="deleteUser()">Delete My Account</button>


<script>
    function deleteUser() {
        // You can add your logic for deleting the user here
        console.log("in function");
        const url = 'http://127.0.0.1:8086/api/users/';
        const options = {
            mode: 'cors', // no-cors, cors, same-origin
            credentials: 'include', // include, same-origin, omit
            headers: {
                'Content-Type': 'application/json'
            },
            method: 'DELETE', // Override the method property
            cache: 'no-cache', // Set the cache property
        };
        fetch(url, options)
        // response is a RESTful "promise" on any successful fetch
        .then(response => {
            // check for response errors and display
            if (response.status !== 200) {
                const errorMsg = 'Database response error: ' + response.status;
                window.location.href = "http://127.0.0.1:4200/student/2024/01/31/403error.html";
                console.log(errorMsg);
                const tr = document.createElement("tr");
                const td = document.createElement("td");
                td.innerHTML = errorMsg;
                tr.appendChild(td);
                resultContainer.appendChild(tr);
                return;
            }
            // valid response will contain JSON data
            response.json().then(data => {
                console.log("worked");
                console.log(data);
                 window.location.href = "http://127.0.0.1:4200/student/2024/01/30/DataTable.html";
            })
            // catch fetch errors (i.e., ACCESS to server blocked)
            .catch(err => {
                console.error(err);
                const tr = document.createElement("tr");
                const td = document.createElement("td");
                td.innerHTML = err + ": " + url;
                tr.appendChild(td);
                resultContainer.appendChild(tr);
            ;
            });
        });

        
    }
        
</script>