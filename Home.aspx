<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    
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
<body >
	<header>
    <div class="logo">
      <img src="flex.png" alt="Logo">
    </div>
	</header>

	<main>
    <h1>Home</h1>

    <form id="form1" runat="server">
        <div style="text-align: center;">
            <br><br><br>
            <asp:button class="button" type="submit" id ="student" runat="server" OnClick="student_Click" Text="Students"></asp:button>
            <br><br><br> 
            <asp:button class="button" type="submit" id ="faculty" runat="server" OnClick ="faculty_Click" Text ="Faculty" /></asp:button>
            <br><br><br>
            <asp:button class="button" type="submit" id="academic" runat="server" OnClick ="academic_Click" Text="Academic Office" /></asp:button>
        </div>
    </form>
		</main>
		<footer>FLEX HOME</p>
	</footer>
</body>
</html>
