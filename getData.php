<?php

if (isset($_POST['country'])) {
    $country = $_POST['country'];
    $from = $_POST['from'];
    $to = $_POST['to'];

    $curl = curl_init();
    $url = "https://api.covid19api.com/live/country/" . $country;
    curl_setopt_array($curl, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
    ));
    $countries = curl_exec($curl);

    curl_setopt_array($curl, array(
        CURLOPT_URL => "https://api.covid19api.com/summary"
    ));
    $countryData = curl_exec($curl);
    $countryData = json_decode($countryData, true);
    curl_close($curl);

    $result['countries'] = json_decode($countries,true);
    $index = null;
    foreach ($countryData['Countries'] as $key => $value) {
        if($value['Slug'] == $country)
            $index = $key;
    }
    $result['data'] = $countryData['Countries'][$index];
    header("content-type: application/json");
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
}