@extends('customers/layouts/main')

@section('title','BIT-PROGRESS | Project Detail')

@section('content-header', 'Project Detail')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="container">
  <div class="row">
    <div class="col-md-12">
      @foreach($projects as $p)
      <!-- The Modal Ubah Project-->
      <div class="modal" id="myModalUbahProject{{$p->id}}">
        <div class="modal-dialog">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">Ubah Project</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <form method="post" action="/customers/project/update/{{$p->id}}">
                {{csrf_field()}}

                <div class="form-group">
                  <label for="nama_project">Nama Project</label>
                  <input required="" autocomplete="off" class="form-control" type="text" name="nama_project" id="nama_project" value="{{$p->project_name}}">
                </div>
                <div class="form-group">
                  <label for="project_deadline">Project Deadline</label>
                  <input required="" autocomplete="off" class="form-control" type="date" name="project_deadline" id="project_deadline" value="{{$p->project_deadline}}">
                </div>
                <button type="Submit" class="btn btn-primary">Submit</button>
              </form>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>

          </div>
        </div>
      </div>
      <!-- End Modal Ubah Project-->
      <div class="info-box <?php if ($p->project_progress==0): ?>
      <?php echo "bg-danger" ?>
    <?php elseif($p->project_progress<50): ?> 
      <?php echo "bg-warning" ?>
    <?php elseif($p->project_progress<100): ?> 
      <?php echo "bg-primary" ?>
    <?php elseif($p->project_progress==100): ?> 
      <?php echo "bg-success" ?>
      <?php endif ?>">
      <span class="info-box-icon"><i class="fas fa-code"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">@if($p->project_start == null) Deadline {{$p->project_deadline}} @else {{$p->project_start}} - {{$p->project_deadline}} @endif</span>
        <span class="info-box-number">{{$p->project_name}}</span>

        <div class="progress">
          <div class="progress-bar" style="width: {{$p->project_progress}}%"></div>
        </div>
        <span class="progress-description">
          @if($p->programmers_id == null) 
          Waiting to take 
          <span class="float-right"><button project-id="{{$p -> id}}" nama-project="{{$p -> project_name}}" class="btn btn-danger btn-sm delete_project"><i class="fa fa-trash"></i></button></span>
          <span class="float-right"><button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalUbahProject{{$p->id}}"><i class="fa fa-pen"></i></button></span>
          @else
          Programmer {{$p->Programmers->name}} 
          @endif
        </span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
</div>
@if($p->project_URL != null)
<div class="row">
  <div class="col-md-12">
    <a href="{{$p->project_URL}}" target="_blank" rel="noopener noreferrer" class="btn btn-primary mb-3"><span>Lihat <i class="fa fa-eye"></i></span></a>
  </div>
