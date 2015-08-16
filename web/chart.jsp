<%-- 
    Document   : chart
    Created on : Aug 15, 2015, 11:59:22 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>HOMER | WebApp admin theme</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.css" />
    <link rel="stylesheet" href="vendor/metisMenu/dist/metisMenu.css" />
    <link rel="stylesheet" href="vendor/animate.css/animate.css" />
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css" />

    <!-- App styles -->
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/helper.css" />
    <link rel="stylesheet" href="styles/style.css">

</head>
<body>

<!-- Simple splash screen-->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>Homer - Responsive Admin Theme</h1><p>Special AngularJS Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><img src="images/loading-bars.svg" width="64" height="64" /> </div> </div>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div style="width:30%">
    <div class="col-lg-3">
        <div class="hpanel stats">
            <div class="panel-body h-200">
                <div class="stats-title pull-left">
                    <h4>Today income</h4>
                </div>
                <div class="stats-icon pull-right">
                    <i class="pe-7s-cash fa-4x"></i>
                </div>
                <div class="clearfix"></div>
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-income-chart"></div>
                </div>
                <div class="m-t-xs">

                    <div class="row">
                        <div class="col-xs-5">
                            <small class="stat-label">Today</small>
                            <h4>$230,00 </h4>
                        </div>
                        <div class="col-xs-7">
                            <small class="stat-label">Last week</small>
                            <h4>$7 980,60 <i class="fa fa-level-up text-success"></i></h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                This is standard panel footer
            </div>
        </div>
    </div>
</div>

<!-- Vendor scripts -->
<script src="vendor/jquery/dist/jquery.min.js"></script>
<script src="vendor/jquery-ui/jquery-ui.min.js"></script>
<script src="vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendor/jquery-flot/jquery.flot.js"></script>
<script src="vendor/jquery-flot/jquery.flot.resize.js"></script>
<script src="vendor/jquery-flot/jquery.flot.pie.js"></script>
<script src="vendor/flot.curvedlines/curvedLines.js"></script>
<script src="vendor/jquery.flot.spline/index.js"></script>
<script src="vendor/metisMenu/dist/metisMenu.min.js"></script>
<script src="vendor/iCheck/icheck.min.js"></script>
<script src="vendor/peity/jquery.peity.min.js"></script>
<script src="vendor/sparkline/index.js"></script>

<!-- App scripts -->
<script src="scripts/homer.js"></script>
<script src="scripts/charts.js"></script>

<script>

    $(function () {

        /**
         * Flot charts line data and options
         */
        var chartIncomeData = [
            {
                label: "line",
                data: [ [1, 10], [2, 26], [3, 16], [4, 36], [5, 32], [6, 51] ]
            }
        ];

        var chartIncomeOptions = {
            series: {
                lines: {
                    show: true,
                    lineWidth: 0,
                    fill: true,
                    fillColor: "#64cc34"

                }
            },
            colors: ["#62cb31"],
            grid: {
                show: false
            },
            legend: {
                show: false
            }
        };

        $.plot($("#flot-income-chart"), chartIncomeData, chartIncomeOptions);


        /**
         * Bar Chart data
         */
        var flotChartData = [
            {
                label: "bar",
                data: [ [1, 12], [2, 14], [3, 18], [4, 24], [5, 32], [6, 22] ]
            }
        ];
        /**
         * Bar Chart Options for Analytics
         */
        var flotBarOptions = {
            series: {
                bars: {
                    show: true,
                    barWidth: 0.8,
                    fill: true,
                    fillColor: {
                        colors: [ { opacity: 1 }, { opacity: 1 } ]
                    },
                    lineWidth: 1
                }
            },
            xaxis: {
                tickDecimals: 0
            },
            colors: ["#62cb31"],
            grid: {
                show: false
            },
            legend: {
                show: false
            }
        };

        $.plot($("#flot-bar-chart"), flotChartData, flotBarOptions);


        /**
         * Pie Chart Data
         */
        var pieChartData = [
            { label: "Data 1", data: 16, color: "#62cb31", },
            { label: "Data 2", data: 6, color: "#A4E585", },
            { label: "Data 3", data: 22, color: "#368410", },
            { label: "Data 4", data: 32, color: "#8DE563", }
        ];

        /**
         * Pie Chart Options
         */
        var pieChartOptions = {
            series: {
                pie: {
                    show: true
                }
            },
            grid: {
                hoverable: true
            },
            tooltip: true,
            tooltipOpts: {
                content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
                shifts: {
                    x: 20,
                    y: 0
                },
                defaultTheme: false
            }
        };

        $.plot($("#flot-pie-chart"), pieChartData, pieChartOptions);


        /**
         * Line Chart Data and Options
         */

        var lineChartData = [
            {
                label: "line",
                data: [ [1, 24], [2, 15], [3, 29], [4, 34], [5, 30], [6, 40], [7, 23], [8, 27], [9, 40] ]
            }
        ];

        var lineChartOptions = {
            series: {
                lines: {
                    show: true,
                    lineWidth: 1,
                    fill: true,
                    fillColor: {
                        colors: [ { opacity: 1 }, { opacity: 1}
                        ]
                    }
                }
            },
            xaxis: {
                tickDecimals: 0
            },
            colors: ["#62cb31"],
            grid: {
                tickColor: "#e4e5e7",
                borderWidth: 1,
                borderColor: '#e4e5e7',
                color: '#6a6c6f'
            },
            legend: {
                show: false
            },
            tooltip: true,
            tooltipOpts: {
                content: "x: %x, y: %y"
            }
        };

        $.plot($("#flot-line-chart"), lineChartData, lineChartOptions);
    });

</script>

</body>
</html>