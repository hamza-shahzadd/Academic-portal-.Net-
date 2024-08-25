<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherAssessment.aspx.cs" Inherits="Teacher_Assessment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher assessment</title>
	<style>
	* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #f5f5f5;
	font-family: Arial, sans-serif;
	height: 100%; /* Added to make sure the body height covers the whole viewport */
	position: relative; /* Added to ensure child elements with position: absolute/fixed are positioned relative to the body */
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
	min-height: calc(100vh - 200px); /* Added to create space for the footer */
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
	max-width: 800px;
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

		fieldset {
  border: none;
}

legend {
  font-weight: bold;
}

.metric {
  margin-top: 10px;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th,
td {
  text-align: left;
  padding: 8px;
}

th:first-child,
td:first-child {
  padding-left: 0;
}

th:last-child,
td:last-child {
  padding-right: 0;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

input[type="radio"] {
  margin: 0;
  padding: 0;
}


  .radio-container {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
  }
  
  .radio-container label {
    margin-right: 10px;
  }
  .box {
  border: 1px solid #ccc;
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 5px;
}

label {
  display: block;
  margin-bottom: 5px;
  color: #333;
  font-weight: bold;
}

input[type="text"],
input[type="date"] {
  width: 25%;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
  margin-bottom: 10px;
}



textarea {
  width: 60%;
  padding: 5px;
  border: 1px solid #fff;
  resize: vertical;
  color: #555; /* Set textarea text color */
  background-color: #fff; /* Set textarea background color */
}



	</style>
</head>

<body>
	<header>
		<div class="logo">
    <img src="flex.png" alt="Logo">

		<h1>Teacher Assessment Form</h1>
			</div>

	</header>
	<main>
		<form id="form1" runat="server">
			<div class="box">
			<label for="date">Date:</label>
			<input type="date" id="date" name="date"><br><br>
			<label for="feedback">Feedback Id:</label>
			<input type="text" id="feedback" name="feedback"><br><br>
			<label for="course">Course Id:</label>
			<input type="text" id="course" name="course"><br><br>
			<label for="section">Section id:</label>
			<input type="text" id="section" name="section"><br><br>
			<label for="rollnumber">Rollnumber:</label>
			<input type="text" id="rollnumber" name="rollnumber"><br><br>
			<label for="cinstructor">Course Instructor Id:</label>
			<input type="text" id="cinstructor" name="cinstructor"><br><br>
			<label for="linstructor">Lab Instructor Id:</label>
			<input type="text" id="linstructor" name="linstructor"><br><br>
			
				</div>
			<legend><b>For reference, the metric are as follows</b></legend>  

			<br><br>
	<ul>
	<li>Poor</li>
	<li>Below Average</li>
	<li>Average</li>
	<li>Good</li>
	<li>Excellent</li>
</ul>
			<br><br>
			<h2>Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.</h2>
			 <fieldset>
  <legend>Appearance and Personal Presentation*</legend>
				 <div class="metric">
					
					 <table>
						 <tr>
							 <th></th>
							 <th>1</th>
							 <th>2</th>
							 <th>3</th>
							 <th>4</th>
							 <th>5</th>

						 </tr>
						 <tr>
							 <td>Teacher attends class in a well presentable manner</td>
							 <td><input type="radio" name="hello" value="1" id="hello"></td>
							  <td><input type="radio" name="hello" value="2" id="hello1"></td>
							  <td><input type="radio" name="hello" value="3" id="hello2"></td>
							  <td><input type="radio" name="hello" value="4" id="hello3"></td>
							  <td><input type="radio" name="hello" value="5" id="hello4"></td>
						 </tr>
						  <tr>
							 <td>Teacher shows enthusiasm when teaching in class</td>
							 <td><input type="radio" name="hellow" value="1" id="hello5"></td>
							  <td><input type="radio" name="hellow" value="2" id="hello6"></td>
							  <td><input type="radio" name="hellow" value="3" id="hello7"></td>
							  <td><input type="radio" name="hellow" value="4" id="hello8"></td>
							  <td><input type="radio" name="hellow" value="5" id="hello9"></td>
						 </tr>
						  <tr>
							 <td>Teacher shows initiative and flexibility in teaching</td>
							 <td><input type="radio" name="hellox" value="1" id="hello10"></td>
							  <td><input type="radio" name="hellox" value="2" id="hello11"></td>
							  <td><input type="radio" name="hellox" value="3" id="hello12"></td>
							  <td><input type="radio" name="hellox" value="4" id="hello13"></td>
							  <td><input type="radio" name="hellox" value="5" id="hello14"></td>
						 </tr>
						  <tr>
							 <td>Teacher is well articulated and shows full knowledge of the subject in teaching</td>
							 <td><input type="radio" name="helloy" value="1" id="hello15"></td>
							  <td><input type="radio" name="helloy" value="2" id="hello16"></td>
							  <td><input type="radio" name="helloy" value="3" id="hello17"></td>
							  <td><input type="radio" name="helloy" value="4" id="hello18"></td>
							  <td><input type="radio" name="helloy" value="5" id="hello19"></td>
						 </tr>
						 <tr>
							 <td>Teacher speaks loud and clear enough to be heard by the whole class</td>
							 <td><input type="radio" name="helloz" value="1" id="hello20"></td>
							  <td><input type="radio" name="helloz" value="2" id="hello21"></td>
							  <td><input type="radio" name="helloz" value="3" id="hello22"></td>
							  <td><input type="radio" name="helloz" value="4" id="hello23"></td>
							  <td><input type="radio" name="helloz" value="5" id="hello24"></td>
						 </tr>
					 </table>
				 </div>
</fieldset>
<br><br>

   <fieldset>

  <legend>Professional Practices*</legend>
	   
	  <div class="metric">
					 
					 <table>
						 <tr>
							 <th></th>
							 <th>1</th>
							 <th>2</th>
							 <th>3</th>
							 <th>4</th>
							 <th>5</th>

						 </tr>
						 <tr>
							 <td>Teacher shows professionalism in class</td>
							 <td><input type="radio" name="var" value="1" id="var1"></td>
							  <td><input type="radio" name="var" value="2" id="var2"></td>
							  <td><input type="radio" name="var" value="3" id="var3"></td>
							  <td><input type="radio" name="var" value="4" id="var4"></td>
							  <td><input type="radio" name="var" value="5" id="var5"></td>
						 </tr>
						  <tr>
							 <td>Teacher shows committment to teaching the class</td>
							 <td><input type="radio" name="varb" value="1" id="var6"></td>
							  <td><input type="radio" name="varb" value="2" id="var7"></td>
							  <td><input type="radio" name="varb" value="3" id="var8"></td>
							  <td><input type="radio" name="varb" value="4" id="var9"></td>
							  <td><input type="radio" name="varb" value="5" id="var10"></td>
						 </tr>
						  <tr>
							 <td>Teacher encourages students to engage in class discussions and ask questions</td>
							 <td><input type="radio" name="varc" value="1" id="var11"></td>
							  <td><input type="radio" name="varc" value="2" id="var12"></td>
							  <td><input type="radio" name="varc" value="3" id="var13"></td>
							  <td><input type="radio" name="varc" value="4" id="var14"></td>
							  <td><input type="radio" name="varc" value="5" id="var15"></td>
						 </tr>
						  <tr>
							 <td>Teacher handles criticisms and suggestions professionally</td>
							 <td><input type="radio" name="vard" value="1" id="var16"></td>
							  <td><input type="radio" name="vard" value="2" id="var17"></td>
							  <td><input type="radio" name="vard" value="3" id="var18"></td>
							  <td><input type="radio" name="vard" value="4" id="var19"></td>
							  <td><input type="radio" name="vard" value="5" id="var20"></td>
						 </tr>
						 <tr>
							 <td>Teacher comes to class on time</td>
							 <td><input type="radio" name="vare" value="1" id="var21"></td>
							  <td><input type="radio" name="vare" value="2" id="var22"></td>
							  <td><input type="radio" name="vare" value="3" id="var23"></td>
							  <td><input type="radio" name="vare" value="4" id="var24"></td>
							  <td><input type="radio" name="vare" value="5" id="var25"></td>
						 </tr>
						  <tr>
							 <td>Teacher ends class on time</td>
							 <td><input type="radio" name="varf" value="1" id="var26"></td>
							  <td><input type="radio" name="varf" value="2" id="var27"</td>
							  <td><input type="radio" name="varf" value="3" id="var28"></td>
							  <td><input type="radio" name="varf" value="4" id="var29"></td>
							  <td><input type="radio" name="varf" value="5" id="var30"></td>
						 </tr>
					 </table>
				 </div> 
	   </fieldset>
<br><br>
<fieldset>

  <legend>Teaching Methods*</legend>
	
	   
	  <div class="metric">

					 <table>
						 <tr>
							 <th></th>
							 <th>1</th>
							 <th>2</th>
							 <th>3</th>
							 <th>4</th>
							 <th>5</th>

						 </tr>
						 <tr>
							 <td>Teacher shows well rounded knowledge over the subject matter</td>
							 <td><input type="radio" name="var" value="1" id="rad1"></td>
							  <td><input type="radio" name="var" value="2" id="rad2"></td>
							  <td><input type="radio" name="var" value="3" id="rad3"></td>
							  <td><input type="radio" name="var" value="4" id="rad4"></td>
							  <td><input type="radio" name="var" value="5" id="rad5"></td>
						 </tr>
						  <tr>
							 <td>Teacher has organized the lesson conducive for easy understanding of students</td>
							 <td><input type="radio" name="varb" value="1" id="rad6"></td>
							  <td><input type="radio" name="varb" value="2" id="rad7"></td>
							  <td><input type="radio" name="varb" value="3" id="rad8"></td>
							  <td><input type="radio" name="varb" value="4" id="rad9"></td>
							  <td><input type="radio" name="varb" value="5" id="rad10"></td>
						 </tr>
						  <tr>
							 <td>Teacher shows dynamism and enthusiasm</td>
							 <td><input type="radio" name="varc" value="1" id="rad11"></td>
							  <td><input type="radio" name="varc" value="2" id="rad12"></td>
							  <td><input type="radio" name="varc" value="3" id="rad13"></td>
							  <td><input type="radio" name="varc" value="4" id="rad14"></td>
							  <td><input type="radio" name="varc" value="5" id="rad15"></td>
						 </tr>
						  <tr>
							 <td>Teacher stimulates the critical thinking of students</td>
							 <td><input type="radio" name="vard" value="1" id="rad16"></td>
							  <td><input type="radio" name="vard" value="2" id="rad17"></td>
							  <td><input type="radio" name="vard" value="3" id="rad18"></td>
							  <td><input type="radio" name="vard" value="4" id="rad19"></td>
							  <td><input type="radio" name="vard" value="5" id="rad20"></td>
						 </tr>
						 <tr>
							 <td>Teacher handles the class environment conducive for learning</td>
							 <td><input type="radio" name="vare" value="1" id="rad21"></td>
							  <td><input type="radio" name="vare" value="2" id="rad22"></td>
							  <td><input type="radio" name="vare" value="3" id="rad23"></td>
							  <td><input type="radio" name="vare" value="4" id="rad24"></td>
							  <td><input type="radio" name="vare" value="5" id="rad25"></td>
						 </tr>
					 </table>
				 </div>
	 </fieldset>

	<br><br>		
<fieldset>

  <legend>Disposition Towards Students*</legend>
		

	<div class="metric">
			
					 <table>
						 <tr>
							 <th></th>
							 <th>1</th>
							 <th>2</th>
							 <th>3</th>
							 <th>4</th>
							 <th>5</th>

						 </tr>
						 <tr>
							 <td>Teacher believes that students can learn from the class</td>
							 <td><input type="radio" name="var" value="1" id="radio1"></td>
							  <td><input type="radio" name="var" value="2" id="radio2"></td>
							  <td><input type="radio" name="var" value="3" id="radio3"></td>
							  <td><input type="radio" name="var" value="4" id="radio4"></td>
							  <td><input type="radio" name="var" value="5" id="radio5"></td>
						 </tr>
						  <tr>
							 <td>Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race</td>
							 <td><input type="radio" name="varb" value="1" id="radio6"></td>
							  <td><input type="radio" name="varb" value="2" id="radio7"></td>
							  <td><input type="radio" name="varb" value="3" id="radio8"></td>
							  <td><input type="radio" name="varb" value="4" id="radio9"></td>
							  <td><input type="radio" name="varb" value="5" id="radio10"></td>
						 </tr>
						  <tr>
							 <td>Teacher finds the students strengths as basis for growth and weaknesses for opportunities for improvement</td>
							 <td><input type="radio" name="varc" value="1" id="rad11"></td>
							  <td><input type="radio" name="varc" value="2" id="rad12"></td>
							  <td><input type="radio" name="varc" value="3" id="rad13"></td>
							  <td><input type="radio" name="varc" value="4" id="rad14"></td>
							  <td><input type="radio" name="varc" value="5" id="rad15"></td>
						 </tr>
						  <tr>
							 <td>Teacher understands the weakness of a student and helps in the student's improvement</td>
							 <td><input type="radio" name="vard" value="1" id="radio16"></td>
							  <td><input type="radio" name="vard" value="2" id="radio17"></td>
							  <td><input type="radio" name="vard" value="3" id="rad18"></td>
							  <td><input type="radio" name="vard" value="4" id="radio19"></td>
							  <td><input type="radio" name="vard" value="5" id="radio20"></td>
						 </tr>
						 
					 </table>
				 </div>
	    			 				 				 	 
</fieldset>
			<br>
			<label for="comments">Comments:</label><br>
			<textarea id="comments" name="comments" rows="10" cols="50"></textarea><br><br>
			<asp:button class="button" type="Submit" id="submit" runat="server" Onclick ="submit_Click" Text="Submit" /><asp:button>
			<br>
			<asp:button class="button" type="submit" id="back" runat="server" OnClick ="back_Click" Text="Back" /></asp:button>
   
		</form>
		</main>
	<footer>
		<p>&copy; Students </p>
	</footer>
	</body>
	</html>


