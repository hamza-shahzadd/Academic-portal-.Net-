﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseAlloc_Cinstr.aspx.cs" Inherits="CourseAlloc_Cinstr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Instructor Allocation </title>
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
			padding: 50px;
			color: #fff;
		}
		

		.logo {
    display: inline-block;
    vertical-align: middle;
    margin-right: 20px;
	 position: absolute;
    top: 20px;
    left: 20px;
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
  position: absolute;
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
    <h1>Course Instructor Allocation </h1>
  </div>

</header>
	<main>
    <form action="#" method="post" runat="server">
        
		<label for="course">Course Instructor ID:</label>
        <input type="text" id="course" name="course" placeholder="Enter Course instr ID" style="text-align: left;" />

        <label for="alloc">Course Allocation Id:</label>
        <input type="text" id="alloc" name="alloc" placeholder="Enter Allocation ID " style="text-align: left;" />

        <asp:Button type="submit" id="submit" Text="Assign Course " runat="server" CssClass="button" OnClick="submit_Click" />
        <br />
        <asp:Button type="submit" id="Back" Text="Back" runat="server" CssClass="button" OnClick="Back_Click" />
  
       
    </form>
			</main>
	<footer>
		<p>&copy; 2023 Academics Home</p>
	</footer>
</body>
</html>
