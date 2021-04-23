<!DOCTYPE html>
<?php 
  $infoweb=$this->db->get_where('info', array('id_info' => '1'))->row();
  $tema=$this->db->get_where('tema', array('id_tema' => '1'))->row();
?>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>AdminLTE 3 | Top Navigation</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?php  echo (base_url());?>assets/backend/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php  echo (base_url());?>assets/backend/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="<?php  echo (base_url());?>assets/backend/plugins/toastr/toastr.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script src="<?php  echo (base_url());?>assets/backend/plugins/jquery/jquery.min.js"></script>
  <script src="<?php  echo (base_url());?>assets/backend/plugins/toastr/toastr.min.js"></script>

</head>
<body class="hold-transition layout-top-nav">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand-md navbar-dark navbar-orange">
    <div class="container">
      <a href="<?php echo site_url('web') ?>" class="navbar-brand">
        <img src="<?php echo base_url(); ?>assets/img/<?= $infoweb->logo_web?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light"><?= $infoweb->nama_web?></span>
      </a>
      
      <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="<?php echo site_url('web') ?>" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="<?php echo site_url('login') ?>" class="nav-link">Login</a>
          </li>
        </ul>

        <!-- SEARCH FORM -->
        <!-- <form class="form-inline ml-0 ml-md-3">
          <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
              <button class="btn btn-navbar" type="submit">
                <i class="fas fa-search"></i>
              </button>
            </div>
          </div>
        </form> -->
      </div>

      <!-- Right navbar links -->
      <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link" href="<?php  echo (base_url());?>web/chart">
            <i class="fas fa-shopping-cart"></i>
            <span id="count" style="<?php $count=count($this->cart->contents()); if ($count<0) {?>display: none !important;<?php }?>" class="badge badge-warning navbar-badge"><?php echo($count>0) ? $count : 0 ;?></span>
          </a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- /.navbar -->

  <!-- Content Wrapper. Contains page content -->
 <?php
      echo $contents;
  ?>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <!-- <aside class="control-sidebar control-sidebar-dark">
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside> -->
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; <?= date("Y")?> <a href="<?php echo site_url('dashboard') ?>"><?= $infoweb->nama_web?></a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- Bootstrap 4 -->
<script src="<?php  echo (base_url());?>assets/backend/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php  echo (base_url());?>assets/backend/dist/js/adminlte.min.js"></script>
</body>
</html>
