<!-- Begin Page Content -->
        <div class="container-fluid">

        	<?php echo form_open()?>

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


          <div class="row d-flex justify-content-center">
			<div class="col-md-12 col-md-offset-2" >
				<?php 	$this->load->model(array('Gejala_model'));
                    $listGejala = $this->Gejala_model->get_gejalaa_by_id(); ?>
				<?php foreach($listGejala-> result() as $value2):?>
					<input type="checkbox" name="gejala[]" value="<?php echo $value2->id?>" > <?php echo $value2->kode_gejala." - ".$value2->nama_gejala?> <br>
				<br>
				<?php endforeach; ?>
			
			</div>
		</div>
		<br>
		<div class="row d-flex justify-content-center">
			<div class="col-md-12" >
				<button id="btn-save" type="submit" class="btn btn-sm btn-primary btn-flat pull-right">Submit</button>
			</div>
		</div>
          	
          <?php echo form_close()?>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->