<?php

namespace App\Http\Livewire\Trading;

use App\Models\Divident;
use App\Models\Calculation;
use App\Models\FinancialYear;
use App\Models\StockNames;
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
        $total,
        $stock_names,
        $date,
        $issue_date,
        $divident_percentage,
        $stock_count,
        $divident_amount,
        $buy_amount,
        $amount_avail,
        $stop_loss,
        $target,
        $expected_loss,
        $expected_profit,
        $ratio,
        $calc_date,
        $amount_accnt,
        $updateMode
    ;
    public function render()
    {
        $this->stock_names = StockNames::orderBy('id', 'desc')->get();
        $this->tradings = Trading::orderBy('id', 'desc')->get();
        $this->divident_stocks = Divident::orderBy('id', 'desc')->get();
        $this->stock_calc = Calculation::orderBy('id', 'asc')->get();
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

    public function divident_store()
    {
        $validated= $this->validate([
            'stock_name' => 'required',
            'date' => 'required',
            'issue_date' => 'required',
            'divident_percentage' => 'required|numeric|min:0',
            'stock_count' => 'required|integer|min:0',
            'divident_amount' => 'required|numeric|min:0',
        ]);
            $fin_id = FinancialYear::max('id');
            $validated['fin_id']=$fin_id;
            try {
                DB::beginTransaction();
                Divident::create($validated);
                DB::commit();
                $this->resetInputFields();
                $this->emit('successAction'); // Close model to using to jquery
            } catch (\Exception $e) {
                DB::rollBack();
                $this->emit('failedAction'); // Close model to using to jquery
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

    public function calculation_store()
    {
        $validated= $this->validate([
            'stock_name' => 'required',
            'calc_date' => 'required',
            'amount_avail' => 'required',
            'buy_amount' => 'required|numeric|min:0',
            'buy_count' => 'required|integer|min:0',
            'total_buy_amount' => 'required|numeric|min:0',
            'stop_loss' => 'required',
            'target' => 'required',
            'expected_loss' => 'required',
            'expected_profit' => 'required',
            'ratio' => 'required',
            'amount_accnt' => 'required',
        ]);
            $fin_id = FinancialYear::max('id');
            $validated['fin_id']=$fin_id;
            try {
                DB::beginTransaction();
                Calculation::create($validated);
                DB::commit();
                $this->resetInputFields();
                $this->emit('successAction'); // Close model to using to jquery
            } catch (\Exception $e) {
                DB::rollBack();
                $this->emit('failedAction'); // Close model to using to jquery
            }
    }

    public function amount()
    {
        $lastEntry = Calculation::latest('id')->first();
        if($lastEntry){
            $this->amount_avail=$lastEntry->amount_accnt - Calculation::sum('total_buy_amount');
            $this->amount_accnt = $lastEntry->amount_accnt;
        }
    }

    public function amount_fill()
    {
        $lastEntry = Calculation::latest('id')->first();
        $lastEntry->update(['amount_accnt'=>$this->amount_accnt]);
    }
    //function for reset input fields
    private function resetInputFields()
    {
        $this->stock_name = '';
        $this->buy_date = '';
        $this->single_stock_amount = 0;
        $this->buy_count = 0;
        $this->total_buy_amount = '';
        $this->buy_brocker = 0;
        $this->sell_date = '';
        $this->total_sell_amount = '';
        $this->sell_brocker = '';
        $this->buy_reason = '';
        $this->loss_reason = '';
        $this->profit = '';
        $this->stock_count ='';
        $this->divident_percentage='';
        $this->divident_amount='';
        $this->date='';
        $this->issue_date='';
        $this->buy_amount=0;
    }

    public function cancel()
    {
        $this->updateMode = false;
        $this->resetInputFields();
        $this->emit('refresh');
    }

    public function updated($key, $value)
    {
        if(in_array($key, ['single_stock_amount', 'buy_count', 'buy_brocker']) && $value!= null){
            $this->total_buy_amount = ($this->single_stock_amount*$this->buy_count)+$this->buy_brocker;
        }

        if(in_array($key, ['buy_amount', 'total_buy_amount', 'buy_count', 'stop_loss','target']) && $value!= null){
            $this->total_buy_amount = ($this->buy_amount*$this->buy_count);
            $this->expected_loss = ($this->total_buy_amount-($this->stop_loss*$this->buy_count));
            $this->expected_profit = (($this->target*$this->buy_count)-$this->total_buy_amount);
            $this->ratio = $this->getRatio($this->expected_loss, $this->expected_profit);
        }
    }

    function getRatio($num1, $num2){
        for($i = $num2; $i > 1; $i--) {
            if(($num1 % $i) == 0 && ($num2 % $i) == 0) {
                $num1 = $num1 / $i;
                $num2 = $num2 / $i;
            }
        }
        return "$num1:$num2";
    }

}
