@extends('super_admin.layout')
@section('content')
<div class="container-fluid py-4 px-4 ">
    <form id="filterForm" action="{{route('reports')}}">
        @csrf
        <div class="form-group">
          <label for="filterDropdown">Filter By:</label>
          <select class="form-control" id="filterDropdown" name="filterDropdown">
            <option value="">All</option>
            @foreach ($options as $option)
              <option value="{{ $option->id }}">{{ $option->expense_name }}</option>
            @endforeach
          </select>
        </div>
      </form>
      <table id="myTable">
        <thead>
        <tr>
            <th>Name</th>
            <th>Amount</th>
            <th>Date</th>
        </tr>
    </thead>
    <tbody id="data_body">
    </tbody>
  </table>
      {{-- @include('reports/general_reports',['expenseAmounts'=> $expenseAmounts]) --}}

    </div>
    @endsection    