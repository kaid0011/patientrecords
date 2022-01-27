<?php $attributes = array('id' => 'edit_option_form', 'class' => 'form-horizontal user'); ?>
<?php echo form_open('admissioncontrol/edit_option_process/' . $this->uri->segment(3) . '#edit_option', $attributes); ?>

   <div style="margin-bottom:17px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Permanent Address</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_address') == "" ? '' : 'is-invalid') ?>" type="text" name="e_address" value="<?php echo $get_data->pr_addrs; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_address'); ?></div>
   </div>

   <div style="margin-bottom:17px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Birthdate</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_bdate') == "" ? '' : 'is-invalid') ?>" type="date" name="e_bdate" value="<?php echo $get_data->pr_bdate; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_bdate'); ?></div>
   </div>

   <div style="margin-bottom:17px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Age</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_age') == "" ? '' : 'is-invalid') ?>" type="text" name="e_age" value="<?php echo $get_data->pr_age; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_age'); ?></div>
   </div>

   <div style="margin-bottom:17px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Place of Birth</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_bplace') == "" ? '' : 'is-invalid') ?>" type="text" name="e_bplace" value="<?php echo $get_data->pr_bplace; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_bplace'); ?></div>
   </div>

   <div style="margin-bottom:17px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Developmental Stage</div>
      </div>
      <select class="form-control" name="e_devstage">
         <option value=<?php echo $get_data->pr_devstage; ?><?php echo set_select('e_devstage', $get_data->pr_devstage); ?>><?php echo $get_data->pr_devstage; ?></option>
         <?php if (count($get_devstage)) : ?>
            <?php foreach ($get_devstage as $devstage) : ?>
               <option value=<?php echo $devstage->c_name; ?><?php echo set_select('e_devstage', $devstage->c_name); ?>><?php echo $devstage->c_name; ?></option>
            <?php endforeach; ?>
         <?php endif; ?>
      </select>
      <div class="text-danger text-center"><?php echo form_error('e_devstage'); ?></div>
   </div>

   <div style="margin-bottom:17px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Sex</div>
      </div>
      <select class="form-control" name="e_gen">
         <option value=<?php echo $get_data->pr_gen; ?><?php echo set_select('e_gen', $get_data->pr_gen); ?>><?php echo $get_data->pr_gen; ?></option>
         <?php if (count($get_gender)) : ?>
            <?php foreach ($get_gender as $gender) : ?>
               <option value=<?php echo $gender->g_name; ?><?php echo set_select('e_gen', $gender->g_name); ?>><?php echo $gender->g_name; ?></option>
            <?php endforeach; ?>
         <?php endif; ?>
      </select>
      <div class="text-danger text-center"><?php echo form_error('e_gen'); ?></div>
   </div>

   <div style="margin-bottom:18px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Nationality</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_nationality') == "" ? '' : 'is-invalid') ?>" type="text" name="e_nationality" value="<?php echo $get_data->pr_nationality; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_nationality'); ?></div>
   </div>

   <div style="margin-bottom:18px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Religion</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_religion') == "" ? '' : 'is-invalid') ?>" type="text" name="e_religion" value="<?php echo $get_data->pr_religion; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_religion'); ?></div>
   </div>

   <div style="margin-bottom:18px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Tel/Mobile No.</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_number') == "" ? '' : 'is-invalid') ?>" type="text" name="e_number" value="<?php echo $get_data->pr_number; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_number'); ?></div>
   </div>

   <div style="margin-bottom:18px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Height</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_height') == "" ? '' : 'is-invalid') ?>" type="text" name="e_height" value="<?php echo $get_data->pr_height; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_height'); ?></div>
   </div>

   <div style="margin-bottom:18px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Weight</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control  <?= (form_error('e_weight') == "" ? '' : 'is-invalid') ?>" type="text" name="e_weight" value="<?php echo $get_data->pr_weight; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_weight'); ?></div>
   </div>

   <div style="margin-bottom:17px;">
      <div class="row no-gutters">
         <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Date Added</div>
      </div>
      <div class="h5 mb-1 font-weight-bold text-gray-800"><input class="form-control <?= (form_error('e_date') == "" ? '' : 'is-invalid') ?>" type="date" name="e_date" value="<?php echo $get_data->pr_date; ?>"></div>
      <div class="text-danger text-center"><?php echo form_error('e_date'); ?></div>
   </div>

   <div class="d-flex justify-content-end">
      <button style="" type="submit" class="btn btn-success btn-icon-split" name="submit">
         <span class="icon text-white-100">
            <i class="fas fa-arrow-right"></i>
            Save
         </span>
      </button>
   </div>

<?php echo form_close(); ?>