@extends('customers/layouts/main')

@section('title','BIT-PROGRESS | Add Projects')

@section('content-header', 'Add Projects & Items')

@section('content')
<!-- Content Wrapper. Contains page content -->
<section class="content">
	<div class="container">
		<div class="row">	
			<div class="col-md-12">
				<div class="alert alert-info alert-dismissible">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
					<h5><i class="icon fas fa-info"></i> Info!</h5>
					Silahkan ajukan project baru beserta item untuk dipantau, tambahkan pada form di bawah ini, dan tunggu programmer mengambil project anda.
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-muted">
						Add Projects
					</div>
					<div class="card-body">
						<form method="post" action="/customers/project/add-projects">
							{{csrf_field()}}
							<div class="form-group">
								<label for="nama_project">Nama Project</label>
								<input placeholder="masukan nama project" required="" autocomplete="off" class="form-control" type="text" name="nama_project" id="nama_project">
							</div>
							<div class="form-group">
								<label for="deatline_project">Deadline Project</label>
								<input required="" class="form-control" type="date" name="deatline_project" id="deatline_project">
							</div>
							<button class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-muted">
						Add Items (System Requirements)	
					</div>
					<div class="card-body">
						<form method="post" action="/customers/project/add-items">
							{{csrf_field()}}
							<div class="form-group">
								<label>Projects</label>
								<select name="id_project" required="" class="form-control">
									<option value="">Pilih</option>
									@foreach ($Projects as $i => $p)
									<option value="{{$p -> id}}">{{$p -> project_name}} | {{$p -> created_at}}</option>
									@endforeach
								</select>
							</div>
							<div class="form-group">
								<label for="nama_item">Nama Item</label>
								<input placeholder="masukan nama item" required="" autocomplete="off" class="form-control" type="text" name="nama_item" id="nama_item">
							</div>
							<div class="form-group">
								<textarea required="" name="keterangan_item" class="form-control" autocomplete="off" placeholder="Keterangan Item"></textarea>
							</div>
							<div class="form-group">
								<label for="deadline_item">Deadline Item</label>
								<input required="" autocomplete="off" class="form-control" type="date" name="deadline_item" id="deadline_item">
							</div>
							<button type="Submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /.content-wrapper -->
@endsection