<div class="container-fluid">
        <div class="row">
            <!-- Main Sidebar -->
            <aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
            <div class="main-navbar">
                <nav class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
                <a class="navbar-brand w-100 mr-0" href="#" style="line-height: 25px;">
                    <div class="d-table m-auto">
                    <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;" src="<?php echo $baseUrl.'/assets/img/favicon.png'; ?>" alt="RAIMON LAND">
                    <span class="d-none d-md-inline ml-1">Raimon Land Survey</span>
                    </div>
                </a>
                <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none">
                    <i class="material-icons">&#xE5C4;</i>
                </a>
                </nav>
            </div>
            <form action="#" class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
                <div class="input-group input-group-seamless ml-3">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                    <i class="fas fa-search"></i>
                    </div>
                </div>
                <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="Search"> </div>
            </form>
            <div class="nav-wrapper">
                <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link <?php echo @$menu_home; ?>" href="#">
                    <i class="material-icons">edit</i>
                    <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <i class="material-icons">note_add</i>
                    <span>Create New Servey</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <i class="material-icons">note_add</i>
                    <span>Tack a Servey</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <i class="material-icons">note_add</i>
                    <span>User Management</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="#">
                    <i class="material-icons">person</i>
                    <span>User Profile</span>
                    </a>
                </li>
                </ul>
            </div>
            </aside>
            <!-- End Main Sidebar -->

            <main class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
                <div class="main-navbar sticky-top bg-white">
                    <!-- Main Navbar -->
                        <nav class="navbar align-items-stretch navbar-light flex-md-nowrap p-0">
                        <form action="#" class="main-navbar__search w-100 d-none d-md-flex d-lg-flex">
                            <div class="input-group input-group-seamless ml-3">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                <i class="fas fa-search"></i>
                                </div>
                            </div>
                            <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="Search"> </div>
                        </form>
                        <ul class="navbar-nav border-left flex-row ">
                            <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-nowrap px-3" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle mr-2" src="<?php echo $baseUrl.'/upload/profile/'.$_SESSION[_ss . 'profilePic']; ?>" alt="User Avatar">
                                <span class="d-none d-md-inline-block"><?php echo $_SESSION[_ss . 'fullname']; ?></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-small">
                                <a class="dropdown-item" href="#">
                                <i class="material-icons">&#xE7FD;</i> Profile</a>
                                <!-- <a class="dropdown-item" href="components-blog-posts.html">
                                <i class="material-icons">vertical_split</i> Blog Posts</a> -->
                                <a class="dropdown-item" href="#">
                                <i class="material-icons">note_add</i> Create New Survey</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-danger" href="<?php echo $baseUrl.'/back/user/logout'; ?>">
                                <i class="material-icons text-danger">&#xE879;</i> Logout </a>
                            </div>
                            </li>
                        </ul>
                        <nav class="nav">
                            <a href="#" class="nav-link nav-link-icon toggle-sidebar d-md-inline d-lg-none text-center border-left" data-toggle="collapse" data-target=".header-navbar" aria-expanded="false" aria-controls="header-navbar">
                            <i class="material-icons">&#xE5D2;</i>
                            </a>
                        </nav>
                        </nav>
                    </div>
                    <!-- / .main-navbar -->