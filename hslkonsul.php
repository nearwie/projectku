
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Hasil Analisis</h1>
          <div class="box-header with-border">
              <h6 class="box-title">Gejala yang dipilih</h6>
          </div><!-- /.box-header -->

          <div class="box-body table-responsive">
            <table id="tbl-list" class="table table-bordered">
                <tr>
                    <th width="50px" style="background: #67CDFF; color: white">No</th>
                    <th style="background: #67CDFF; color: white">Gejala</th>
                </tr>
                <tr>
                    <?php $i = 1; foreach($listGejala->result() as $value){?>
                        <tr>
                            <td width="30px"><?php echo $i++?></td>
                            <td><?php echo $value->kode_gejala." - ".$value->nama_gejala?></td>
                        </tr>
                    <?php }?>
                </tr>
            </table>
        </div><!--box body-->


        <div class="box box-success">
          <div class="box-header with-border">
              <h6 class="box-title">Hasil Diagnosa</h6>
          </div><!-- /.box-header -->
          <div class="box-body">
              <table id="tbl-list" class="table table-bordered">
                  <tr>
                      <th width="50px" style="background: #67CDFF; color: white">No</th>
                      <th style="background: #67CDFF; color: white">Penyakit</th>
                      <th style="background: #67CDFF; color: white">Tingkat Kepercayaan</th>
                  </tr>
                  <tr>
                      <?php $i = 1; foreach($listKerusakan as $value){?>
                          <tr>
                              <td width="30px"><?php echo $i++?></td>
                              <td><?php echo $value['kode_kerusakan']." - ".$value['nama_kerusakan']?></td>
                              <td><?php echo $value['kepercayaan']?> %</td>
                          </tr>
                      <?php }?>
                  </tr>
              </table>
          </div><!--box body-->
      </div><!--box-->

      <div class="box box-success">
        <div class="box-header with-border">
            <h6 class="box-title">Kesimpulan</h6>
        </div><!-- /.box-header -->
        <div class="box-body">
            <?php if(sizeof($listKerusakan)>0) { ?>
                <p>
                    Berdasarkan gejalanya, Peralatan Ground Satellite Receiver di prediksi mengalami kerusakan/masalah <b><?php echo $listKerusakan[0]['nama_kerusakan'];?></b> dengan tingkat kepercayaan <b><?php echo $listKerusakan[0]['kepercayaan'];?> %</b><br/>
                    <?php echo $listKerusakan[0]['keterangan'];?>. <p style="font-style: bold; color: red; font-size: 13px;">*Hasil diagnosa ini membutuhkan pemeriksaan lebih lanjut dengan melakukan perbaikan untuk mengembalikan fungsinya.</p>
                </p>
            <?php }else{?>
                <p>
                    Penyakit tidak dapat diprediksi karena tingkat kepercayaan gejala terlalu rendah
                </p>
            <?php }?>
        </div><!--box body-->
        <div class="box-footer clearfix">
            <a class="btn btn-sm btn-flat pull-right" style="background: #67CDFF; color: white;" href="<?php echo site_url()?>/welcome/diagnosa">Deteksi Ulang</a>
            <button class="btn btn-sm btn-flat pull-right" style="background: #67CDFF; color: white; margin-right:10px;" onclick>Cetak</button> 
           
        </div>
    </div><!--box-->



        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
