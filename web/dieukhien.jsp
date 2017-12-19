<%-- 
    Document   : dieukhien
    Created on : Dec 18, 2017, 11:22:16 AM
    Author     : DucHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Điều khiển</title>
        <%@include file="includes/admin_headtag.jsp" %>
    </head>
    <body class="cbp-spmenu-push">
        <div class="main-content">
            <%@include file="includes/admin_sidebar.jsp" %>
            <%@include file="includes/admin_menu.jsp" %>
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="four-grids">
                        <div class="col-md-3 four-grid">
                            <div class="four-grid1">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-user" aria-hidden="true"></i>
                                </div>
                                <div class="four-text">
                                    <h3>User</h3>
                                    <h4> 266  </h4>
                                    <p> <span class="inlinebar">1,3,4,5,3,5</span> </p>
                                </div>
                                <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                            </div>
                        </div>
                        <div class="col-md-3 four-grid">
                            <div class="four-grid2">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-align-justify " aria-hidden="true"></i>
                                </div>
                                <div class="four-text">
                                    <h3>Tasks</h3>
                                    <h4>15</h4>
                                    <p><span class="dynamicbar">Loading..</span></p>
                                </div>
                                <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                            </div>
                        </div>
                        <div class="col-md-3 four-grid">
                            <div class="four-grid3">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-bell" aria-hidden="true"></i>
                                </div>
                                <div class="four-text">
                                    <h3>Alerts</h3>
                                    <h4>9 New</h4>
                                    <p> <span class="inlinebar">1,3,4,5,3,5</span> </p>
                                </div>
                                <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                            </div>
                        </div>
                        <div class="col-md-3 four-grid">
                            <div class="four-grid4">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                </div>
                                <div class="four-text">
                                    <h3>Orders</h3>
                                    <h4>26</h4>
                                    <p><span class="dynamicbar">Loading..</span></p>
                                </div>
                                <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="weathers-grids">
                        <div class="col-md-6 weather-grid">
                            <div class="main-info">
                                <div class="weather-top">	
                                    <div class="weather-grids">
                                        <h3 class="fri">Friday </h3>
                                        <h3>Weather</h3>
                                    </div>
                                    <div class="weather-grids weather-mdl">
                                        <canvas id="clear-day" width="70" height="70"></canvas>
                                    </div>
                                    <div class="weather-grids">
                                        <h4>Max 27°</h4>
                                        <h2>21°C</h2>
                                        <h4>Min 10°</h4>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="weather-bottom">	
                                    <ul>
                                        <li class="bg"><h4>FRI</h4>
                                            <figure class="icons">
                                                <canvas id="clear-night" width="40" height="40"></canvas>
                                            </figure>
                                            <h5>27°C</h5>
                                            <h6>17°C</h6>
                                        </li>
                                        <li><h4>SAT</h4>
                                            <figure class="icons">
                                                <canvas id="partly-cloudy-day" width="40" height="40"></canvas>
                                            </figure>
                                            <h5>20°C</h5>
                                            <h6>15°C</h6>
                                        </li>
                                        <li class="bg"><h4>SUN</h4>
                                            <figure class="icons">
                                                <canvas id="cloudy" width="40" height="40"></canvas>
                                            </figure>
                                            <h5>18°C</h5>
                                            <h6>12°C</h6>
                                        </li>
                                        <li><h4>MON</h4>
                                            <figure class="icons">
                                                <canvas id="sleet" width="40" height="40"></canvas>
                                            </figure>
                                            <h5>17°C</h5>
                                            <h6>12°C</h6>
                                        </li>
                                        <li class="bg"><h4>TUE</h4>
                                            <figure class="icons">
                                                <canvas id="rain" width="40" height="40"></canvas>
                                            </figure>
                                            <h5>17°C</h5>
                                            <h6>10°C</h6>
                                        </li>
                                        <li><h4>WED</h4>
                                            <figure class="icons">
                                                <canvas id="snow" width="40" height="40"></canvas>
                                            </figure>
                                            <h5>24°C</h5>
                                            <h6>10°C</h6>
                                        </li>
                                        <li class="bg"><h4>THR</h4>
                                            <figure class="icons">
                                                <canvas id="wind" width="40" height="40"></canvas>
                                            </figure>
                                            <h5>25°C</h5>
                                            <h6>15°C</h6>
                                        </li>
                                    </ul>
                                    <div class="clearfix"> </div>
                                </div>
                                <script>
                                    var icons = new Skycons({"color": "#68b828"}),
                                            list = [
                                                "clear-day"
                                            ],i;
                                    for (i = list.length; i--; )
                                        icons.set(list[i], list[i]);
                                    icons.play();
                                </script>
                                <script>
                                    var icons = new Skycons({"color": "#f7aa47"}),
                                            list = [
                                                "clear-night", "partly-cloudy-day",
                                                "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                                                "fog"
                                            ],i;
                                    for (i = list.length; i--; )
                                        icons.set(list[i], list[i]);
                                    icons.play();
                                </script>
                            </div>
                        </div>
                        <div class="col-md-6 photoday-grid">
                            <div class="progress-top">
                                <h4>CPU Usage <span>(40.05 - 32 cpus)</span></h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (success)</span>
                                    </div>
                                </div>
                                <h4>Memory Usage <span>(32.2%) </span></h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                        <span class="sr-only">40% Complete</span>
                                    </div>
                                </div>
                                <h4>Disk Usage <span>(82.2%) </span></h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        <span class="sr-only">60% Complete (warning)</span>
                                    </div>
                                </div>
                                <h4>Databases <span>(63/100)</span> </h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        <span class="sr-only">20% Complete (warning)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-bottom">
                                <div class="cal-left">
                                    <div class="cal">
                                        <i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>
                                    </div>
                                    <div class="cal-text">
                                        <h4>Sat, Dec 13</h4>
                                    </div>
                                </div>
                                <div class="time-right">
                                    <div class="cal">
                                        <i class="glyphicon glyphicon-time" aria-hidden="true"></i>
                                    </div>
                                    <div class="cal-text">
                                        <h4>4:50AM PST</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <%@include file="includes/admin_footer.jsp" %>
        </div>
        <%@include file="includes/admin_footag.jsp" %>
    </body>
</html>
