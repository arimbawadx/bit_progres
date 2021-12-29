@extends('customer_services/layouts/main')

@section('title','BIT-Progres | Data Customer')

@section('content-header', 'Data Customer')

@section('content')
<!-- Content Wrapper. Contains page content -->
<section class="content">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <button style="margin-bottom: 20px" type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#TambahDataCustomer">
          <i class="fa fa-plus"></i><span> Tambah</span>
        </button>

        <!-- The Modal Tambah Customer-->
        <div class="modal" id="TambahDataCustomer">
          <div class="modal-dialog">
            <div class="modal-content">

              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title">Tambah Data Customer</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>

              <!-- Modal body -->
              <div class="modal-body">
                <form method="post" action="/customer-services/data-customer">
                  {{csrf_field()}}
                  <div class="form-group">
                    <label for="nama_customer">Nama Customer</label>
                    <input autocomplete="off" type="text" class="form-control @error('nama_customer') is-invalid @enderror" id="nama_customer" name="nama_customer" value="{{ old('nama_customer') }}">
                    @error('nama_customer')
                    <div class="text-danger">{{$message}}</div>
                    <script type="text/javascript">
                      $('#TambahDataCustomer').show();
                      $('#spinner').hide();
                    </script>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label for="no_hp">No HP</label>
                    <input autocomplete="off" type="number" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" value="{{ old('no_hp') }}">
                    @error('no_hp')
                    <div class="text-danger">{{$message}}</div>
                    <script type="text/javascript">
                      $('#TambahDataCustomer').show();
                      $('#spinner').hide();
                    </script>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input autocomplete="off" type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ old('email') }}">
                    @error('email')
                    <div class="text-danger">{{$message}}</div>
                    <script type="text/javascript">
                      $('#TambahDataCustomer').show();
                      $('#spinner').hide();
                    </script>
                    @enderror
                  </div>
                  <button type="submit" class="btn btn-primary">Tambah</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 table-responsive">
        <table id="datatables" class="table table-bordered table-striped text-center">
          <thead class="thead-dark">
            <th>No</th>
            <th>Username</th>
            <th>Nama Customer</th>
            <th>No HP</th>
            <th>Email</th>
            <th>Aksi</th>
          </thead>


          <tbody>
            @foreach ($customers as $i => $p)
            <tr>
              <td>{{$i+1}}</td>
              <td>{{$p -> username}}</td>
              <td>{{$p -> name}}</td>
              <td>{{$p -> phone_number}}</td>
              <td>{{$p -> email}}</td>
              <td>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModalUbahDataCustomer{{$p -> id}}">
                  <i class="fa fa-pen"></i><span></span>
                </button>

                <button cus-id="{{$p -> id}}" nama-cus="{{$p -> name}}" class="btn btn-danger delete_cus">
                  <i class="fa fa-trash"></i><span></span>
                </button>
              </td>
            </tr>

            <!-- The Modal Ubah data customer-->
            <div class="modal" id="myModalUbahDataCustomer{{$p -> id}}">
              <div class="modal-dialog">
                <div class="modal-content">

                  <!-- Modal Header -->
                  <div class="modal-header">
                    <h4 class="modal-title">Ubah Data Customer</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>

                  <!-- Modal body -->
                  <div class="modal-body">
                    <form method="post" action="/customer-services/data-customer/{{$p -> id}}">
                      {{csrf_field()}}
                      <div class="form-group">
                        <label for="nama_customer">Nama Customer</label>
                        <input autocomplete="off" type="text" class="form-control" id="nama_customer" name="nama_customer" value="{{$p -> name}}">
                      </div>
                      <div class="form-group">
                        <label for="no_hp">No HP </label>
                        <input autocomplete="off" type="number" class="form-control" id="no_hp" name="no_hp" value="{{$p -> phone_number}}">
                      </div>
                      <div class="form-group">
                        <label for="email">Email </label>
                        <input autocomplete="off" type="email" class="form-control" id="email" name="email" value="{{$p -> email}}">
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

