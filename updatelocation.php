<?php

function getLatLan($location) {
    $arrContextOptions=array(
        "ssl"=>array(
            "verify_peer"=>false,
            "verify_peer_name"=>false,
        ),
    );
    $encodedLocation = urlencode($location);
    $url = "https://api.mapbox.com/geocoding/v5/mapbox.places/".$encodedLocation.".json?access_token=pk.eyJ1IjoibWVsbGFyazIwMSIsImEiOiJja25oc2dtYjYwMG1mMnF1d3YwZngzcG02In0.09cFa_2aNnXnmpBVW9tRXg";
    $response = file_get_contents($url, false, stream_context_create($arrContextOptions));
    $response = json_decode(json_encode($response), true);
    // echo $response;
    $temp = strpos($response, "features");
    $temp2 = strpos($response, "center", $temp);
    $temp3 = strpos($response, "[", $temp2);
    $temp3++;
    $string1 = "";
    $string2 = "";
    while($response[$temp3]!=',') {
        $string1 = $string1.$response[$temp3];
        $temp3++;
    }
    $temp3++;
    while($response[$temp3]!=']') {
        $string2 = $string2.$response[$temp3];
        $temp3++;
    }
    $longitude = floatval($string1);
    $latitude = floatval($string2);
    // echo $latitude;
    // echo $longitude;
    $array = [];
    array_push($array, $latitude, $longitude);
    return $array;
}

function getDistanceBetweenPointsNew($latitude1, $longitude1, $latitude2, $longitude2, $unit = 'miles') {
    $theta = $longitude1 - $longitude2; 
    $distance = (sin(deg2rad($latitude1)) * sin(deg2rad($latitude2))) + (cos(deg2rad($latitude1)) * cos(deg2rad($latitude2)) * cos(deg2rad($theta))); 
    $distance = acos($distance); 
    $distance = rad2deg($distance); 
    $distance = $distance * 60 * 1.1515; 
    switch($unit) { 
      case 'miles': 
        break; 
      case 'kilometers' : 
        $distance = $distance * 1.609344; 
    } 
    return (round($distance,2)); 
}



//reference : https://martech.zone/calculate-great-circle-distance/#:~:text=The%20query%20for%20retrieving%20all,180))%20%2B%20cos((%22.
?>



