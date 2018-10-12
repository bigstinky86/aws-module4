<?php

echo "Hostname: " . gethostname() . "<br />";

$dbname = getenv("DB_NAME");
$dbhost = getenv("DB_HOST");
$dbuser = getenv("DB_USER");
$dbpass = getenv("DB_PASS");

echo "Connection status: ";

try {
    $dbh = new PDO("mysql:host=" . $dbhost . ";dbname=" . $dbname, $dbuser, $dbpass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    $dbh=null;
    echo "Connected to database!<br />";
}
catch(PDOException $e){
    echo $e->getMessage() . "<br />";
}
