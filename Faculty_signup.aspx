<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_signup.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty SignUp</title>
	
    <style>
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		body {
			background-color: #f5f5f5;
			font-family: Arial, sans-serif;
		}

		header {
			background-color: #C1DAD6;
			padding: 20px;
			color: #fff;
		}

		.logo {
    display: inline-block;
    vertical-align: middle;
    margin-right: 20px;
}

		.logo img {
			max-width: 50%;
		}

		main {
			padding: 50px 20px;
			text-align: center;
		}

		h1 {
			font-size: 36px;
			font-weight: bold;
			color: #2c3e50;
			margin-bottom: 50px;
		}

		h2{
			font-size: 36px;
			font-weight: bold;
			color: #2c3e50;
			margin-bottom: 80px;
		}

		form {
			max-width: 500px;
			margin: 0 auto;
			background-color: #fff;
			padding: 30px;
			border-radius: 5px;
			box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
			text-align: left;
		}

		label {
			display: block;
			font-size: 18px;
			font-weight: bold;
			color: #333;
			margin-bottom: 10px;
		}

		input[type="text"],
		input[type="password"] {
			display: block;
			width: 100%;
			padding: 10px;
			margin-bottom: 20px;
			font-size: 16px;
			border-radius: 5px;
			border: 1px solid #ccc;
		}

		.button {
			display: block;
			width: 100%;
			padding: 10px 20px;
			font-size: 24px;
			font-weight: bold;
			background-color: #2c3e50;
			color: #fff;
			border: none;
			border-radius: 5px;
			box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
			cursor: pointer;
			transition: all 0.3s ease;
		}

		.button:hover {
			background-color: #34495e;
		}

	footer {
  background-color: #2c3e50;
  padding: 20px;
  text-align: center;
  color: #fff;
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
}

		</style>
</head>
<body>
   <header>
		<div class="logo">
			<img src="flex.png" alt="Logo">
		</div>
	</header>
	<main>
		<h1>Add Faculty</h1>
		<form action="#" method="post" runat="server">
			<label for="fullname">Full Name:</label>
			<input type="text" id="fullname" name="fullname" placeholder="Enter your Full name" style="text-align: left;">

			<label for="id">ID:</label>
			<input type="text" id="id" name="id" placeholder="Enter your ID" style="text-align: left;">

			<label for="email">Email:</label>
	        <input type="text" id="email" name="email" placeholder="Enter your E-Mail" style="text-align: left;" />


			<label for="password">Password:</label>
			<input type="password" id="password" name="password" placeholder="Enter your password" style="text-align: left;">
			
			<asp:button type="submit" id ="submit" Text ="Add" runat="server" CssClass="button" OnClick="submit_Click" style="margin-bottom: 20px;"></asp:button>
<asp:button type="submit" id ="Back" Text ="Back" runat="server" CssClass="button" OnClick="Back_Click"></asp:button>

			
		</form>

	</main>
	<footer>
		<p>&copy; 2023 Academics</p>
	</footer>
</body>
</html>
