---
title: Login/Signup
courses: {'compsci': {'week': 6}}
type: tangibles
layout: base
---

# Building a Secure Login/Signup System

## 1. Introduction (Vibha)

- Brief overview of the importance of secure authentication.
- Mention of the frontend and backend components.



## 2. Connecting Front End + Backend Components (Anusha)
### Quick Demo of Login/Register/CRUD Demonstration 

[Login/Register/CRUD Demonstration](https://drive.google.com/file/d/1IDUZM-ztixoc51dGLEeTeEQB3StiVIT1/view?usp=sharing)

### Input Validation
- Prevents faulty data or empty data from being added to database
- Data from the database may be passed through other code segments
  - Faulty/Empty Data can cause future errors in code
- Client-side Validation
  - Frontend Code below uses
    - required fields (to prevent empty data)
    - password confirmation
- Server-side Validation
  - Backend Code below checks if name and uid is greater than two characters and actually exists (otherwise len function would not work)
    - If standards not met 400 error given (aka Bad Request)

### Anatomy of JWT w/ CRUD Operations
<img src="https://raw.githubusercontent.com/jplip/frontTri2/main/images/diagram.drawio.png">


```python
id = db.Column(db.Integer, primary_key=True)
note = db.Column(db.Text, unique=False, nullable=False)
image = db.Column(db.String, unique=False)
# Define a relationship in Notes Schema to userID who originates the note, many-to-one (many notes to one user)
userID = db.Column(db.Integer, db.ForeignKey('users.id'))
```


```python
id = db.Column(db.Integer, primary_key=True)
_name = db.Column(db.String(255), unique=False, nullable=False)
_uid = db.Column(db.String(255), unique=True, nullable=False)
_password = db.Column(db.String(255), unique=False, nullable=False)
_dob = db.Column(db.Date)
```
<form action="javascript:login_user()">
    <p><label>
        User ID:
        <input type="text" name="uid" id="uid" required>
    </label></p>
    <p><label>
        Password:
        <input type="password" name="password" id="password" required>
    </label></p>
    <p>
        <button>Login</button>
    </p>
</form>
## 3. Justin (CRUD)


To create and register a user, you can using the existing code in user.py in the api folder and update it, like this: We used Teacher's code as a reference here:

We first had a class for creating a user/fetching data from all the users. This would just be our normal  localhost link. Since we are using users.py in the api folder, our link is just /users here. 


```python
class _CRUD(Resource):  # User API operation for Create, Read.  THe Update, Delete methods need to be implemented
        def post(self): # Create method
            ''' Read data for json body '''
            body = request.get_json()
            
            ''' Avoid garbage in, error checking '''
            # validate name
            name = body.get('name')
            if name is None or len(name) < 2:
                return {'message': f'Name is missing, or is less than 2 characters'}, 400
            # validate uid
            uid = body.get('uid')
            if uid is None or len(uid) < 2:
                return {'message': f'User ID is missing, or is less than 2 characters'}, 400
            # look for password and dob
            password = body.get('password')
            dob = body.get('dob')
            coins = 0
            
            
            tracking = body.get('tracking') #validate tracking
            #
            exercise = body.get('exercise') #validate exercise

            ''' #1: Key code block, setup USER OBJECT '''
            uo = User(name=name, #user name
                      uid=uid, tracking=tracking, exercise=exercise, dob=dob, coins=coins)
            
            ''' Additional garbage error checking '''
            # set password if provided
            if password is not None:
                uo.set_password(password)
            # convert to date type
            # if dob is not None:
            #     try:
            #         uo.dob = datetime.strptime(dob, '%Y-%m-%d').date()
            #     except:
            #         return {'message': f'Date of birth format error {dob}, must be mm-dd-yyyy'}, 400
            if tracking is not None:
                uo.tracking = tracking
            
            if exercise is not None:
                uo.exercise = exercise
                
            ''' #2: Key Code block to add user to database '''
            # create user in database
            user = uo.create()
            # success returns json of user
            if user:
                #return jsonify(user.read())
                return user.read()
            # failure returns error
            return {'message': f'Processed {name}, either a format error or User ID {uid} is duplicate'}, 400

        @token_required
        def get(self, current_user): # Read Method
            users = User.query.all()    # read/extract all users from database
            json_ready = [user.read() for user in users]  # prepare output in json
            return jsonify(json_ready)  # jsonify creates Flask response object, more specific to APIs than json.dumps
        
        def put(self, user_id):
            '''Update a user'''
            user = User.query.get(user_id)
            if not user:
                return {'message': 'User not found'}, 404
            body = request.get_json()
            user.name = body.get('name', user.name)
            user.uid = body.get('uid', user.uid)
            db.session.commit()
            return user.read(), 200

        def delete(self, user_id):
            '''Delete a user'''
            user = User.query.get(user_id)
            if not user:
                return {'message': 'User not found'}, 404
            db.session.delete(user)
            db.session.commit()
            return {'message': 'User deleted'}, 200
```

To update and delete a user, you need their specific information (id). So, we have a seperate class with a seperate link. To update information and fetch old information, we have another get  method here as well just to get data from a specific user rather than all users. 


```python
<style>
	.modal-backdrop {
		display: none;
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.7);
		z-index: 1;
	}

	.modal-content {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		background: #272726;
		padding: 40px;
		z-index: 2;
		color: #ffffff
	}

	.close-modal {
		position: absolute;
		top: 10px;
		right: 10px;
		cursor: pointer;
		background: none;
		border: none;
		font-size: 24px;
		color: white;
	}

	.wrapper,
	section {
		max-width: 900px;
	}
</style>

<hr style="margin-top: 10px" />

<h2>Current Records</h2>
<table id="userTable">
	<tr>
		<th>Name</th>
		<th>Username</th>
		<th>Password</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
</table>

<div id="editModalBackdrop" class="modal-backdrop">
	<div id="editModal" onsubmit="submitEdit(event)" class="modal-content">
		<button id="closeModal" class="close-modal">X</button>
		<form id="editForm">
			<input type="hidden" id="editId" name="editId" />

			<label for="editFullName">Name:</label>
			<input type="text" id="editFullName" name="editFullName" /><br /><br />

			<label for="editGithubUsername">Username:</label>
			<input type="text" id="editGithubUsername" name="editGithubUsername" /><br /><br />

			<input type="submit" value="Update" />
		</form>
	</div>
</div>

<script>
	const apiUrl = "http://127.0.0.1:8240/api/users/";
	// const apiUrl = "http://127.0.0.1:8240/api/users/";
    // const apiUrl = "https://devops.nighthawkcodingsociety.com/api/users/";
	let users = [];

	function fetchUsers() {
		fetch(apiUrl)
			.then((response) => response.json())
			.then((response) => {
				users = response;

				const table = document.getElementById("userTable");
				users.forEach((user, idx) => {
					const row = table.insertRow();

					row.setAttribute("data-id", user.id);
					["name", "uid", "password"].forEach(
						(field) => {
							const cell = row.insertCell();
							if (user[field] === "none") {
								users[idx][field] = "";
							}
							cell.innerText = users[idx][field];
						}
					);

					const editCell = row.insertCell();
					const editButton = document.createElement("button");
					editButton.innerHTML = "Edit";
					editButton.addEventListener("click", editUser);
					editCell.appendChild(editButton);

					const deleteCell = row.insertCell();
					const deleteButton = document.createElement("button");
					deleteButton.innerText = "Delete";
					deleteButton.addEventListener("click", () => deleteUser(user.id, row));
					deleteCell.appendChild(deleteButton);
				});
			});
	}

	function submitForm(event) {
		event.preventDefault();
		const formData = new FormData(event.target);
		const name = formData.get("fullName");
		const uid = formData.get("githubUsername");
		const password = formData.get("password");

		const payload = {
			name,
			uid,
			password,
		};

		fetch(apiUrl, {
			method: "POST",
			headers: {
				"Content-Type": "application/json",
			},
			body: JSON.stringify(payload),
		})
			.then((response) => {
				if (response.ok) {
					return response.json();
				} else {
					alert("server error");
					throw new Error("server");
				}
			})
			.then((data) => {
				const table = document.getElementById("userTable");
				const row = table.insertRow();
				row.setAttribute("data-id", data.id);
				[
					data.name,
					data.uid,
					data.password,
				].forEach((value) => {
					const cell = row.insertCell();
					cell.innerText = value;
				});

				const editCell = row.insertCell();
				const editButton = document.createElement("button");
				editButton.innerHTML = "Edit";
				editButton.addEventListener("click", editUser);
				editCell.appendChild(editButton);

				const deleteCell = row.insertCell();
				const deleteButton = document.createElement("button");
				deleteButton.innerText = "Delete";
				deleteButton.addEventListener("click", () => deleteUser(user.id, row));
				deleteCell.appendChild(deleteButton);

				users.push(data);
				alert("Created sucessfully!");
			})
			.catch((error) => console.error("Error:", error));
	}

	function editUser(event) {
		const id = event.currentTarget.parentElement.parentElement.getAttribute("data-id");
		document.getElementById("editId").value = id;

		const form = document.getElementById("editForm");
		const user = users.find((u) => u.id == id);

		form.querySelector("#editGithubUsername").value = user.uid;
		form.querySelector("#editFullName").value = user.name;

		document.getElementById("editModalBackdrop").style.display = "block";
	}

	// Fetch users and ensure close modal interaction
	document.addEventListener("DOMContentLoaded", function () {
		fetchUsers();
		document.getElementById("closeModal").addEventListener("click", function () {
			document.getElementById("editModalBackdrop").style.display = "none";
		});
	});

	function submitEdit(event) {
		event.preventDefault();
		const formData = new FormData(event.target);
		const id = formData.get("editId");
		const name = formData.get("editFullName");
		const uid = formData.get("editGithubUsername");

		const payload = {
			id,
			name,
			uid,
		};

		fetch(`${apiUrl}${id}`, {
			method: "PUT",
			headers: {
				"Content-Type": "application/json",
			},
			body: JSON.stringify(payload),
		}).then((response) => {
			if (response.ok) {
				// Update the corresponding row in the table
				const row = document.querySelector(`tr[data-id='${id}']`);
				row.cells[0].innerText = name;
				row.cells[1].innerText = uid;

				// Show an alert indicating success
				alert("User information updated successfully.");
			}
		});

		document.getElementById("editModalBackdrop").style.display = "none";
	}

	function deleteUser(id, row) {
		const confirmation = prompt('Type "DELETE" to confirm.');
		if (confirmation === "DELETE") {
			fetch(`${apiUrl}${id}`, {
				method: "DELETE",
			})
				.then(() => {
					row.remove();
					alert("User deleted successfully");
				})
				.catch((error) => {
					console.error("Error:", error);
				});
		}
	}
</script>
```



## 4. Login Process/Signup   Isabel 
 The login was a bit tricky to implement, because I had to modify things from the old  flask-portfolio I was already working on. As our teacher has mentioned already, we can either fork the new cpt repository to start our Login or we can make changes to an existing repository. Since I started thinking about CRUD ahead, I decided to use the repositroy I already had and made some changes. Here is the link to the teachers changes if you started out like me and like the old format better: [Flask Portfolio With JWT](https://github.com/nighthawkcoders/flask_portfolio/issues/42)













```python
  class _Security(Resource):
        def post(self):
            try:
                body = request.get_json()

                if not body:
                    return jsonify({
                        "message": "Please provide user details",
                        "data": None,
                        "error": "Bad request"
                    }), 400

                uid = body.get('uid')
                password = body.get('password')

                if uid is None or password is None:
                    return jsonify({'message': 'User ID or password is missing'}), 400

                user = User.query.filter_by(_uid=uid).first()

                if not user or not user.is_password(password):
                    return jsonify({'message': "Invalid user ID or password"}), 400

                token = self.generate_token(user)

                # Additional response data
                
                print("User Object:", user)
                response_data = {
                    "message": f"Authentication for {user._uid} successful",
                    "data": {    # I needed to send this data to the frontend so that I can implement crud. 
                        "jwt": token,
                        "user": {
                    'name': user.name,
                    'id': user.id
                }
                    }
                }

                resp = jsonify(response_data)
                resp.set_cookie("jwt", token,
                                max_age=3600,
                                secure=True,
                                httponly=True,
                                path='/'
                                )

                return resp

            except Exception as e:
                return jsonify({
                    "message": "Something went wrong!",
                    "error": str(e),
                    "data": None
                }), 500

        def generate_token(self, user): # Notice how I put the generate token within the security function. Teacher did not do that. He called the function with a decorator and created a middle ware py file. I didn't do that and I put in directly instead
            try:
                token = jwt.encode(
                    {"_uid": user._uid},
                    current_app.config["SECRET_KEY"],
                    algorithm="HS256"
                )
                return token
            except Exception as e:
                return jsonify({
                    "error": "Something went wrong during token generation",
                    "message": str(e)
                }), 500
```

Here is the video for reference using postman!

[Video Postman Login Test](https://drive.google.com/file/d/1bAOPHmcpLVvYFozjeo67STCrNDYPmNRn/view)

### 6. Best Practices and Additional Features Vibja

- Brief discussion on additional security features (e.g., email verification, two-factor authentication).
- Emphasis on following best practices for security and privacy.
<!--
Suggestions
Use HTTPS (SSL/TLS):
Ensure that all communication between clients and the server is encrypted using HTTPS. This helps prevent man-in-the-middle attacks and protects sensitive information during transmission.

Token-Based Authentication:
Implement token-based authentication, such as JSON Web Tokens (JWT) or OAuth, to securely manage user sessions. Tokens should be generated securely, have a limited lifespan, and be securely stored on the client side.

Secure Password Storage:
Hash and salt passwords before storing them in the database. Use strong hashing algorithms (e.g., bcrypt) to protect user passwords from being exposed in the event of a data breach.

Authentication Rate Limiting:
Implement rate limiting to prevent brute-force attacks on login endpoints. This can involve limiting the number of login attempts within a specified time period to mitigate the risk of unauthorized access.

Secure User Registration:
Implement validation and sanitization checks on user registration inputs to prevent injection attacks. Verify the authenticity of email addresses and usernames during the registration process.

Multi-Factor Authentication (MFA):
Encourage or require users to enable MFA to add an additional layer of security. This can involve using one-time codes sent via SMS, email, or authenticator apps.

Session Management:
Implement secure session management practices. Ensure that session tokens are securely stored and transmitted, and consider implementing session timeout and re-authentication mechanisms.

Cross-Site Request Forgery (CSRF) Protection:
Implement measures to protect against CSRF attacks. Use anti-CSRF tokens and ensure that requests from legitimate users originate from trusted sources.

Input Validation and Sanitization:
Validate and sanitize all user inputs to prevent injection attacks, such as SQL injection or Cross-Site Scripting (XSS). Use parameterized queries for database interactions.

Logging and Monitoring:
Implement comprehensive logging for login/signup activities. Monitor and log failed login attempts, unusual patterns, and potential security events to detect and respond to security incidents.

API Key Security:
If applicable, secure API keys used for authentication and authorization. Ensure that keys are kept confidential, rotated regularly, and that access is restricted to only necessary entities.

Regular Security Audits and Updates:
Conduct regular security audits of your codebase and dependencies. Stay updated on security best practices and promptly apply patches and updates to address any vulnerabilities.
 -->
