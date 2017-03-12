<?php

$host = "http://pim-ce-17-odm.local/app_dev.php/";
$url = $host."api/oauth/v1/token";
$username = "admin";
$password = "admin";
$clientId = "2_1xkkvxrjku74k4ss8k44kwwsko40o08ckg488ogcosgookgo40";
$secret = "3ps4i6q62r6s0w88ksosso0cc8s4wcc0w4w4gcogo4gwgkkwk4";
$base64 = base64_encode($clientId.":".$secret);

$headers = array();
$headers[] = 'Content-Type: application/json';
$headers[] = 'Authorization: Basic '.$base64;

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode(['username' => $username, 'password' => $password, "grant_type" => "password"]));

$result = curl_exec($ch);
