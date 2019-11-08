<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');

require 'connect.php';

// Get the posted data.
$postdata = file_get_contents("php://input");

if (isset($postdata) && !empty($postdata)) {
    // Extract the data.
    $request = json_decode($postdata);


    // Validate.
    // if(trim($request->data->cat) < 0 || (int)$request->data->score < 1)
    // {
    //   return http_response_code(400);
    // }

    // Sanitize.
    $owner = mysqli_real_escape_string($con, (int)$request->data->owner);
    $manager = mysqli_real_escape_string($con, (int)$request->data->manager);
    $risk = mysqli_real_escape_string($con, (int)$request->data->risk);
    $type = mysqli_real_escape_string($con, (int)$request->data->type);
    $date = mysqli_real_escape_string($con, $request->data->date);
    $comments = mysqli_real_escape_string($con, $request->data->comments);
    $sms = mysqli_real_escape_string($con, (int)$request->data->sms);

    $sql = "INSERT INTO manager_notify (owner, manager, risk, type, date, comments, sms, complete, complete_date) VALUES ('$owner', '$manager', '$risk', '$type', '$date', '$comments', '$sms', '0', '')";
    

    if (mysqli_query($con, $sql)) {
        http_response_code(201);
        $notification = [
          'owner' => $owner,
          'manager' => $manager,
          'risk' => $risk,
          'type' => $type,
          'date' => $date,
          'comments' => $comments,
          'sms' => $sms,
          'id'    => mysqli_insert_id($con)
        ];
        echo json_encode(['data' => $notification]);
      } else {
        http_response_code(422);
      }
  }
