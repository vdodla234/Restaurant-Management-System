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

$sql = "INSERT INTO guest(full_name, meal_type, phone_number, number_of_people)
VALUES ('$_POST[ename]','$_POST[meal]','$_POST[econtact]','$_POST[emem]')";

if ($conn->query($sql) === TRUE) {
    echo "";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$sql1 = "SELECT r.table_Id,n.table_no 
 FROM restaurant_table r
 inner join table_cap c on r.table_id=c.table_id
 inner join table_num n on r.table_id=n.table_id
 Where c.capacity='$_POST[emem]' and r.type = '$_POST[meal]' and r.table_id NOT IN(Select table_id from reservation B where date_booked='$_POST[date_book]') LIMIT 1";

$result = $conn->query($sql1);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        
echo "you have reserved table ";
echo "" . $row["table_no"]."<br>";
echo "" ."<br>";
$limit = intval($row["table_Id"]);


	$sql3 = "SELECT MAX(guest_id) FROM guest";
	$result1 = $conn->query($sql3);

	if ($result1->num_rows > 0) {
  	  // output data of each row
   	 while($row = $result1->fetch_assoc()) {
        
	echo "your guest id is ";
echo "" . $row["MAX(guest_id)"]."<br>";
	
	echo "" ."<br>";

	$limit1 = intval($row["MAX(guest_id)"]);

		$sql2 = "INSERT INTO reservation(guest_id,table_id,date_booked)
		VALUES ($limit1,$limit,'$_POST[date_book]')";
		if ($conn->query($sql2) === TRUE) {
  		  echo "";
		} else {
  		  echo "error in insert into reservation  " . $sql2 . "<br>" . $conn->error;
		}

		 }
		} else {
  		  echo "error in guest id";
		}

   		 }
} else {
    echo "Currently we do not have any tables as per your selections";
}

$conn->close();
?>