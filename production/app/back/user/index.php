<?php

	if (isset($_SESSION[_ss . 'msg_result'])) {
    $msg_result = $_SESSION[_ss . 'msg_result'];
    unset($_SESSION[_ss . 'msg_result']);
	} else {
		$msg_result = false;
  }
   
  $menu_user = 'active';
  $title = 'Welcome to Raimon Land eSurvey';
  $description = 'Welcome to Raimon Land eSurvey'; 
  require 'template/back/header.php'; 

  $db = new database();

  if($_SESSION[_ss . 'levelaccess'] == 'superadmin'){
    $sql_user = "select * from btview_user";
  } else {
    $sql_user = "select * from btview_user where officeID = '".$_SESSION[_ss . 'officeID']."'";
  }

  $query_user = $db->query($sql_user);
  $rows_user = $db->rows($query_user);
?>

<link rel="stylesheet" href="<?php echo $baseUrl; ?>/assets/css/jquery.dataTables.min.css">
<style type="text/css">
  .dataTables_wrapper{
    padding: 20px 40px;
  }
  table.dataTable tbody th, table.dataTable tbody td{
    padding: .75rem;
  }
  table.dataTable.no-footer {
    border-bottom: none;
  }
</style>

</head>
  <body>

<?php  require 'template/back/menu.php'; ?>
<!-- Start Main Content -->
<div class="main-content-container container-fluid px-4">
  <!-- Page Header -->
  <div class="page-header row no-gutters py-4">
    <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
      <span class="text-uppercase page-subtitle">Users</span>
      <h3 class="page-title">Users Management</h3>
    </div>
  </div>
  <!-- End Page Header -->

  <!-- Default Light Table -->
  <div class="row">
    <div class="col">
      <div class="card card-small mb-4">
        <div class="card-header border-bottom">
          <div class="pull-left"><h6 class="m-0">Active Users</h6></div>
          <div class="pull-right">
              <a href="#" data-href="{{ url('user/form/0') }}" data-modal-name="ajaxModal" role="button" class="btn btn-dark btn-create">
                  Add New User
              </a>
          </div>
        </div>
        <div class="card-body p-0 pb-3 text-center">
          <table class="table mb-0" id="example1">
            <thead class="bg-light">
              <tr>
                <!-- <th scope="col" class="border-0">#</th> -->
                <th scope="col" class="border-0">Username</th>
                <th scope="col" class="border-0">Fullname</th>
                <th scope="col" class="border-0">Email</th>
                <th scope="col" class="border-0">Position</th>
                <th scope="col" class="border-0">Department</th>
                <th scope="col" class="border-0">User type</th>
                <th scope="col" class="border-0">Management</th>
              </tr>
            </thead>
            <tbody>    
              <?php
                  while ($rs_user = $db->get($query_user)) {
              ?>
                <tr>
                  <td><?php echo $rs_user['username']; ?></td>
                  <td><?php echo $rs_user['firstnameEN']." ".$rs_user['lastnameEN']; ?></td>
                  <td><?php echo $rs_user['paccEmail']; ?></td>
                  <td><?php echo $rs_user['position']; ?></td>
                  <td><?php echo $rs_user['officeShortname']; ?></td>
                  <td><?php echo $rs_user['userType']; ?></td>
                  <td>

                      <a href="<?php echo $baseUrl; ?>/back/user/edit/<?php echo $rs_user['id']; ?>"><i class="fa fa-edit fa-1x"></i></a>
                      <?php if($rs_user['status'] == 'disable') { ?>
                        <a href="<?php echo $baseUrl; ?>/back/user/reActivate/<?php echo $rs_user['id']; ?>" title="Reactivate"><i class="fa fa-ban fa-1x"></i></a>
                      <?php } else { ?>
                        <a class="confirm" title="" href="#" data-toggle="modal" data-target="#deleteModal<?php echo $rs_user['id'];?>"><i class="fa fa-trash fa-1x"></i></a>
                      <?php } ?>
              
                          <!-- Modal -->
                          <div class="modal modal-warning fade" id="deleteModal<?php echo $rs_user['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                         <h4 class="modal-title" id="myModalLabel">"Warning!</h4>
                                         <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                      </div>
                                      <div class="modal-body">
                                        <h5>Click "Confirm" to delete or "Cancel"</h5>
                                      </div>
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-outline" data-dismiss="modal">Cancel</button>
                                        <a role="button" class="btn btn-sm btn-danger" href="<?php echo $baseUrl; ?>/back/user/retDelete/<?php echo $rs_user['id']; ?>">Confirm</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                  </td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- End Default Light Table -->
  
</div>
<!-- End Main Content -->

  <?php require 'template/back/footer.php'; ?>
  <script src="<?php echo $baseUrl; ?>/assets/js/jquery.dataTables.min.js"></script>

  <script>
      $(function () {
        $("#example1").DataTable();
      });
    </script>

  <?php mysql_close(); ?>


  </body>
</html>
