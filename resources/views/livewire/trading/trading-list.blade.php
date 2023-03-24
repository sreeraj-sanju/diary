<div class="container-fluid py-4 px-4">
    <div class="sr-button-div">
        @include('livewire.trading.trading_new')
        @include('livewire.trading.divident')
        @include('livewire.trading.calculation')
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
                        $profit = 0;
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
                            <td>{{ $trade->total_sell_amount - $trade->total_buy_amount }}</td>
                            <td>{{ $trade->buy_reason }}</td>
                            <td>{{ $trade->loss_reason }}</td>
                            @php
                                $buy += $trade->total_buy_amount;
                                $sell += $trade->total_sell_amount;
                                $profit += $sell - $buy;
                            @endphp
                        </tr>
                    @endforeach
                    <tr>
                        <td colspan="5" class="text-center">Total Buy Amount</td>
                        <td>{{ $buy }}</td>
                        <td>total_sell_amount</td>
                        <td>{{ $sell }}</td>
                        <td colspan="4" class="{{ $profit > 0 ? 'text-success' : 'text-danger' }}">
                            {{ $profit > 0 ? 'Profit' : 'Loss' }} - {{ $profit }}</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="col-md-12 sr-table-div">
            <table class="table table-bordered  mt-5 data-table">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Date</th>
                        <th>Stock Name</th>
                        <th>Buy Amount</th>
                        <th>Divident Percentage</th>
                        <th>Total Divident Amount</th>
                        <th>Issue Date</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $stock_count = 0;
                        $percentage = 0;
                        $amount = 0;
                    @endphp
                    @foreach ($divident_stocks as $stock)
                        <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $stock->date }}</td>
                            <td>{{ $stock->stock_name }}</td>
                            <td>{{ $stock->stock_count }}</td>
                            <td>{{ $stock->divident_percentage }}</td>
                            <td>{{ $stock->divident_amount }}</td>
                            <td>{{ $stock->issue_date }}</td>
                            @php
                                $stock_count += $stock->stock_count;
                                $percentage += $stock->divident_percentage;
                                $amount += $stock->divident_amount;
                            @endphp
                        </tr>
                    @endforeach
                    <tr>
                        <td colspan="3" class="text-center">Total </td>
                        <td>{{ $stock_count }}</td>
                        <td>{{ $percentage }}</td>
                        <td colspan="4">{{ $amount }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-12 sr-table-div">
            <table class="table table-bordered  mt-5 data-table">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Calc Date</th>
                        <th>Stock Name</th>
                        <th>Stock Price</th>
                        <th>Stock Count</th>
                        <th>Total Amount</th>
                        <th>StopLoss/Profit</th>
                        <th>Expected Loss / Proft</th>
                        <th>Ratio</th>
                        <th>Active</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $total = 0;
                        $accnt = 0;
                    @endphp
                    @foreach ($stock_calc as $calc)
                        <tr class="text-center">
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $calc->calc_date }}</td>
                            <td>{{ $calc->stock_name }}</td>
                            <td>{{ $calc->buy_amount }}</td>
                            <td>{{ $calc->buy_count }}</td>
                            <td>{{ $calc->total_buy_amount }}</td>
                            <td>{{ $calc->stop_loss }} / {{ $calc->target }}</td>
                            <td>{{ $calc->expected_loss }} / {{ $calc->expected_profit }}</td>
                            <td>{{ $calc->ratio }}</td>
                            <td>
                                <input type="checkbox" id="toggle-active" data-value="{{$calc->id}}" data-path="{{route('toggle_active')}}" {{$calc->active == 1 ? 'checked':''}} data-toggle="toggle" data-onstyle="info" wire:click.prevent="toggle_active()">
                            </td>
                            @php
                                $total += $calc->total_buy_amount;
                                $accnt = $calc->amount_accnt;
                            @endphp
                        </tr>
                    @endforeach
                    <tr class="text-center">
                        <td colspan="5" class="text-center">Total </td>
                        <td>{{ $total }}</td>
                        <td>{{ $accnt - $total }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
        </div>
