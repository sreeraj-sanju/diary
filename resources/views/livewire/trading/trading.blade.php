@extends('super_admin.layout')
@section('content')
@livewire('trading.trading-list')
@endsection

@section('script')
<script>
    $(document).ready(function() {
        $('.sr-data-table').DataTable();
    });
</script>
@endsection