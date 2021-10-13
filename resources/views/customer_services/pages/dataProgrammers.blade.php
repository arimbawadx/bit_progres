@extends('customer_services/layouts/main')

@section('title','BIT-Progres | Data Programmer')

@section('content-header', 'Data Programmer')

@section('content')
<!-- Content Wrapper. Contains page content -->
<section class="content">
  <!-- The Modal Tambah Programmer-->
  <div class="modal" id="TambahDataProgrammer">
    <div class="modal-dialog">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Tambah Data Programmer</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <form method="post" action="/customer-services/data-programmer">
            {{csrf_field()}}
            <div class="form-group">
              <label for="nama_programmer">Nama Programmer</label>
              <input required="" autocomplete="off" type="text" class="form-control" id="nama_programmer" name="nama_programmer">
            </div>
            <div class="form-group">
              <label for="no_hp">No HP</label>
              <input required="" autocomplete="off" type="number" class="form-control" id="no_hp" name="no_hp">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input required="" autocomplete="off" type="email" class="form-control" id="email" name="email">
            </div>            
            <button type="submit" class="btn btn-primary">Tambah</button>
          </form>
        </div>
      </div>
    </div>
  </div>


  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <button style="margin-bottom: 20px" type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#TambahDataProgrammer">
          <i class="fa fa-plus"></i><span>Tambah</span>
        </button>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 table-responsive">
        <table id="datatables" class="table table-bordered table-striped text-center">
          <thead class="thead-dark">
            <th>No</th>
            <th>Username</th>
            <th>Nama Programmer</th>
            <th>No HP</th>
            <th>Email</th>
            <th>Aksi</th>
          </thead>


          <tbody>
            @foreach ($Programmers as $i => $p)
            <tr>
              <td>{{$i+1}}</td>
              <td>{{$p->username}}</td>
              <td>{{$p->name}}</td>
              <td>{{$p->phone_number}}</td>
              <td>{{$p->email}}</td>
              <td>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModalUbahDataProgrammer{{$p->id}}">
                  <i class="fa fa-pen"></i><span></span>
                </button>

                <button programmer-id="{{$p -> id}}" nama-programmer="{{$p -> name}}" class="btn btn-danger delete_programmer">
                  <i class="fa fa-trash"></i><span></span>
                </button>
              </td>
            </tr>

            <!-- The Modal Ubah data customer-->
            <div class="modal" id="myModalUbahDataProgrammer{{$p->id}}">
              <div class="modal-dialog">
                <div class="modal-content">

                  <!-- Modal Header -->
                  <div class="modal-header">
                    <h4 class="modal-title">Ubah Data Programmer</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>

                  <!-- Modal body -->
                  <div class="modal-body">
                    <form method="post" action="/customer-services/data-programmer/{{$p->id}}">
                      {{csrf_field()}}
                      <div class="form-group">
                        <label for="nama_programmer">Nama Programmer</label>
                        <input autocomplete="off" type="text" class="form-control" id="nama_programmer" name="nama_programmer" value="{{$p -> name}}">
                      </div>
                      <div class="form-group">
                        <label for="no_hp">No HP </label>
                        <input autocomplete="off" type="number" class="form-control" id="no_hp" name="no_hp" value="{{$p->phone_number}}">
                      </div>
                      <div class="form-group">
                        <label for="email">Email </label>
                        <input autocomplete="off" type="email" class="form-control" id="email" name="email" value="{{$p->email}}">
                      </div>

                      <button type="submit" class="btn btn-primary">Simpan</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>
<!-- /.content-wrapper -->
@endsection