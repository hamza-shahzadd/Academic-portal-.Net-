<%@ Page Language="C#" AutoEventWireup="true" CodeFile="marksFaculty.aspx.cs" Inherits="marksFaculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>marks</title>
    <style>
    table {
      border-collapse: collapse;
      width: 70%;
    }
    * {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		body {
			background-color: #f5f5f5;
			font-family: Arial, sans-serif;
		}

		

		.logo {
    display: inline-block;
    vertical-align: middle;
    margin-right: 20px;
}

		.logo img {
			max-width: 20%;
		}

		main {
			padding: 50px 20px;
			margin-left: 20px;
		}

		
header {
  display: flex;
  justify-content: space-between;
  background-color: #C1DAD6;
  padding: 10px;
  color: #fff;
}




h1 {
  font-size: 36px;
  font-weight: bold;
  color: #2c3e50;
  text-align: center;
  margin-left: 600px;
  margin-top: -50px;
}

.logout button {
  padding: 10px 20px;
  font-size: 18px;
  font-weight: bold;
  background-color: #2c3e50;
  color: #fff;
  margin-top: 10px;
  border: none;
  border-radius: 5px;
  box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
  cursor: pointer;
  transition: all 0.3s ease;
}

.logout button:hover {
  background-color: #34495e;
}

		h2{
			font-size: 30px;
			font-weight: bold;
			color: #2c3e50;
			margin-bottom: 80px;
			text-align: center;
		}

		

		label {
			display: block;
			font-size: 18px;
			font-weight: bold;
			color: #333;
			margin-bottom: 10px;
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


        .buttons {
            text-align: center;
            margin-bottom: 20px;
        }

        .button {
            padding: 10px 10px;
            font-size: 18px;
            font-weight: bold;
            background-color: #2c3e50;
            color: #fff;
            margin-right: 10px;
            margin-left: 200px;
            border: none;
            border-radius: 3px;
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

    th, td {
      text-align: left;
      padding: 8px;
    }

    th {
      background-color: #f2f2f2;
    }

    tr:nth-child(even) {
      background-color: #f9f9f9;
    }

    button {
      margin-top: 10px;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
		<div class="logo">
    <img src="flex.png" alt="Logo">

		<h1>Set Course Distribution</h1>
			</div>

	</header>
        <main>
  <h3>Course Information</h3>
        <br>
  <p><strong>Course Name:</strong> Programming Fundementals</p>
        <br>
  <p><strong>Course Section:</strong> CS001</p>
  <br>
  <h3>Evaluation Weightages</h3>
        <br>
  <table>
    <thead>
      <tr>
        <th>Sr#</th>
        <th>Evaluation Name</th>
        <th>Weightage</th>
        <th>Range</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Assignment </td>
        <td><input type="number" min="0" max="100"></td>
        <td>0 - 100</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Midterm Exam</td>
        <td><input type="number" min="0" max="100"></td>
        <td>0 - 100</td>
      </tr>
        <tr>
        <td>3</td>
        <td>Quiz </td>
        <td><input type="number" min="0" max="100"></td>
        <td>0 - 100</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Final Exam</td>
        <td><input type="number" min="0" max="100"></td>
        <td>0 - 100</td>
      </tr>
     
    </tbody>
  </table>
  
 
<asp:button class="button" type="submit" id="Button1" runat="server"  Text="Set default" /></asp:button>
   <asp:button class="button" type="submit" id="Button2" runat="server"  Text="Confirm" /></asp:button>
   
  <asp:button class="button" type="submit" id="back" runat="server" OnClick ="back_Click" Text="Back" /></asp:button>
   

</main>
        <footer>
		<p>&copy; 2023 Faculty</p>
	</footer>
        
   
          </form>
</body>
</html>

