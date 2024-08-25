<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CgpaGraphs.aspx.cs" Inherits="CgpaGraphs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CGPA Graphs</title>
	<!-- Include the Chart.js library -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	
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
    </div>
	</header>

	<h1>Comparison Graphs</h1>
	<br/>

<form id="form1" runat="server">
     
    <!-- Create a container for the chart -->
    <canvas id="myChart"></canvas>

    <!-- Add script to generate the chart -->
    <script>
        // Retrieve the data from the server and store it in variables
        var gpaValues = [3.5, 3.7, 3.2, 3.9];
        var sgpaValues = [3.6, 3.8, 3.5, 4.0];

        // Prepare the chart data
        var chartData = {
            labels: ["Semester 1", "Semester 2", "Semester 3", "Semester 4"],
            datasets: [
                {
                    label: "GPA",
                    data: gpaValues,
                    backgroundColor: "rgba(75, 192, 192, 0.2)",
                    borderColor: "rgba(75, 192, 192, 1)",
                    borderWidth: 1
                },
                {
                    label: "SGPA",
                    data: sgpaValues,
                    backgroundColor: "rgba(255, 99, 132, 0.2)",
                    borderColor: "rgba(255, 99, 132, 1)",
                    borderWidth: 1
                }
            ]
        };

        // Get the canvas element
        var ctx = document.getElementById('myChart').getContext('2d');

        // Create the chart using Chart.js
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: chartData,
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>

	<br><br>
		<asp:button class="button" type="submit" id="back" runat="server" OnClick ="back_Click" Text="Back" /></asp:button>
   
        </form>
		</main>
		<footer>CGPA</p>
	</footer>
</body>
</html>
