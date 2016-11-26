@extends('Main.template')
@section('main')
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Major</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            {!! Form::open(array('route' => 'major.store', 'method' => 'post')) !!}
            
              @include('major.form',['submitText' => 'new'])
            
            {!! Form::close() !!}
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
@endsection