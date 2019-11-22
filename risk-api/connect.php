<?php header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With, Authorization");

// Live credentials
define('DB_HOST', 'sql25.cpt1.host-h.net');
define('DB_USER', 'rmscrmvzqx_1');
define('DB_PASS', 'BpQ4hudiZ4rEnANwe8w8');
define('DB_NAME', 'rmscrmvzqx_db1');

// db credentials
/*define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');

define('DB_NAME', 'maturity');*/

// Connect with the database.
function connect()
{
  $connect = mysqli_connect(DB_HOST ,DB_USER ,DB_PASS ,DB_NAME);

  if (mysqli_connect_errno($connect)) {
    die("Failed to connect:" . mysqli_connect_error());
  }

  mysqli_set_charset($connect, "utf8");
  return $connect;
}

$con = connect();