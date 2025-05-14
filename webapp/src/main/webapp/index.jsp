<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>EntryStack-App Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 500px;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px;
            margin: 6px 0 16px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .registerbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 5px;
        }

        .registerbtn:hover {
            background-color: #45a049;
        }

        .signin {
            text-align: center;
            margin-top: 20px;
        }

        h1 {
            text-align: center;
        }
    </style>
</head>
<body>

    <form action="action_page.php">
        <div class="container">
            <h1>Register for EntryStack-App</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>

            <label for="Name"><b>Enter Name</b></label>
            <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

            <label for="mobile"><b>Enter Mobile</b></label>
            <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>

            <label for="email"><b>Enter Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" id="email" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
            <button type="submit" class="registerbtn">Register</button>

            <div class="signin">
                <p>Already have an account? <a href="#">Sign in</a>.</p>
            </div>

        </div>
    </form>

</body>
</html>
