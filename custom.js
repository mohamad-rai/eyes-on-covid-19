function gregorian_to_jalali(gy, gm, gd) {
    var g_d_m, jy, jm, jd, gy2, days;
    g_d_m = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334];
    if (gy > 1600) {
        jy = 979;
        gy -= 1600;
    } else {
        jy = 0;
        gy -= 621;
    }
    gy2 = (gm > 2) ? (gy + 1) : gy;
    days = (365 * gy) + (parseInt((gy2 + 3) / 4)) - (parseInt((gy2 + 99) / 100)) + (parseInt((gy2 + 399) / 400)) - 80 + gd + g_d_m[gm - 1];
    jy += 33 * (parseInt(days / 12053));
    days %= 12053;
    jy += 4 * (parseInt(days / 1461));
    days %= 1461;
    if (days > 365) {
        jy += parseInt((days - 1) / 365);
        days = (days - 1) % 365;
    }
    jm = (days < 186) ? 1 + parseInt(days / 31) : 7 + parseInt((days - 186) / 30);
    jd = 1 + ((days < 186) ? (days % 31) : ((days - 186) % 30));
    return [jy, jm, jd];
}


function jalali_to_gregorian(jy, jm, jd) {
    var sal_a, gy, gm, gd, days, v;
    if (jy > 979) {
        gy = 1600;
        jy -= 979;
    } else {
        gy = 621;
    }
    days = (365 * jy) + ((parseInt(jy / 33)) * 8) + (parseInt(((jy % 33) + 3) / 4)) + 78 + jd + ((jm < 7) ? (jm - 1) * 31 : ((jm - 7) * 30) + 186);
    gy += 400 * (parseInt(days / 146097));
    days %= 146097;
    if (days > 36524) {
        gy += 100 * (parseInt(--days / 36524));
        days %= 36524;
        if (days >= 365) days++;
    }
    gy += 4 * (parseInt(days / 1461));
    days %= 1461;
    if (days > 365) {
        gy += parseInt((days - 1) / 365);
        days = (days - 1) % 365;
    }
    gd = days + 1;
    sal_a = [0, 31, ((gy % 4 === 0 && gy % 100 !== 0) || (gy % 400 === 0)) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    for (gm = 0; gm < 13; gm++) {
        v = sal_a[gm];
        if (gd <= v) break;
        gd -= v;
    }
    return [gy, gm, gd];
}

global();
$('#countries').change(function () {
    var to = new Date();
    var from = new Date();
    from.setDate(from.getDate() - 11);
    var tmonth = to.getMonth() > 10 ? to.getMonth() : "0" + to.getMonth();
    var tday = to.getDate() > 10 ? to.getDate() : "0" + to.getDate();
    var fmonth = from.getMonth() > 10 ? from.getMonth() : "0" + from.getMonth();
    var fday = from.getDate() > 10 ? from.getDate() : "0" + from.getDate();

    toDate = to.getFullYear() + '-' + tmonth + '-' + tday;
    fromDate = from.getFullYear() + '-' + fmonth + '-' + fday;
    var country = $('#countries :selected').val();

    var getDataSetting = {
        "url": "getData.php",
        "method": "POST",
        "timeout": 0,
        "data": {
            "country": country,
            "from": fromDate,
            "to": toDate
        }
    };
    $.ajax(getDataSetting).done(function (response) {

        goUp("confirmedCountry", response.data.TotalConfirmed);
        goUp("recoverCountry", response.data.TotalRecovered);
        goUp("deathCountry", response.data.TotalDeaths);

        var daytes = [];
        var confirmed = [];
        var death = [];
        var recovered = [];
        response.countries.forEach(item => {
            confirmed.push(item['Confirmed']);
            death.push(item['Deaths']);
            recovered.push(item['Recovered']);
            var respDate = item['Date'].split("T");
            respDate = respDate[0].split("-");
            var gregorianDate = gregorian_to_jalali(respDate[0], parseInt(respDate[1]), parseInt(respDate[2]));
            daytes.push(gregorianDate[0] + "-" + gregorianDate[1] + "-" + gregorianDate[2]);
        });
        config.data.labels.splice(0, config.data.labels.length);
        daytes.forEach(function (day) {
            config.data.labels.push(day);
        });
        var countryName = $('#countries :selected').html();
        $('#countryName').html(countryName);
        config.options.title.text = "نمودار رشد کرونا در " + countryName + " ( " + daytes.length + " رکورد دریافت شد )";
        config.data.datasets.splice(0, 3);
        window.myLine.update();
        addDataset("blue", "تعداد تایید شدگان", confirmed);
        addDataset("green", "تعداد بهبود یافتگان", recovered);
        addDataset("red", "تعداد جان باختگان", death);
    });
});
$('#countries').val("iran").trigger("change");
function commafy(num) {
    var str = num.toString().split('.');
    if (str[0].length >= 5) {
        str[0] = str[0].replace(/(\d)(?=(\d{3})+$)/g, '$1,');
    }
    if (str[1] && str[1].length >= 5) {
        str[1] = str[1].replace(/(\d{3})/g, '$1 ');
    }
    return str.join('.');
}
function addDataset(color, label, data) {
    var colorName = window.chartColors[color];
    var newDataset = {
        label: label,
        backgroundColor: colorName,
        borderColor: colorName,
        data: data,
        fill: false
    };

    config.data.datasets.push(newDataset);
    window.myLine.update();
}
function goUp(elementId, newValue) {
    var element = $('#' + elementId);
    var oldVal = parseInt(element.html().replace(/,/g, ''));
    var step;
    newValue = parseInt(newValue);
    if (newValue > oldVal)
        step = 300;
    else step = -300;
    var countdown = setInterval(function () {
        oldVal = oldVal + (step);
        element.html(commafy(oldVal));
        if(step == 300){
            if ((oldVal + step) >= newValue){
                element.html(commafy(newValue));
                clearInterval(countdown);
            } 
        }
        else if(step == -300){
            if ((oldVal + step) <= newValue){
                element.html(commafy(newValue));
                clearInterval(countdown);
            } 
        }
        
    }, 10);
}
function global() {
    config = {
        type: 'line',
        data: {
            labels: [],
            datasets: [{
                label: 'تعداد تایید شدگان',
                backgroundColor: window.chartColors.blue,
                borderColor: window.chartColors.blue,
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ],
                fill: false,
            }, {
                label: 'بهبود یافتگان',
                fill: false,
                backgroundColor: window.chartColors.green,
                borderColor: window.chartColors.green,
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ],
            }, {
                label: 'جان باختگان',
                fill: false,
                backgroundColor: window.chartColors.red,
                borderColor: window.chartColors.red,
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ],
            }]
        },
        options: {
            responsive: true,
            title: {
                display: true,
                text: 'نمودار رشد کرونا در '
            },
            tooltips: {
                mode: 'index',
                intersect: false,
            },
            hover: {
                mode: 'nearest',
                intersect: true
            },
            scales: {
                xAxes: [{
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: 'تاریخ'
                    }
                }],
                yAxes: [{
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: 'تعداد'
                    }
                }]
            }
        }
    };

    var ctx = document.getElementById('canvas').getContext('2d');
    window.myLine = new Chart(ctx, config);
}