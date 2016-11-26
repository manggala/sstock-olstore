@extends('Main.template')
@section('main')
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Major <a href="{{route('major.create')}}" class="btn btn-default btn-flat">New</a></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No.</th>
                  <th>Name</th>
                  <th>Student Count</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $no = 0;
                ?>
                @foreach($data as $d)
                	<tr>
                		<td>
                			{{$no++}}
                		</td>
                		<td>
                			{{$d->name}}
                		</td>
                		<td>
                			<i>count</i>
                		</td>
                		<td>
                			<i>Action</i>
                		</td>
                	</tr>
                @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>No.</th>
                  <th>Name</th>
                  <th>Student Count</th>
                  <th>Action</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
@endsection