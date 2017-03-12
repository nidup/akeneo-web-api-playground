<?php

$host = "http://pim-ce-17-odm.local/app_dev.php/";
$url = $host."api/rest/v1/products";
$tokenType = "Bearer";
$accessToken = "YzFlZTVmNjc2OWI2N2ZmYTY1MzJkZDAwNzc3Yjk2MDRkNmU0M2ZhMzM5MGJlMTRmZjViZTlkMTc0YjQyM2UxNg";

$headers = array();
$headers[] = 'Content-Type: application/json';
$headers[] = 'Authorization: '.$tokenType.' '.$accessToken;

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

$result = curl_exec($ch);
$httpStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
