<?php
$servername = "localhost";
$username = "root";
$password = "secret";
$dbname = "team_6";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
error_reporting(E_ALL ^ E_NOTICE);

?>

<!doctype html>
<html lang="en">
<head>
<title>Menu</title>
<style type="text/css">

label:after {
  content: ": ";
}

label {
  
  color: white;
  font-weight: bold;
  padding: 4px;
  text-transform: uppercase;
  font-family: Verdana, Arial, Helvetica, sans-serif;
  font-size: xx-small;
}</style>
<style>
body{background-repeat:repeat-y;background-size:100%}
#form{width: 15em;height: 3sem;}
#left{line-height:30px;width:250px;float:left;padding:15px; }
#right{line-height:30px;width:250px;float:right;padding:15px; }
</style>
</head>
<body background="background.jpg">

<h1 align="center"><font size="10" color="black">R@$0Y!</font></h1>
<h3 align="center"><color="black">-The Essence Of Indian Tradition-</font></h3>
<table cellpadding=30>
<tr>
<td><form action="View-Profile.php" method="post"><input type="submit" value="View-Profile" id="form" ></form></td>
<td><form action="Edit-Menu.html" method="post"><input type="submit" value="Edit-Menu" id="form"></form></td>
<td><form action="Edit-Reservation.php" method="post"><input type="submit" value="Edit-Reservation" id="form"></form></td>
<td>
<font size="4"><a href="Login.html"><font color="white">Logout</a></font>
</td>
</tr>
</table>
<table>
<?php $table_id="";
?>
<tr>
<td>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" >  
<label>Enter table Number: </label></td>
<td><input type="number" name="table_id" min="1" max="10" value="<?php echo $contact;?>">
<input type="submit" name="Submit" value="Apply-Changes">
</form>
</td>
<?php
$table_id = $_POST['table_id'];
$sql = "UPDATE restaurant_table SET status='available' where table_id=$table_id";
$result = $conn->query($sql);
?>
</tr>

