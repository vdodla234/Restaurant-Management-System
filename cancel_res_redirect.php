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


$sql = "select r.table_id from reservation r
where date_booked= '$_POST[date_book]' and
r.table_id IN(select r.table_id from restaurant_table r inner join table_num n on r.table_id=n.table_id  where table_no=$_POST[tid] and type= '$_POST[meal]')";



$result = $conn->query($sql);

if ($result->num_rows > 0) {
 while($row = $result->fetch_assoc()) {



$limit =intval($row["table_id"]);

$sql1 = "delete from reservation where table_id=$limit";

if ($conn->query($sql1) === TRUE) {
    echo "The reservation has been cancelled";

} else {
    echo "Error: " . $sql1 . "<br>" . $conn->error;
}


}
}
else {
echo "The reservation you are trying to cancel doesnt exist";
}





$conn->close();
?>