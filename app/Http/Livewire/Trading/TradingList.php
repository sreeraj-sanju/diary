<?php

namespace App\Http\Livewire\Trading;

use App\Models\FinancialYear;
use App\Models\StockSell;
use App\Models\Trading;
use Illuminate\Support\Facades\DB;
use Livewire\Component;

class TradingList extends Component
{
    public $stock_name,
    $buy_date,
    $single_stock_amount,
    $buy_count,
    $total_buy_amount,
    $buy_brocker,
    $buy_stocks,
    $sell_date,
    $sell_brocker,
    $total_sell_amount,
    $profit,
    $buy_reason,
    $loss_reason,
        $selected_id,
        $total
    ;
    public function render()
    {
        $this->tradings = Trading::orderBy('id', 'desc')->get();
        return view('livewire.trading.trading-list');
    }

    public function trade_save()
    {
        if ($this->selected_id) {
            $record = Trading::findOrFail($this->selected_id);
            try {
                DB::beginTransaction();
                $record->update([
                    'stock_name' => $this->stock_name,
                    'buy_count' => $this->buy_count,
                    'buy_date' => $this->buy_date,
                    'sell_date' => $this->sell_date,
                    'single_stock_amount' => $this->single_stock_amount,
                    'total_buy_amount' => $this->total_buy_amount,
                    'total_sell_amount' => $this->total_sell_amount,
                    'buy_brocker' => $this->buy_brocker,
                    'sell_brocker' => $this->sell_brocker,
                    'buy_reason' => $this->buy_reason,
                    'loss_reason' => $this->loss_reason,
                ]);

                DB::commit();
                $this->resetInputFields();
                $this->updateMode = false;
                $this->emit('successAction'); // Close model to using to jquery
            } catch (\Exception$e) {
                DB::rollBack();
                dd($e->getMessage());
                $this->emit('failedAction'); // Close model to using to jquery
            }
        } else {
            $fin_id = FinancialYear::max('id');

            try {
                DB::beginTransaction();
                Trading::create([
                    'stock_name' => $this->stock_name,
                    'finyear' => $fin_id,
                    'buy_count' => $this->buy_count,
                    'buy_date' => $this->buy_date,
                    'sell_date' => $this->sell_date,
                    'single_stock_amount' => $this->single_stock_amount,
                    'total_buy_amount' => $this->total_buy_amount,
                    'total_sell_amount' => $this->total_sell_amount,
                    'buy_brocker' => $this->buy_brocker,
                    'sell_brocker' => $this->sell_brocker,
                    'buy_reason' => $this->buy_reason,
                    'loss_reason' => $this->loss_reason,
                ]);

                DB::commit();
                $this->resetInputFields();
                $this->emit('successAction'); // Close model to using to jquery
            } catch (\Exception$e) {
                DB::rollBack();
                $this->emit('failedAction'); // Close model to using to jquery
            }
        }
    }

    public function edit($id)
    {
        $this->updateMode = true;
        $record = Trading::findOrFail($id);
        $this->selected_id = $id;
        $this->stock_name = $record->stock_name;
        $this->buy_date = $record->buy_date;
        $this->single_stock_amount = $record->single_stock_amount;
        $this->buy_count = $record->buy_count;
        $this->total_buy_amount = $record->total_buy_amount;
        $this->buy_brocker = $record->buy_brocker;
        $this->sell_date = $record->sell_date;
        $this->total_sell_amount = $record->total_sell_amount;
        $this->sell_brocker = $record->sell_brocker;
        $this->total_buy_amount = $record->total_buy_amount;
        $this->buy_reason = $record->buy_reason;
        $this->loss_reason = $record->loss_reason;
        $this->profit = $record->profit;

    }

    //function for reset input fields
    private function resetInputFields()
    {
        $this->stock_name = '';
        $this->buy_date = '';
        $this->single_stock_amount = '';
        $this->buy_count = '';
        $this->total_buy_amount = '';
        $this->buy_brocker = '';
        $this->sell_date = '';
        $this->total_sell_amount = '';
        $this->sell_brocker = '';
        $this->buy_reason = '';
        $this->loss_reason = '';
        $this->profit = '';
    }

    public function cancel()
    {
        $this->updateMode = false;
        $this->resetInputFields();
        $this->emit('refresh');
    }

    public function updated($key, $value)
    {
        if(in_array($key, ['single_stock_amount', 'buy_count', 'buy_brocker'])){
            $this->total_buy_amount = ($this->single_stock_amount*$this->buy_count)+$this->buy_brocker;
        }
    }

}
