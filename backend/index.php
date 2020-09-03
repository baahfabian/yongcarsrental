<?php

include('db.php');

// TODO:  get form details
if (isset($_REQUEST['rentBtn']])) {
  // code...
  $location = htmlspecialchars($_REQUEST['location']);
  $carType = htmlspecialchars($_REQUEST['carType']);
  $pickupDate = htmlspecialchars($_REQUEST['pickupDate']);
  $dropoffDate = htmlspecialchars($_REQUEST['dropoffDate']);
  $pickupTime = htmlspecialchars($_REQUEST['pickupTime']);
  $mobile = htmlspecialchars($_REQUEST['mobile']);

DB::query("INSERT INTO `booking_tb` (`id`, `location`, `carType`, `pickupDate`, `dropoffDate`, `pickupTime`, `status`, `date_added`, `mobile`) VALUES (NULL, '$location', '$carType', '$pickupDate', '$dropoffDate', '$pickupTime', 'issued', 'current_timestamp()', '$mobile');")
};



 ?>
