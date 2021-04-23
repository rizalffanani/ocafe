 <div class="content-wrapper">

    <!-- Main content -->
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="row justify-content-center mb-5">
                  <div class="col-md-12 heading-section text-center ftco-animate">
                    <div class="text-center bg-orange">
                      <p>
                        <h3><i class="icon fas fa-cookie"></i>Hallo :)</h3>
                        Silahkan Pilih Menu Yang Tersedia. Selamat Mencoba
                      </p>
                    </div>
                  </div>
                </div>
                <section class="ftco-menu mb-5 pb-5">
                  <div class="container">
                    
                    <div class="row d-md-flex">
                      <div class="col-lg-12 ftco-animate p-md-5">
                        <div class="row">
                          <div class="col-md-12 nav-link-wrap mb-5">
                            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                              <?php $i=1; foreach ($kategori as $key => $value) {?>
                              <a class="nav-link <?php echo ($i==1) ? 'active' : '' ; ?> " id="v-pills-<?php echo$i;?>-tab" data-toggle="pill" href="#v-pills-<?php echo$i;?>" role="tab" aria-controls="v-pills-<?php echo$i;?>" aria-selected="true"><?php echo$value->nama_kategori;?></a>
                             <?php $i++;}?>
                            </div>
                          </div>
                          <div class="col-md-12 d-flex align-items-center">
                            
                            <div class="tab-content ftco-animate" id="v-pills-tabContent">
                            <?php $i=1; foreach ($kategori as $key => $val) {?>
                              <div class="tab-pane fade <?php echo ($i==1) ? 'show active' : '' ; ?>" id="v-pills-<?php echo($i);?>" role="tabpanel" aria-labelledby="v-pills-<?php echo($i);?>-tab">
                                <div class="row">
                                <?php $a=0;foreach ($menu as $key => $value) { if ($value->id_kategori==$val->id_kategori) {?>
                                  <div class="col-md-4">
                                    <div class="position-relative " style="height: 180px">
                                      <img src="<?php echo(base_url()) ?>gambar/<?php echo $value->foto_menu; ?>" style="width: 100%;height: 130%;" alt="Photo 1" class="img-fluid">
                                    </div>
                                    <div class="card card-primary card-outline">
                                      <div class="card-body box-profile">
                                        <div class="text-center">
                                          <h3><a href="#"><?php echo ($value->nama_menu)?></a></h3>
                                        </div>

                                        <p class="text-muted text-center"><?php echo ($value->deskripsi_menu)?></p>

                                        <ul class="list-group list-group-unbordered mb-3">
                                          <li class="list-group-item">
                                            <b>Harga</b> <a class="float-right">Rp.<?php echo rupiah($value->harga)?></a>
                                          </li>
                                        </ul>

                                        <a href="#" onclick="ds('<?= $value->id_menu?>')" id="ok" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-block"><b>Add tos cart</b></a>
                                      </div>
                                      <!-- /.card-body -->
                                    </div>
                                  </div>
                                <?php $a++;} }?>
                                <?php if ($a<4) {for ($a=$a; $a < 3; $a++) { ?>
                                  <div class="col-md-4 text-center">
                                    <div class="menu-wrap">
                                      <div style="width: 327px;height:300px;"></div>
                                    </div>
                                  </div>
                                <?php }}?>
                                </div>
                              </div>
                            <?php $i++;}?>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </section> 
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" style="color: black;">Jumlah</h4>
          </div>
          <div class="modal-body">
            <div class="row">
                  <div class="col-3">
                    <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                     <i class="icon-minus"></i>
                    </button>
                  </div>
                  <div class="col-3">
                    <input type="text" id="quantity" name="quantity" class="form-control" value="1" min="1" max="100">
                    <input type="hidden" id="idmenu" name="idmenu">
                  </div>
                  <div class="col-2">
                    <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                       <i class="icon-plus"></i>
                   </button>
                  </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" onclick="ok()" class="btn btn-default" data-dismiss="modal">ok</button>
          </div>
        </div>
      </div>
    </div>
    <script>
      function ds(a) {
        document.getElementById('idmenu').value = a;
      }
      $(function() {

        toastr.options = {
          "closeButton": false,
          "debug": false,
          "newestOnTop": false,
          "progressBar": false,
          "positionClass": "toast-top-center",
          "preventDuplicates": false,
          "onclick": null,
          "showDuration": "300",
          "hideDuration": "1000",
          "timeOut": "5000",
          "extendedTimeOut": "1000",
          "showEasing": "swing",
          "hideEasing": "linear",
          "showMethod": "fadeIn",
          "hideMethod": "fadeOut"
        }
      });
      function ok() {
        var a = document.getElementById('idmenu').value
        var b = document.getElementById('quantity').value
        $.ajax({
          type:"GET",
          url:"<?=site_url('web/add_to_cart');?>/"+a+'/'+b,    
          success: function(data){   
            toastr.success('Ok berhasil');
            document.getElementById('count').style.display = "block";
            document.getElementById('count').innerHTML = data;
          }  
        });
      }
      $(document).ready(function(){
        var quantitiy=0;
        $('.quantity-right-plus').click(function(e){
            
            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            var quantity = parseInt($('#quantity').val());
            
            // If is not undefined
                
                $('#quantity').val(quantity + 1);

              
                // Increment            
        });
        $('.quantity-left-minus').click(function(e){
            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            var quantity = parseInt($('#quantity').val());
            
            // If is not undefined
          
                // Increment
                if(quantity>0){
                $('#quantity').val(quantity - 1);
                }
        });
      });
    </script>