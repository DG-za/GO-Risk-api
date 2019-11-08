<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$risks = [];
$sql = "SELECT risk.*, COUNT(incidents.id) AS incidents, COUNT(control_check.id) AS controls FROM risk Left OUTER JOIN incidents ON risk.id = incidents.risk Left OUTER JOIN control_check ON risk.id = control_check.risk AND checked =0 GROUP BY risk.id ";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']      = $row['id'];
    $risks[$cr]['company'] = $row['company'];
    $risks[$cr]['geo_area'] = $row['geo_area'];
    $risks[$cr]['process_step'] = $row['process_step'];
    $risks[$cr]['external_factor'] = $row['external_factor'];
    $risks[$cr]['hazard_desc'] = $row['hazard_desc'];
    $risks[$cr]['owner'] = $row['owner'];
    $risks[$cr]['cat'] = $row['cat'];
    $risks[$cr]['risk_desc'] = $row['risk_desc'];
    $risks[$cr]['type'] = $row['type'];
    $risks[$cr]['conseq'] = $row['conseq'];
    $risks[$cr]['exposure_count'] = $row['exposure_count'];
    $risks[$cr]['exposure_freq'] = $row['exposure_freq'];
    $risks[$cr]['exposure_duration'] = $row['exposure_duration'];
    $risks[$cr]['controls_prevent'] = $row['controls_prevent'];
    $risks[$cr]['controls_corrective'] = $row['controls_corrective'];
    $risks[$cr]['historic_conseq'] = $row['historic_conseq'];
    $risks[$cr]['historic_desc'] = $row['historic_desc'];
    $risks[$cr]['historic_freq'] = $row['historic_freq'];
    $risks[$cr]['incidents'] = $row['incidents'];
    $risks[$cr]['controls'] = $row['controls'];
    $cr++;
  } 
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>