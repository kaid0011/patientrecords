

 
  <div class="align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800 text-center">Patient Records</h1>
          </div>

  <div class="row"> <!-- Begin of Row -->

      <div class="col-xl-8 col-md-8 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col-auto">
             <div class="text-xs font-weight-bold text-success text-uppercase mb-1">PATIENT NAME</div>
             </div>
                    <div class="col mr-2">
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                        &nbsp&nbsp&nbsp&nbsp&nbsp
                        <?php echo $get_data->pr_lname ?>&nbsp&nbsp
                        <?php echo $get_data->pr_fname ?>&nbsp&nbsp
                        <?php echo $get_data->pr_mname ?>
                     
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

              <div class="col-xl-4 col-md-6 mb-4 ml-auto">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col-auto">
               <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Hospital Case No.</div>
             </div>
                       <div class="col mr-2">
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <?php echo "P-0".$get_data->pr_id ?>
                        
                      </div>
                    </div>   
                  </div>
                </div>
              </div>
            </div>


    </div><!-- End of Row -->


<div class="row"><!-- Begin Row -->
 
  <!-- First Column -->
            <div class="col-lg-4">

              <!-- Details -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-success">Details <?php echo "<a style='margin-left: 225px; text-decoration:none;' class='text-secondary' href='". base_url() ."admissioncontrol/patient_edit_option/". $get_data->pr_id ."'>" ?> 
                    <i class="fa fa-edit"></i></a> </h6>        
                </div>
               <div class="card-body"> <!--Card Body begin tag  -->

           <?php if($this->session->flashdata('patientrecordoption_updated')): ?>  
          <?php echo "<div style='#1cc88a' class='alert alert-success alert-dismissible text-center'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <h6><i class='con fa fa-check'></i></h6>".$this->session->flashdata('patientrecordoption_updated') ."</div>" ?>
           <?php endif; ?>
               
               <div style="margin-bottom:17px;">
                <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Address</div>   
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_addrs; ?></div>
               </div>

               <div style="margin-bottom:17px;">
                <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Age</div>   
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_age; ?></div>
         </div>
    
              <div style="margin-bottom:17px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Birthday</div> 
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_bdate; ?></div>
        </div>
               
               <div style="margin-bottom:17px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">BirthPlace</div>
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_bplace; ?></div>
         </div>

         <div style="margin-bottom:17px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Developmental Stage</div>
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_devstage; ?></div>
         </div>

         <div style="margin-bottom:17px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Gender</div>
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_gen; ?></div>
         </div>

         <div style="margin-bottom:18px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Tel/Mobile No.</div>
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_number; ?></div>
         </div>

          <div style="margin-bottom:18px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Religion</div>
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_religion; ?></div>
         </div>

         <div style="margin-bottom:18px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Nationality</div>
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_nationality; ?></div>
         </div>

         <div style="margin-bottom:18px;">
        <div class="row no-gutters">
                 <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Date Added</div>
                </div>
        <div class="h5 mb-1 font-weight-bold text-gray-800"><?php echo $get_data->pr_date; ?></div>
         </div>

                </div><!--Card body end tag -->
              </div>
      
       </div>



              <!-- Findings Box -->
            <div  id="findings" class="col-xl-8 col-lg-4">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                   <h6 class="m-0 font-weight-bold text-success">OPD Findings <?php echo "<a style='margin-left: 450px; text-decoration:none;' class='text-secondary' href='". base_url() ."admissioncontrol/add_findings/". $get_data->pr_id ."#findings'>" ?> <i class="fa 
                   fa-plus"></i></a></h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  
                   <div class="table">

                <table class="table table-bordered" id="dataTable" cellspacing="0">

                  <thead>
                    <tr>
                      <th class="text-center">History of Present Illness</th>
                      <th class="text-center">Date Concluded</th>
                    </tr>
                  </thead>
                  <tbody>
           
               <?php foreach($get_findings_data as $findings): ?>
                

                    <tr>


                <?php echo "<td class='text-center'><b><a style='color: green;' href='". base_url() ."admissioncontrol/findingsview/". $findings->findings_id ."'>". $findings->f_historypresentillness ."</b></td>" ?>
                <?php echo "<td class='text-center'>". $findings->f_date ."</td>" ?>     
  
                    </tr>      

                 <?php endforeach; ?>

                  </tbody>
                </table>
              </div>


                </div>
              </div>
                    <div id="admission" class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-success">Admission <?php echo "<a style='margin-left: 550px; text-decoration:none;' class='text-secondary' href='". base_url() ."admissioncontrol/patientdataview/". $get_data->pr_id ."#admission'>" ?> <i class="fa 
                   fa-arrow-left"></i></a></h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">

                <?php $this->load->view($admitting_view); ?>
                
                
                </div>
              </div>
            </div>
     
            </div>


  

 

</div><!-- End of Row -->



 <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>          

