<div class="form-group">
	{!! Form::label('name','Name : ') !!}
	{!! Form::text('name',null, ['class' => 'form-control', 'required' => 'required']) !!}
</div>
<div class="form-group">
	{!! Form::submit($submitText,['class' => 'btn btn-info']) !!}
</div>