<?php
$curl = curl_init();

curl_setopt_array($curl, array(
    CURLOPT_URL => "https://api.covid19api.com/countries",
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
    CURLOPT_URL => "http://techtark.com/app/country"
));
$countryData = curl_exec($curl);

curl_setopt_array($curl, array(
    CURLOPT_URL => "https://api.covid19api.com/world/total"
));
$worldData = curl_exec($curl);

curl_setopt_array($curl, array(
    CURLOPT_URL => "https://api.covid19api.com/version"
));
$version = curl_exec($curl);

curl_close($curl);
$countries = json_decode($countries, true);
$countryData = json_decode($countryData, true);
$worldData = json_decode($worldData, true);
$version = json_decode($version, true);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css?ver=<?= filemtime('style.css') ?>">
    <title>Eyes on Covid19</title>
</head>

<body>
    <div class="container" style="padding-top: 30px">
        <div class="row main-border">
            <div class="col-md-12">
                <div class="alert alert-warning">
                    <h4 class="text-center">
                        طراحی و اجرا توسط محمدرضا احمدی
                    </h4>
                    <h5 class="text-center">
                        <a href="https://instagram/mohamad_r.ai">Instagram</a>
                        - 
                        <a href="https://t.me/mohamad_rai">Telegram</a>
                        - 
                        <a href="mailto:mrahmadi7718@gmail.com">Email</a>
                        - 
                        <a href="tel:+989184977873">Call</a>
                    </h5>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6">
                    <label for="countries">کشورها:</label>
                    <select name="countries" id="countries" class="select2 form-control">
                        <option value="null">انتخاب کنید...</option>
                        <?php
                        foreach ($countries as $key => $value) {
                            $index = null;
                            foreach ($countryData['result'] as $dataKey => $dataValue) {
                                if ($value['Country'] == $dataValue['name'])
                                    $index = $dataKey;
                            }
                            if ($index)
                                $cname = $countryData['result'][$index]['pname'];
                            else
                                $cname = $value['Country'];
                            echo '<option value="' . $value['Slug'] . '">' . $cname . '</option>';
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="col-md-12 mt-5">
                <div class="row">
                    <div class="col-md-3">
                        <h5>وضعیت کلی کشور
                            <span id="countryName"></span>
                            :</h5>
                        <hr>
                        <div class="col-md-12">
                            <span class="bold" style="color: #36a2eb">تایید شدگان:</span>
                            <span id="confirmedCountry">0</span>
                            نفر
                        </div>
                        <div class="col-md-12">
                            <span class="bold" style="color: #4bc0c0">بهبودیافتگان:</span>
                            <span id="recoverCountry">0</span>
                            نفر
                        </div>
                        <div class="col-md-12">
                            <span class="bold" style="color: #ff6384">جان باختگان:</span>
                            <span id="deathCountry">0</span>
                            نفر
                        </div>
                        <br>
                        <br>
                        <h3>وضعیت جهانی:</h3>
                        <hr>
                        <div class="col-md-12">
                            <span class="bold">تایید شدگان:</span>
                            <?= number_format($worldData['TotalConfirmed']) ?>
                            نفر
                        </div>
                        <div class="col-md-12">
                            <span class="bold">بهبودیافتگان:</span>
                            <?= number_format($worldData['TotalDeaths']) ?>
                            نفر
                        </div>
                        <div class="col-md-12">
                            <span class="bold">جان باختگان:</span>
                            <?= number_format($worldData['TotalRecovered']) ?>
                            نفر
                        </div>
                    </div>
                    <div class="col-md-8">
                        <canvas id="canvas"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-12 mt-5">
                <div class="alert alert-info">
                    این اطلاعات از
                    <b>
                        <a href="https://github.com/CSSEGISandData/COVID-19#covid-19-data-repository-by-the-center-for-systems-science-and-engineering-csse-at-johns-hopkins-university">
                            منابع معتبر جهانی
                        </a>
                    </b>
                    جمع آوری شده است.
                    <span style="float: left">
                        نسخه
                        <?= $version ?>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
    <script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
    <script src="https://www.chartjs.org/samples/latest/utils.js"></script>
    <script src="custom.js?ver=<?= filemtime('custom.js') ?>"></script>

    <script>
        $(document).ready(function() {
            $('.select2').select2();
        });
    </script>
</body>

</html>