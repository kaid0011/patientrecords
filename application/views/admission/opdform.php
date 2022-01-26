<?php if ($this->session->flashdata('patientrecord_success')) : ?>

  <?php echo "<div style='#1cc88a' class='alert alert-success alert-dismissible text-center'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <h6><i class='con fa fa-check'></i></h6>" . $this->session->flashdata('patientrecord_success') . "</div>" ?>

<?php endif; ?>

<?php if ($this->session->flashdata('patientrecord_failed')) : ?>

  <?php echo "<div style='bg-color:#e74a3b;' class='alert alert-success alert-dismissible text-center'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                " . $this->session->flashdata('patientrecord_failed') . "<h6><i class='con fa fa-check'></i></h6></div>" ?>

<?php endif; ?>


<div class="container-fluid">

  <h1 class="h3 mb-2 text-gray-800 text-center">Add Patient Record</h1>

  <hr class="mt-3 mb-3">

  <div class="row">
    <h6 class="text-center mb-3"><b>PERSONAL INFORMATION</b></h6>
  </div>

  <?php $attributes = array('id' => 'opd_form', 'class' => 'form-horizontal user'); ?>
  <?php echo form_open('admissioncontrol/opd_process', $attributes); ?>

  <div class="row">

    <div class="col-sm-12 ">

      <div class="row">

      </div>

      <div class="row mb-3">

        <div style="" class="col-sm-4">
          <?php echo form_label('Last Name'); ?>
          <input type="text" class="form-control  <?= (form_error('lname') == "" ? '' : 'is-invalid') ?>" name="lname" placeholder="Last Name" value="<?php echo set_value('lname') ?>">
          <div class="text-danger text-center"><?php echo form_error('lname'); ?></div>
        </div>

        <div class="col-sm-4">
          <?php echo form_label('First Name'); ?>
          <input type="text" style="" class="form-control  <?= (form_error('fname') == "" ? '' : 'is-invalid') ?>" name="fname" placeholder="First Name" value="<?php echo set_value('fname') ?>">
          <div class="text-danger text-center"><?php echo form_error('fname'); ?></div>
        </div>

        <div class="col-sm-4">
          <?php echo form_label('Middle Name'); ?>
          <input type="text" style="" class="form-control  <?= (form_error('middlen') == "" ? '' : 'is-invalid') ?>" name="middlen" placeholder="Middle Name" value="<?php echo set_value('middlen') ?>">
          <div class="text-danger text-center"><?php echo form_error('middlen'); ?></div>
        </div>

      </div>

      <div class="row mb-3">

        <div style="" class="col-sm-12">
          <?php echo form_label('Permanent Address'); ?>
          <input type="text" class="form-control  <?= (form_error('address') == "" ? '' : 'is-invalid') ?>" name="address" placeholder="Permanent Address" value="<?php echo set_value('address') ?>">
          <div class="text-danger text-center"><?php echo form_error('address'); ?></div>
        </div>

      </div>

      <div class="row mb-3">

        <div style="" class="col-sm-2">
          <?php echo form_label('Birthdate'); ?>
          <input type="date" class="form-control  <?= (form_error('datebirth') == "" ? '' : 'is-invalid') ?>" name="datebirth" value="<?php echo set_value('datebirth') ?>">
          <div class="text-danger text-center"><?php echo form_error('datebirth'); ?></div>
        </div>

        <div style="" class="col-sm-2">
          <?php echo form_label('Age'); ?>
          <input type="text" class="form-control  <?= (form_error('age') == "" ? '' : 'is-invalid') ?>" name="age" placeholder="Age" value="<?php echo set_value('age') ?>">
          <div class="text-danger text-center"><?php echo form_error('age'); ?></div>
        </div>

        <div style="" class="col-sm-3">
          <?php echo form_label('Place of Birth'); ?>
          <input type="text" class="form-control  <?= (form_error('birthplace') == "" ? '' : 'is-invalid') ?>" placeholder="Place of Birth" name="birthplace" value="<?php echo set_value('birthplace') ?>">
          <div class="text-danger text-center"><?php echo form_error('birthplace'); ?></div>
        </div>

        <div style="" class="col-sm-3">
          <?php echo form_label('Developmental Stage'); ?>
          <select class="form-control" name="devstage">
            <option value="" hidden disabled selected>Select Developmental Stage</option>
            <?php if (count($get_devstage)) : ?>
              <?php foreach ($get_devstage as $devstage) : ?>
                <option value=<?php echo $devstage->c_name; ?><?php echo set_select('devstage', $devstage->c_name); ?>><?php echo $devstage->c_name; ?></option>
              <?php endforeach; ?>
            <?php endif; ?>
          </select>
          <div class="text-danger text-center"><?php echo form_error('devstage'); ?></div>
        </div>

        <div style="" class="col-sm-2">
          <?php echo form_label('Sex'); ?>
          <select name="gen" class="form-control " name="gen">
            <option value="" hidden disabled selected>Select Sex</option>
            <?php if (count($get_gender)) : ?>
              <?php foreach ($get_gender as $gender) : ?>
                <option value=<?php echo $gender->g_name; ?><?php echo set_select('gen', $gender->g_name); ?>><?php echo $gender->g_name; ?></option>
              <?php endforeach; ?>
            <?php endif; ?>
          </select>
          <div class="text-danger text-center"><?php echo form_error('gen'); ?></div>
        </div>

      </div>

      <div class="row mb-3">

        <div style="" class="col-sm-4">
          <?php echo form_label('Nationality'); ?>
          <input type="text" class="form-control <?= (form_error('nationality') == "" ? '' : 'is-invalid') ?>" placeholder="Nationality" name="nationality" value="<?php echo set_value('nationality') ?>">
          <div class="text-danger text-center"><?php echo form_error('nationality'); ?></div>
        </div>

        <div style="" class="col-sm-4">
          <?php echo form_label('Religion'); ?>
          <input type="text" class="form-control  <?= (form_error('religion') == "" ? '' : 'is-invalid') ?>" placeholder="Religion" name="religion" value="<?php echo set_value('religion') ?>">
          <div class="text-danger text-center"><?php echo form_error('religion'); ?></div>
        </div>

        <div style="" class="col-sm-2">
          <?php echo form_label('Height'); ?>
          <input type="text" class="form-control <?= (form_error('height') == "" ? '' : 'is-invalid') ?>" placeholder="Height" name="height" value="<?php echo set_value('height') ?>">
          <div class="text-danger text-center"><?php echo form_error('height'); ?></div>
        </div>

        <div style="" class="col-sm-2">
          <?php echo form_label('Weight'); ?>
          <input type="text" class="form-control <?= (form_error('weight') == "" ? '' : 'is-invalid') ?>" placeholder="Weight" name="weight" value="<?php echo set_value('weight') ?>">
          <div class="text-danger text-center"><?php echo form_error('weight'); ?></div>
        </div>

      </div>

      <hr class="mt-5 mb-3">

      <div class="row ">
        <h6 class="text-center mb-3"><b>OTHER DETAILS</b></h6>
      </div>

      <div class="row mb-3">

        <div style="" class="col-sm-4">
          <?php echo form_label('Parent or Guradian Name'); ?>
          <input type="text" class="form-control  <?= (form_error('grdnname') == "" ? '' : 'is-invalid') ?>" placeholder="Parent or Guradian Name" name="grdnname" value="<?php echo set_value('grdnname') ?>">
          <div class="text-danger text-center"><?php echo form_error('grdnname'); ?></div>
        </div>

        <div style="" class="col-sm-2">
          <?php echo form_label('Contact Number'); ?>
          <input type="number" class="form-control  <?= (form_error('number') == "" ? '' : 'is-invalid') ?>" placeholder="Contact Number" name="number" value="<?php echo set_value('number') ?>">
          <div class="text-danger text-center"><?php echo form_error('number'); ?></div>
        </div>

        <div style="" class="col-sm-3">
          <?php echo form_label('E-mail Address'); ?>
          <input type="email" class="form-control  <?= (form_error('grdnemail') == "" ? '' : 'is-invalid') ?>" placeholder="E-mail Address" name="grdnemail" value="<?php echo set_value('grdnemail') ?>">
          <div class="text-danger text-center"><?php echo form_error('grdnemail'); ?></div>
        </div>

        <div style="" class="col-sm-3">
          <?php echo form_label('Relationship to Patient'); ?>
          <input type="text" class="form-control  <?= (form_error('grdnrelation') == "" ? '' : 'is-invalid') ?>" placeholder="Relationship to Patient" name="grdnrelation" value="<?php echo set_value('grdnrelation') ?>">
          <div class="text-danger text-center"><?php echo form_error('grdnrelation'); ?></div>
        </div>

      </div>

      <hr class="mt-5 mb-3">

      <div class="row">
        <h6 class="text-center mb-3"><b>IF PATIENT IS A STUDENT, PLEASE PROVIDE SCHOOL DETAILS</b></h6>
      </div>

      <div class="row mb-3">

        <div style="" class="col-sm-5">
          <?php echo form_label('School Name'); ?>
          <input type="text" class="form-control  <?= (form_error('schname') == "" ? '' : 'is-invalid') ?>" placeholder="School Name" name="schname" value="<?php echo set_value('schname') ?>">
          <div class="text-danger text-center"><?php echo form_error('schname'); ?></div>
        </div>

        <div style="" class="col-sm-7">
          <?php echo form_label('School Address'); ?>
          <input type="text" class="form-control  <?= (form_error('schaddress') == "" ? '' : 'is-invalid') ?>" placeholder="School Address" name="schaddress" value="<?php echo set_value('schaddress') ?>">
          <div class="text-danger text-center"><?php echo form_error('schaddress'); ?></div>
        </div>

      </div>

      <!-- <div class="row mb-3">
    <div style="" class="col-sm-9"></div> -->
      <div class="d-flex justify-content-end">
        <button style="" id="submitbtn" type="submit" class="btn btn-success btn-icon-split mt-5" name="submit">
          <span class="icon text-white-100">
            <i class="fas fa-arrow-right"></i>
            Add Record
          </span>
        </button>
      </div>
      <!-- </div> -->

    </div>

    <br><br>

  </div>

</div>

<?php echo form_close(); ?>


<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>