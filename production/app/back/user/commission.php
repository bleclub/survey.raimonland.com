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
$title = 'จัดการคณะกรรมการ';
$menu_user = "active";
$menu_commission = "active";
$db = new database();
if($_SESSION[_ss . 'levelaccess'] != 'superadmin') { header('Location: '.$baseUrl.'/back/home'); } 

$sql_user = "select * from btview_user where groupNameEN='Public sector Anti-Corruption Commission' order by managementOrder";
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
            <?php } ?>
            
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
			จัดการคณะกรรมการ
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
                      	<th>ลำดับ</th>
                        <th>ชื่อ-นามสกุลภาษาไทย</th>
                        <th>กลุ่มงาน</th>
                        <th>ตำแหน่ง</th>
                        <th>สังกัด</th>
                        <th>การจัดการ</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
						$number = 0;
                        while ($rs_user = $db->get($query_user)) {
                    ?>
                      <tr data-itemid="<?php echo $rs_user['id']; ?>">
                      	<td><i class="glyphicon glyphicon-align-justify"></i>&nbsp;&nbsp;<?php echo $number = $number + 1; ?></td>
                        <td><?php echo $rs_user['firstnameTH']." ".$rs_user['lastnameTH']; ?></td>
                        <td><?php echo $rs_user['groupNameTH']; ?></td>
                        <td><?php echo $rs_user['position']; ?></td>
                        <td><?php echo $rs_user['officeShortname']; ?></td>
                        <td>
                        	<a href="<?php echo $baseUrl; ?>/back/user/edit/<?php echo $rs_user['id']; ?>"><i class="fa fa-edit fa-1x"></i></a>
                            <a class="confirm" title="" href="#" data-toggle="modal" data-target="#deleteModal<?php echo $rs_user['id'];?>"><i class="fa fa-trash fa-1x"></i></a>
                            
                            
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
                       	<th>ลำดับ</th>
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
	<script src="//code.jquery.com/jquery-1.10.1.js" type="text/javascript"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js" type="text/javascript"></script>
	<script src="<?php echo $baseUrl; ?>/assets/admin/js/jquery.dataTables.min.js"></script>
   <!-- AdminLTE App -->
	<script src="<?php echo $baseUrl; ?>/assets/admin/dist/js/app.min.js"></script>
    <script type="text/javascript">
		    //<![CDATA[
			$(window).load(function(){
				
				$("#example1 tbody").sortable({
					update: function () {
					var data = $('#example1 tbody tr').map(function() { return $(this).data("itemid"); }).get();
					var user_id = '<?php echo $_SESSION[_ss . 'id']; ?>';
					var user_name = '<?php echo $_SESSION[_ss . 'username']; ?>';
					$.post("<?php echo $baseUrl; ?>/ajax/sort_management.php", {'ids[]': data , 'user_id': user_id , 'user_name': user_name});
					}
				}).disableSelection();
			
			});//]]> 

	</script>
 	<script>
      /*$(function () {
        $("#example1").DataTable();
      });*/
    </script>

<?php mysql_close(); ?>

  </body>
</html>