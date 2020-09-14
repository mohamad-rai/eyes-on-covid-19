<?php
      header('Access-Control-Allow-Origin: *');
      header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
      header('Access-Control-Max-Age: 1000');
      header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
      header('Set-Cookie: cross-site-cookie=name; SameSite=None; Secure');
$c = mysqli_connect("localhost", "techtark_country", "8?LNrJRZzXnK", "techtark_countries");
header("content-type: application/json; charset=utf-8");
mysqli_query($c, "set names utf8");
mysqli_query($c, "set charset utf8");
$g = $_GET;
$single = false;
if (isset($g['code'])) {
    $single = true;
    $code = $g['code'];
    $query = "SELECT * FROM countries WHERE alpha2 = '$code'";
} elseif (isset($g['name'])) {
    $single = true;
    $name = $g['name'];
    $query = "SELECT * FROM countries WHERE name = '$name'";
} else {
    $single = false;
    $query = "SELECT * FROM countries";
}

$result = mysqli_query($c, $query);
if ($result) {
    if (!$single) {
        while ($row = mysqli_fetch_assoc($result)){
            $row['flagImage'] = "https://www.countryflags.io/" . $row['alpha2'] . "/flat/64.png";
            $allData[] = $row;
        }
    } else{
        $row = mysqli_fetch_assoc($result);
        $row['flagImage'] = "https://www.countryflags.io/" . $row['alpha2'] . "/flat/64.png";
        $allData = $row;
    }
    $response['result'] = $allData;
    if ($response['result'] == null)
        $response['code'] = 404;
    else
        $response['code'] = 200;

    echo json_encode($response, JSON_UNESCAPED_UNICODE);
} else {
    $response['code'] = 400;
    echo json_encode($response);
}
