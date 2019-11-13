<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$risks = [];
$sql = "SELECT level, not_likely , slight, likely, highly_likely, expected FROM risk_table";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['level']      = $row['level'];
    $risks[$cr]['1'] = $row['not_likely'];
    $risks[$cr]['2'] = $row['slight'];
    $risks[$cr]['3'] = $row['likely'];
    $risks[$cr]['4'] = $row['highly_likely'];
    $risks[$cr]['5'] = $row['expected'];
    $cr++;
  }
    
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>