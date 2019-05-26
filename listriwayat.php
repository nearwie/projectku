
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel tile fixed_height_350">
              <h3>Daftar Riwayat Diagnosa</h3>

              <br>
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Nama User</th>
                    <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Nama Gejala</th>
                    <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Tanggal</th>
                    <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no= 1; foreach ($dataRiwayat as $data): ?> 
                  <tr>
                    <td><?php echo $data['name'] ?></td>
                    <td><?php echo $data['nama_gejala'] ?></td>
                    <td><?php echo $data['created_at'] ?></td>
                    <td  style="text-align: center; width: 100px;">
                      <a href="<?php echo site_url('/penyakit/edit/').$data['user_id'] ?>" class="btn btn-primary btn-sm" style="border-radius: 0px; background: #51677B; border-color: #51677B;"><i class="fa fa-eye"></i> Lihat</a>
                    </td>
                  </tr>
                  <?php endforeach ?>
                </tbody>
              </table>
              
              <hr>
              <table class="table table-bordered">
            <thead>
              <tr>
                <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Nama User</th>
                <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Kode Kerusakan</th>
                <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Nama Kerusakan</th>
                <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Kepercayaan</th>
                <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Keterangan</th>
                <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Tanggal</th>
                <th style="text-align: center;background: #1E90FF; color: white; padding: 5px">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php $no= 1; foreach ($dataHasil as $data): ?>  
              <tr>
                <td><?php echo $data['name'] ?></td>
                <td style="text-align: center;"><?php echo $data['kode_kerusakan'] ?></td>
                <td><?php echo $data['nama_kerusakan'] ?></td>
                <td style="text-align: center;"><?php echo $data['kepercayaan'] ?></td>
                <td><?php echo $data['keterangan'] ?></td>  
                <td><?php echo $data['created_at']?></td>
                <td  style="text-align: center; width: 100px;">
                  <a href="<?php echo site_url('/penyakit/edit/').$data['user_id']?>" class="btn btn-primary btn-sm" style="border-radius: 0px; background: #51677B; border-color: #51677B;"><i class="fa fa-eye"></i> Lihat</a>
                </td>
              </tr>
              <?php endforeach ?>
            </tbody>
          </table>

        </div>
      </div>

       
          


        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
