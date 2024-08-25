<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcademicAddCourses.aspx.cs" Inherits="AcademicAddCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Courses</title>
    <style>
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		body {
			  position: relative;
  min-height: 100vh;
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
  position: relative;
  margin-bottom: 150px;

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
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: #2c3e50;
  padding: 20px;
  text-align: center;
  color: #fff;

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
		<h1>Add Courses</h1>
    <form action="#" method="post" runat="server">
        <label for="courseid">Course ID:</label>
        <input type="text" id="courseid" name="courseid" placeholder="Enter the Course ID" style="text-align: left;" />

        <label for="semester">Semester:</label>
        <input type="text" id="semester" name="semester" placeholder="Enter semester for the course" style="text-align: left;" />

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter name of course" style="text-align: left;" />

        <label for="credits">Credit hours:</label>
        <input type="text" id="credits" name="credits" placeholder="Enter credit hrs for course" style="text-align: left;" />

        <label for="prereq">Pre requisite:</label>
        <input type="text" id="prereq" name="prereq" placeholder="Enter pre req id or null" style="text-align: left;" />

		<label for="ccoordinator">Course Coordinator:</label>
        <input type="text" id="ccoordinator" name="ccoordinator" placeholder="Enter id of course coordinator or null" style="text-align: left;" />

        <label for="lcoordinator">Lab Coordinator:</label>
        <input type="text" id="lcoordinator" name="lcoordinator" placeholder="Enter id of lab coordinator or null" style="text-align: left;" />

        <asp:Button type="submit" id="submit" Text="Add" runat="server" CssClass="button" OnClick="submit_Click" />
        <br />
        <asp:Button type="submit" id="Back" Text="Back" runat="server" CssClass="button" OnClick="Back_Click" />
    </form>
		</main>
	<footer>
		<p>&copy; 2023 Academics</p>
	</footer>
</body>
</html>
