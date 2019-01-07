<?php
	if (isset($_SESSION[_ss . 'msg_result'])) {
    $msg_result = $_SESSION[_ss . 'msg_result'];
    unset($_SESSION[_ss . 'msg_result']);
	} else {
		$msg_result = false;
	}
	
/*
 * php code///////////**********************************************************
 */
$title = 'จัดการผู้ใช้งาน';
$menu_user = "active";
$menu_userhome = "active";
$db = new database();
if($_SESSION[_ss . 'levelaccess'] == 'superadmin'){
	$sql_user = "select * from btview_user";
} else {
	$sql_user = "select * from btview_user where officeID = '".$_SESSION[_ss . 'officeID']."'";
}


$query_user = $db->query($sql_user);
$rows_user = $db->rows($query_user);

/*
 * php code///////////**********************************************************
 */

/*
 * header***********************************************************************
 */
require 'template/back/header.php';
/*
 * header***********************************************************************
 */
?>
<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
<?php if ($msg_result == "edit") { ?>
    <div id="output" class="callout callout-info animated fadeInUp">คุณได้ทำการแก้ไขเรียบร้อยแล้ว!</div>
<?php }  else if($msg_result == "delete"){ ?>
    <div id="output" class="callout callout-info animated fadeInUp">คุณได้ลบข้อมูลเรียบร้อยแล้ว!</div>
<?php }  else if($msg_result == "add"){ ?>
    <div id="output" class="callout callout-info animated fadeInUp">คุณได้เพิ่มข้อมูลเรียบร้อยแล้ว!</div>
<?php }  else if($msg_result == "changepass"){ ?>
    <div id="output" class="callout callout-info animated fadeInUp">คุณได้ทำการแก้ไข Password เรียบร้อยแล้ว!</div>
<?php }  else if($msg_result == "reactivate"){ ?>
    <div id="output" class="callout callout-info animated fadeInUp">คุณได้ทำการ Reactivate เรียบร้อยแล้ว!</div>
<?php } ?>
            
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
			จัดการบุคลากร
            <small>Users</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">User</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Your Page Content Here -->
        	<div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Table With Full Features</h3>
                  <div class="box-tools pull-right">
                	<a href="<?php echo $baseUrl;?>/back/user/add" class="btn btn-box-tool"><i class="fa fa-plus"></i> เพิ่มบุคลากร</a>
                	<!--<button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>-->
              	</div>
                </div><!-- /.box-header -->
                
                <div class="box-body" id="table-data">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>ชื่อ-นามสกุลภาษาไทย</th>
                        <th>กลุ่มงาน</th>
                        <th>ตำแหน่ง</th>
                        <th>สังกัด</th>
                        <th>การจัดการ</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                        while ($rs_user = $db->get($query_user)) {
                    ?>
                      <tr>
                        <td><?php echo $rs_user['firstnameTH']." ".$rs_user['lastnameTH']; ?></td>
                        <td><?php echo $rs_user['groupNameTH']; ?></td>
                        <td><?php echo $rs_user['position']; ?></td>
                        <td><?php echo $rs_user['officeShortname']; ?></td>
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
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">"Warning!</h4>
                                                </div>
                                                <div class="modal-body">
                                                  คลิกที่ "ยืนยัน" เพื่อทำการลบข้อมูล หรือยกเลิก
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-outline" data-dismiss="modal">ยกเลิก</button>
                                                    <a role="button" class="btn btn-outline" href="<?php echo $baseUrl; ?>/back/user/retDelete/<?php echo $rs_user['id']; ?>">ยืนยัน ฉันต้องการลบข้อมูลนี้</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        </td>
                      </tr>
                    <?php } ?>
                    </tbody>
                    <tfoot>
                      <tr>
                       	<th>ชื่อ-นามสกุลภาษาไทย</th>
                        <th>กลุ่มงาน</th>
                        <th>ตำแหน่ง</th>
                        <th>สังกัด</th>
                        <th>การจัดการ</th>
                      </tr>
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<?php
/*
 * footer***********************************************************************
 */
require 'template/back/footer.php';
/*
 * footer***********************************************************************
 */
?>

	<script src="<?php echo $baseUrl; ?>/assets/admin/js/jquery.dataTables.min.js"></script>
   <!-- AdminLTE App -->
	<script src="<?php echo $baseUrl; ?>/assets/admin/dist/js/app.min.js"></script>
    
 	<script>
      $(function () {
        $("#example1").DataTable();
      });
    </script>

<?php mysql_close(); ?>

  </body>
</html>