</div>
@endif
<div class="row">
  @foreach($items as $i)
  <div class="col-md-4">
    <div class="card">
      <div class="card-header">
        <h3 class="card-title text-truncate" style="max-width: 60%">{{$i->item_name}}</h3><span class="float-right"><small>Deadline {{$i->item_deadline}}</small></span>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        <small>{{$i->item_progress}}%</small>
        <div class="progress mb-3">
          @if($i->item_progress == 0)
          <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 1%"></div>
          @else
          <div class="progress-bar <?php if ($i->item_progress<20): ?>
          <?php echo "bg-danger" ?>
        <?php elseif($i->item_progress<50): ?> 
          <?php echo "bg-warning" ?>
        <?php elseif($i->item_progress<100): ?> 
          <?php echo "bg-primary" ?>
        <?php elseif($i->item_progress==100): ?> 
          <?php echo "bg-success" ?>
          <?php endif ?>" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: {{$i->item_progress}}%"></div>
          @endif
        </div>
        @if($p->programmers_id == null)
        <button id-item="{{$i->id}}" id-project="{{$p->id}}" nama-item="{{$i->item_name}}" style="margin-left: 5px" type="button" class="btn btn-danger btn-sm float-right delete_item">
          <i class="fa fa-trash"></i>
        </button>
        @else

        <!-- The Modal Ubah Item-->
        <div class="modal" id="myModalUbahItem{{$i->id}}">
          <div class="modal-dialog">
            <div class="modal-content">

              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title">Ubah Data Item</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>

              <!-- Modal body -->
              <div class="modal-body">
                <form method="post" action="/customers/project/item/{{$i->id}}">
                  {{csrf_field()}}


                  <div class="form-group">
                    <label for="nama_item">Nama Item</label>
                    <input required="" autocomplete="off" class="form-control" type="text" name="nama_item" id="nama_item" value="{{$i->item_name}}">
                  </div>
                  <div class="form-group">
                    <textarea name="keterangan_item" class="form-control" autocomplete="off" placeholder="Keterangan Item">{{$i->item_description}}</textarea>
                  </div>
                  <div class="form-group">
                    <textarea required="" name="keterangan_update" class="form-control" autocomplete="off" placeholder="Keterangan update"></textarea>
                  </div>
                  <div class="form-group">
                    <label for="presentase_pengerjaan_item">Presentase Progress Items</label>
                    <input required="" class="form-control" type="number" min="0" max="100" name="presentase_pengerjaan_item" id="presentase_pengerjaan_item" value="{{$i->item_progress}}">
                  </div>
                  <div class="form-group">
                    <input type="hidden"  name="id_project" value="{{$i->projects_id}}">
                  </div>
                  <button type="Submit" class="btn btn-primary">Submit</button>


                </form>
              </div>

              <!-- Modal footer -->
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>

            </div>
          </div>
        </div>
        <!-- End Modal Ubah Item-->

        <button style="margin-left: 5px" type="button" class="btn btn-warning btn-sm float-right" data-toggle="modal" data-target="#myModalUbahItem{{$i->id}}">
          <i class="fa fa-pen"></i>
        </button>
        @endif

        <!-- The Modal Info Item-->
        <div class="modal" id="myModalInfoItem{{$i->id}}">
          <div class="modal-dialog">
            <div class="modal-content">

              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title">Info Data Item</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>

              <!-- Modal body -->
              <div class="modal-body">
                <div class="col-md-12">
                  <div class="box box-success box-solid">
                    <div class="box-header with-border">
                      <h3 class="box-title">{{$i->item_name}}</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                      <span class="info-box-text">{{$i->item_progress}}%</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar <?php if ($i->item_progress<20): ?>
                        <?php echo "bg-danger" ?>
                      <?php elseif($i->item_progress<50): ?> 
                        <?php echo "bg-warning" ?>
                      <?php elseif($i->item_progress<100): ?> 
                        <?php echo "bg-primary" ?>
                      <?php elseif($i->item_progress==100): ?> 
                        <?php echo "bg-success" ?>
                        <?php endif ?>" aria-valuemin="0" aria-valuemax="100" style="width: {{$i->item_progress}}%">
                      </div>
                    </div>

                    <div class="mt-3">
                      <p>{{$i->item_description}}</p>
                    </div>

                    <hr style="border: 1px solid grey;">
                    @foreach($infoUpdate as $iu)
                    @if($iu->items_id == $i->id)
                    <div class="row">
                      <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="info-box bg-gradient-secondary">
                          <span class="info-box-icon"><i class="fa <?php if ($iu->update_title=="Menambah Presentase"): ?>
                          <?php echo "fa-arrow-up" ?>
                        <?php elseif($iu->update_title=="Mengurangi Presentase"): ?> 
                          <?php echo "fa-arrow-down" ?>
                        <?php elseif($iu->update_title=="Update Lainnya"): ?> 
                          <?php echo "fa-sync-alt" ?>
                          <?php endif ?>"></i></span>
                          <div class="info-box-content">
                            <div><b>{{date('d F Y', strtotime($iu->update_date))}} - {{$iu->update_info}}</b></div>
                            <span>{{$iu->update_description}}</span>
                          </div>
                          <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                      </div>
                    </div>
                    @endif
                    @endforeach
                  </div>
                  <!-- /.box-body -->
                </div>
                <!-- /.box -->
              </div>


              
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>

          </div>
        </div>
      </div>
      <!-- End Modal Info Item-->
      <button type="button" class="btn btn-primary btn-sm float-right" data-toggle="modal" data-target="#myModalInfoItem{{$i->id}}">
        <i class="fa fa-info"></i>
      </button>
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
@endforeach
</div>
@endforeach
</div>
<!-- /.content-wrapper -->
@endsection