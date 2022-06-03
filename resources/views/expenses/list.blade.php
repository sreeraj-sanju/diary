@extends('super_admin.layout')
@section('title', 'expense list')

@section('content')
<div class="container">
<table class="table table-success table-bordered table-striped table-hover">
<h6>Expenses</h6>
@livewire('bootstrap-modal')

<thead class="thead-dark">
    <tr>
      <th>#</th>
      <th>First</th>
      <th>Last</th>
      <th>Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
</tbody>
</table>
</div>
@endsection