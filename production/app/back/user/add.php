<?php
/*
 * php code///////////**********************************************************
 */
$title = "Add User - AdminCMS";
$menu_user = "active";
$menu_adduser = "active";

$db = new database();

if($_SESSION[_ss . 'levelaccess'] == "admin"){
$option_pw = array(
        "table" => "btview_user",
        "fields" => "officeID,officeNameTH",
        "condition" => "id='{$_SESSION[_ss . 'id']}'"
    );
$query_pw = $db->select($option_pw);
$rows_pw = $db->rows($query_pw);
$rs_pw = $db->get($query_pw);

$sql_group = "select * from bt_group where officeID = '".$_SESSION[_ss . 'officeID']."'";
$query_group = $db->query($sql_group);

} else if($_SESSION[_ss . 'levelaccess'] == "superadmin"){
$sql_office = "select * from bt_office";
$query_office = $db->query($sql_office);
$sql_group = "select * from bt_group";
$query_group = $db->query($sql_group);
}




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
<style type="text/css">
label.error {
    color: #b31818;
    font-family: rsuregular;
    font-size: 14px;
    letter-spacing: 0.5px;
    margin: 0;
}
.form-control.error {
    border-color: red;
}
</style>
<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            เพิ่มบุคลากร
            <small>Form</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">User</li>
            <li class="active">Add user system</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
				<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">กรุณากรอกข้อมูลผู้ใช้งานด้านล่าง</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                <!--<button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>-->
              </div>
            </div><!-- /.box-header -->
            <!-- form start -->
           <form role="form" id="registration-form" action="<?php echo $baseUrl; ?>/back/user/retADD" method="post" enctype="multipart/form-data">
            <div class="box-body">
              <div class="row">
                <div class="col-md-6">
                	<div class="form-group">
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-user"></i>
                      </div>
                      <input type="text" class="form-control" id="userid" placeholder="รหัสบัตรประชาชน" name="userID"  data-inputmask="'mask': ['9-9999-99999-99-9']" data-mask required>
                      <div id="pass-result"></div>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
                  <div class="form-group">
                    <select class="form-control select2" name="title" style="width: 100%;" required>
                      <option value="" selected="SELECTED" >-คำนำหน้า-</option>
                      <?php
                        $sql_title = "select * from bt_title";
                        $query_title = $db->query($sql_title);
                        while ($rs_title = $db->get($query_title)) {
                          echo '<option value="'.$rs_title['title_id'].'">'.$rs_title['title_nameTH'].'</option>';	
                        }
                      ?>
                    </select>
                  </div><!-- /.form-group -->
                  <div class="form-group">
                      <input type="text" class="form-control"  placeholder="ชื่อภาษาไทย" name="firstnameTH" required>
                  </div>
                  <div class="form-group">
                      <input type="text" class="form-control"   placeholder="นามสกุลภาษาไทย" name="lastnameTH" required>
                  </div>
                  <div class="form-group">
                      <input type="text" class="form-control"    placeholder="ชื่อภาษาอังกฤษ" name="firstnameEN" required>
                  </div>
                  <div class="form-group">
                      <input type="text" class="form-control"    placeholder="นามสกุลภาษาอังกฤษ" name="lastnameEN" required>
                  </div>
                 <!-- <div class="form-group">
                      <input type="text" class="form-control" id="username"  placeholder="Username" name="username" required>
                      <span id="user-result"></span>
                  </div>
                  <div class="form-group">
                      <input type="password" class="form-control" id="exampleInputPassword1 inputBT"   placeholder="Password" name="password" required>
                  </div>-->
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-phone"></i>
                      </div>
                      <input type="text" class="form-control"  name="telephone" placeholder="เบอร์โทรศัพท์ภายใน">
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-phone"></i>
                      </div>
                      <input type="text" class="form-control"  name="mobile" placeholder="เบอร์โทรศัพท์มือถือ" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
                  <div class="form-group">
                  <div class="input-group">
                  <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                      <input type="email" class="form-control" name="paccEmail"  placeholder="อีเมล์ภายใน (Example:xxx@pacc.go.th)">
                  </div>
                  </div>
                  <div class="form-group">
                  <div class="input-group"><div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                      <input type="email" class="form-control" name="personalEmail" placeholder="อีเมล์ส่วนตัว (Example:xxx@gmail.com)">
                  </div>
                  </div>
                  <div class="form-group">
                      <label for="exampleInputFile">รูปภาพโปรไฟล์</label>
                      <input type="file" name="image" id="exampleInputFile">
                      <p class="help-block">เลือกรูปจากคอมพิวเตอร์ของท่าน</p>
                  </div>
                  <div class="form-group">
                  <?php if($_SESSION[_ss . 'levelaccess'] == 'superadmin'){ ?>
                  <select class="form-control select2" id="formoffice" name="officeID" style="width: 100%;" required>
                      <option value="" >-สังกัด-</option>
                      <?php
                                while ($rs_office = $db->get($query_office)) {
											echo '<option value="'.$rs_office['officeID'].'">'.$rs_office['officeNameTH'].'</option>';	
                                }
                      ?>
                  </select>
         		</div>
                <div class="form-group">
                  <select class="form-control select2" id="formgroup"  name="groupID" style="width: 100%;" required> 
                      <option value="" selected="SELECTED">-กลุ่มงาน-</option>
                  </select>
                </div>
                
                
                 <?php } else if($_SESSION[_ss . 'levelaccess'] == 'admin'){ ?>
                  <div class="form-group">
                  	  <input type="text" class="form-control" disabled value="<?php echo $rs_pw['officeNameTH']; ?>">
                      <input type="hidden"  name="officeID" value="<?php echo $rs_pw['officeID']; ?>" class="form-control">
                  </div>
                  
                  <div class="form-group">
                      <select class="form-control select2"  name="groupID" style="width: 100%;" required> 
                          <option value="" selected="SELECTED">-กลุ่มงาน-</option> 
                          <?php
                                while ($rs_group = $db->get($query_group)) {
                                    echo '<option value="'.$rs_group['groupID'].'">'.$rs_group['groupNameTH'].'</option>';
                                }
                          ?>
                      </select>
                    </div>
                     
                  <?php } ?>
                  
                  
                
                  <div class="form-group">
                      <input type="text" class="form-control" placeholder="ตำแหน่ง" name="position" required>
                  </div>
                  <?php /*?><?php if($_SESSION[_ss . 'levelaccess'] == 'superadmin'){ ?>
                   <div class="form-group">
                    <select class="form-control select2"  name="userType" style="width: 100%;" required>
                      <option value="" selected="SELECTED">-ประเภทผู้ใช้งาน-</option>
                      <option value="user">ผู้ใช้งานทั่วไป</option>
                      <option value="admin">ผู้ดูเว็บไซต์</option>
                      <option value="superadmin">ผู้ดูแลระบบ</option>
                    </select>
                  </div><!-- /.form-group -->
                  <?php } ?><?php */?>
                </div>
                <!-- /.col -->
                
                
                <!-- /.col -->
              </div><!-- /.row -->
             </div><!-- /.box-body -->
               <div class="box-footer">
               	<div class="row">
               	 <div class="col-md-6">
               		<button class="btn btn-default" type="reset">รีเซ็ต</button>
                    <button type="submit" class="btn btn-primary pull-right">บันทึก</button>
                 </div>
               </div>
               </div>
          	</form>
            <div class="box-footer"></div>
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


	 <!-- Select2 -->
    <?php /*?><script src="<?php echo $baseUrl; ?>/assets/admin/plugins/select2/select2.full.min.js"></script><?php */?>
    <!-- InputMask -->
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- date-range-picker -->
    <script src="<?php echo $baseUrl; ?>/assets/admin/js/moment.min.js"></script>
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap time picker -->
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/timepicker/bootstrap-timepicker.min.js"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/iCheck/icheck.min.js"></script>
    <!-- FastClick -->
    <script src="<?php echo $baseUrl; ?>/assets/admin/plugins/fastclick/fastclick.min.js"></script>
    
    <script src="<?php echo $baseUrl; ?>/assets/admin/js/jquery.validate.js"></script> 
    
    
     <!-- AdminLTE App -->
	<script src="<?php echo $baseUrl; ?>/assets/admin/dist/js/app.min.js"></script>
    
  <script>
		$(document).ready(function() {
                $('#formoffice').change(function() {
                    $.ajax({
                        type: 'POST',
                        data: {officeID: $(this).val()},
                        url: '<?php echo $baseUrl; ?>/ajax/check_group.php',
                        success: function(data) {
                            $('#formgroup').html(data);
                        }
                    });
                    return false;
                });
                
                var x_timer;    
                $("#userid").keypress(function (e){
                  clearTimeout(x_timer);
                  var oldpassword = $(this).val();
                  x_timer = setTimeout(function(){
                    check_uid(oldpassword);
                  }, 1000);
                });
              
              function check_uid(oldpassword){
                var userid = $('#userid').val();
                $("#pass-result").html('<img src="<?php echo $baseUrl; ?>/assets/admin/img/ajax-loader.gif" />');
                $.post('<?php echo $baseUrl; ?>/ajax/check_uid.php', {'userid':userid}, function(data) {
                  $("#pass-result").html(data);
                });
              }



        });


		
  $(function () {
		$('#registration-form').validate();
        
		
		//Initialize Select2 Elements
        //$(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
              ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              },
              startDate: moment().subtract(29, 'days'),
              endDate: moment()
            },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });


        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });
      });
    </script>

  </body>
</html>