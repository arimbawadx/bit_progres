@extends('programmers/layouts/main')

@section('title','BIT-PROGRESS | Dashboard')

@section('content-header', 'Dashboard')

@section('content')
<!-- Content Wrapper. Contains page content -->
<section class="content">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <!-- small card -->
        <div class="small-box bg-danger">
          <div class="inner">
            <h3>{{$jumlahProjectWaitings}}</h3>

            <p>Waiting to be taken</p>
          </div>
          <div class="icon">
            <i class="fas fa-clock"></i>
          </div>
          <a href="/programmers/projects/project-waiting" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-4">
        <!-- small card -->
        <div class="small-box bg-info">
          <div class="inner">
            <h3>{{$jumlahProjectOnProgress}}</h3>

            <p>On Progress</p>
          </div>
          <div class="icon">
            <i class="fas fa-tachometer-alt"></i>
          </div>
          <a href="/programmers/projects/project-on-progress" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-4">
        <!-- small card -->
        <div class="small-box bg-success">
          <div class="inner">
            <h3>{{$jumlahProjectFinished}}</h3>

            <p>Finished</p>
          </div>
          <div class="icon">
            <i class="fas fa-calendar-check"></i>
          </div>
          <a href="/programmers/projects/project-finished" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
      <!-- ./col -->
    </div>
  </div>
</section>
<!-- /.content-wrapper -->
@endsection

