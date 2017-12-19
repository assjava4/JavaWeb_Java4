<%-- 
    Document   : admin_menu
    Created on : Dec 19, 2017, 10:52:26 AM
    Author     : DucHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- header-starts -->
<div class="sticky-header header-section ">
    <div class="header-left">
        <!--logo -->
        <div class="logo">
            <a href="index.html"><h1>TechNews</h1></a>
        </div>
        <!--//logo-->
        <div class="user-right">
            <div class="profile_details_left"><!--notifications of menu start -->
                <div class="profile_details">		
                    <ul>
                        <li class="dropdown profile_details_drop">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <div class="profile_img">	
                                    <span class="prfil-img"><img src="assets/images/a.png" alt=""> </span> 
                                    <div class="clearfix"></div>	
                                </div>	
                            </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
                                <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
                                <li> <a href="login.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="profile_medile"><!--notifications of menu start -->
        <ul class="nofitications-dropdown">
            <li class="dropdown head-dpdn">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
                <ul class="dropdown-menu anti-dropdown-menu">
                    <li>
                        <div class="notification_header">
                            <h3>You have 3 new messages</h3>
                        </div>
                    </li>
                    <li><a href="#">
                            <div class="user_img"><img src="assets/images/1.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet</p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>	
                        </a></li>
                    <li class="odd"><a href="#">
                            <div class="user_img"><img src="assets/images/2.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>	
                        </a></li>
                    <li><a href="#">
                            <div class="user_img"><img src="assets/images/3.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>	
                        </a></li>
                    <li>
                        <div class="notification_bottom">
                            <a href="#">See all messages</a>
                        </div> 
                    </li>
                </ul>
            </li>
            <li class="dropdown head-dpdn">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                <ul class="dropdown-menu anti-dropdown-menu">
                    <li>
                        <div class="notification_header">
                            <h3>You have 3 new notification</h3>
                        </div>
                    </li>
                    <li><a href="#">
                            <div class="user_img"><img src="assets/images/2.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet</p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>	
                        </a></li>
                    <li class="odd"><a href="#">
                            <div class="user_img"><img src="assets/images/1.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>	
                        </a></li>
                    <li><a href="#">
                            <div class="user_img"><img src="assets/images/3.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>	
                        </a></li>
                    <li>
                        <div class="notification_bottom">
                            <a href="#">See all notifications</a>
                        </div> 
                    </li>
                </ul>
            </li>	
        </ul>
    </div>
    <div class="header-right">
        <!--toggle button start-->
        <div class="search-box">
            <form class="input">
                <input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31">
            </form>
        </div>
        <button id="showLeftPush"><i class="fa fa-bars"></i></button>
        <div class="clearfix"> </div>
        <!--toggle button end-->
    </div>
    <div class="clearfix"> </div>	
</div>
<!-- //header-ends -->
