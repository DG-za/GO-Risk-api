<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');
require 'connect.php';
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

$riskid = mysqli_real_escape_string($con, (int)$request->data->id);

$risks = [];
$incidents = [];
$controls = [];
$sql = "SELECT * FROM risk WHERE risk.id = $riskid";
$sql2 = "SELECT * FROM incidents WHERE risk = $riskid";
$sql3 = "SELECT * FROM control_check WHERE risk = $riskid WHERE checked=0";
if ($result2 = mysqli_query($con, $sql2)) {
  $cr2 = 0;
  while ($row = mysqli_fetch_assoc($result2)) {
    $incidents[$cr2]['id'] = $row['id'];
    $incidents[$cr2]['date'] = $row['date'];
    $incidents[$cr2]['type'] = $row['type'];
    $incidents[$cr2]['incident_desc'] = $row['incident_desc'];
    $incidents[$cr2]['failed_controls'] = $row['failed_controls'];
    $cr2++;
  }
}

if ($result3 = mysqli_query($con, $sql3)) {
  $cr3 = 0;
  while ($row = mysqli_fetch_assoc($result3)) {
    $controls[$cr3]['id']      = $row['id'];
    $controls[$cr3]['date']      = $row['date'];
    $controls[$cr3]['hazard']      = $row['hazard'];
    $controls[$cr3]['user']      = $row['user'];
    $controls[$cr3]['control']      = $row['control'];
    $cr3++;
  }
}
if ($result = mysqli_query($con, $sql)) {

  $cr = 0;
  while ($row = mysqli_fetch_assoc($result)) {
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
    $cr++;
  }
} else {
  //http_response_code(404);
}
echo json_encode(['data' => $risks, 'incidents' => $incidents, 'controls' => $controls]);
