<?php
if (isset($_POST['submit']))
{
	if (!isset($_POST['message']))
	{
		$error = "*" . "Please fill all the required fields";
	}
	else
	{
		$message = $_POST['message'];
	}
}
?>
<html>

<head>
	<title>Simple Form Processing</title>
</head>

<body>
	<h1>Form Processing using PHP</h1>
	<fieldset>
		<form id="form1" method="post" action="form.php">
			<?php
				if (isset($_POST['submit']))
				{
					if (isset($error))
					{
						echo "<p style='color:red;'>"
						. $error . "</p>";
					}
				}
				?>

				Message:
				<input type="text" name="message"/>
				<span style="color:red;">*</span>
				<br>
				<input type="submit" value="Submit" name="submit" />
		</form>
	</fieldset>
	<?php
	if(isset($_POST['submit']))
	{
		if(!isset($error))
		{
				echo"<h1>INPUT RECEIVED</h1><br>";
				echo "<table border='1'>";
				echo "<thead>";
				echo "<th>Parameter</th>";
				echo "<th>Value</th>";
				echo "</thead>";
				echo "<tr>";
				echo "<td>First Name</td>";
				echo "<td>".$message."</td>";
				echo "</tr>";
				echo "</table>";
		}
	}
	?>
</body>

</html>
