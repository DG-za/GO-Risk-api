<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$notifications = [];
$sql = "SELECT manager_notify.*,risk.risk_desc, users.firstname, users.lastname, company.name FROM manager_notify 
INNER JOIN users ON manager_notify.manager = users.id 
INNER JOIN risk ON risk.id = manager_notify.risk 
INNER JOIN company ON company.id = risk.company";
// $sql = "SELECT manager_notify.*, users.firstname, users.lastname FROM manager_notify 
// INNER JOIN users ON manager_notify.manager = users.id
// INNER JOIN risk ON risk.id = manager_notify.risk";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $notifications[$cr]['id']    = $row['id'];
    $notifications[$cr]['owner'] = $row['owner'];
    $notifications[$cr]['manager'] = $row['manager'];
    $notifications[$cr]['risk'] = $row['risk'];
    $type = $row['type'];
    if($type==1){
      $notifications[$cr]['type'] = "Feedback";
    }
    else{
      $notifications[$cr]['type'] = "Resolution";
    }
    $notifications[$cr]['date'] = $row['date'];
    $notifications[$cr]['comments'] = $row['comments'];
    $notifications[$cr]['sms'] = $row['sms'];
    $notifications[$cr]['complete'] = $row['complete'];
    $notifications[$cr]['complete_date'] = $row['complete_date'];
    $notifications[$cr]['manager'] = $row['firstname']. " " .$row['lastname'];
    $notifications[$cr]['company_name'] = $row['name'];
    $notifications[$cr]['risk_desc'] = $row['risk_desc'];
    $cr++;
  }
    
  echo json_encode(['data'=>$notifications]);
}
else
{
  http_response_code(404);
}

?>