﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grade.aspx.cs" Inherits="Grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grade</title>
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
  position: relative;
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
	<h1>Attendance Page</h1>
    <form id="form1" runat="server">
        <div class="form-group">
  <label for="grade_id">Grade ID:</label>
  <input type="text" id="grade_id" name="grade_id">
</div>
<div class="form-group">
  <label for="course_id">Course ID:</label>
  <input type="text" id="course_id" name="course_id">
</div>
<div class="form-group">
  <label for="section_id">Section ID:</label>
  <input type="text" id="section_id" name="section_id">
</div>
<div class="form-group">
  <label for="roll_number">Roll Number:</label>
  <input type="text" id="roll_number" name="roll_number">
</div>
<div class="form-group">
  <label for="grade">Grade obtained:</label>
  <input type="text" id="grade" name="grade">
</div>
<div class="form-group">
  <label for="instructor_id">Course Instructor ID:</label>
  <input type="text" id="instructor_id" name="instructor_id">
</div>
<div class="form-group">
  <label for="Linstructor_id">Lab Instructor ID:</label>
  <input type="text" id="Linstructor_id" name="Linstructor_id">
</div>

    <asp:button type="submit" id ="submit" Text ="Submit" runat="server" CssClass="button" OnClick="submit_Click"></asp:button>
	<br/>
		<asp:button type="submit" id ="back" Text ="Back" runat="server" CssClass="button" OnClick="back_Click"></asp:button>

    </form>
	<footer>
		<p>&copy; 2023 Faculty</p>
	</footer>
</body>
</html>