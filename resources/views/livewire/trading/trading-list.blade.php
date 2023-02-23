<div class="container-fluid py-4 px-4">
    <div class="sr-button-div">
        @include('livewire.trading.trading_new')
    </div>
    @if (session()->has('message'))
        <div class="alert alert-success" style="margin-top:30px;">x
            {{ session('message') }}
        </div>
    @endif
    <div class="row">

        <div class="col-md-12 sr-table-div">
            <table class="table table-bordered  mt-5 data-table">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Buy Date</th>
                        <th>Stock Name</th>
                        <th>Buy Amount</th>
                        <th>Buy Quantity</th>
                        <th>Total Amount</th>
                        <th>Sell Date</th>
                        <th>Sell Amount</th>
                        <th>Profit/Loss</th>
                        <th>Buy Reason</th>
                        <th>Loss Reason</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $buy = 0;
                        $sell = 0;
                        $profit=0;
                    @endphp
                    @foreach ($tradings as $trade)
                        <tr>
                            <td>{{ $loop->index + 1 }}
                                <button class="btn btn-info btn-sm" type="button" wire:click="edit({{ $trade->id }})"
                                    data-toggle="modal" data-target="#tradeBuyModal">Edit</button>
                            </td>
                            <td>{{ $trade->buy_date }}</td>
                            <td>{{ $trade->stock_name }}</td>
                            <td>{{ $trade->single_stock_amount }}</td>
                            <td>{{ $trade->buy_count }}</td>
                            <td>{{ $trade->total_buy_amount }}</td>
                            <td>{{ $trade->sell_date }}</td>
                            <td>{{ $trade->total_sell_amount }}</td>
                            <td>{{ $trade->profit }}</td>
                            <td>{{ $trade->buy_reason }}</td>
                            <td>{{ $trade->loss_reason }}</td>
                            @php
                                $buy +=$trade->total_buy_amount;
                                $sell+=$trade->total_sell_amount;
                                $profit+=$trade->profit;
                            @endphp
                        </tr>
                    @endforeach
                    <tr>
                        <td colspan="5" class="text-center">Total Buy Amount</td>
                        <td>{{ $buy }}</td>
                        <td>total_sell_amount</td>
                        <td>{{$sell}}</td>
                        <td colspan="4">Profit - {{$profit}}</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div>
        </div>
