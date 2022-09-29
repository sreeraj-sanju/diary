<?php

namespace App\Http\Livewire\Stocks;

use Livewire\Component;
use App\Models\{
    StockNames,
    Stock,
    StockAnalys,
    StockSell,
    FinancialYear
};

use Illuminate\Support\Facades\DB;
class Stocks extends Component
{
    public $stock_name,
        $stock_names,
        $buy_date,
        $buy_amount_single,
        $buy_count,
        $total_buy_amount,
        $buy_charge,
        $buy_stocks,
        $sell_date,
        $sell_amount_single,
        $sell_count,
        $total_sell_amount,
        $profit,
        $name,
        $current_price,
        $debt_equity,
        $promoter_holding,
        $roe,
        $roce,
        $divident,
        $profit_aft_tax,
        $stock_code,
        $selected_id
    ;
    public function render()
    {
        $this->stock_names = StockNames::orderBy('id', 'desc')->get();
        $this->stock_code = StockAnalys::where('buy_status', 0)->orderBy('debt_equity', 'asc')->get();
        $this->buy_stocks = DB::table('stocks as s')->join('stock_names as sn', 's.stock_name', '=', 'sn.id')
            ->where('s.is_active', true)->orderBy('s.id', 'DESC')->get();
        $this->sell_stocks = DB::table('stock_sells as s')->join('stock_names as sn', 's.stock_name', '=', 'sn.id')
            ->where('s.is_active', true)->orderBy('s.id', 'DESC')->get();
        return view('livewire.stocks.stocks');
    }

    //for save stock names
    public function stock_name_store()
    {
        $validatedName = $this->validate([
            'name' => 'required',
            'stock_code' => 'required'
        ]);
       
        try{
            DB::beginTransaction();
            StockNames::create($validatedName);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }  

    //start stock buy new
    public function stock_buy_store()
    {
        $validatedName = $this->validate([
            'stock_name' => 'required',
            'buy_date' => 'required',
            'buy_amount_single' => 'required|numeric|min:0',
            'buy_count' => 'required|integer|min:0',
            'total_buy_amount' => 'required|numeric|min:0',
            'buy_charge' => 'required|numeric|min:0'

        ]);
        $fin_id = FinancialYear::max('id');

        $validatedName['finyear']=$fin_id;
        
        $stock_code = StockNames::find($validatedName['stock_name']);
       
        try{
            DB::beginTransaction();
            Stock::create($validatedName);
            StockAnalys::where('stock_code', $stock_code->stock_code)->update(['buy_status' => 1]);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        }catch(\Exception $e){
            DB::rollBack();
           dd($e->getMessage());
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }  
    //end stock buy new

     //start stock buy new
     public function stock_sell_store()
     {
        $validatedName = $this->validate([
             'stock_name' => 'required',
             'sell_date' => 'required',
             'sell_amount_single' => 'required|numeric|min:0',
             'sell_count' => 'required|integer|min:0',
             'total_sell_amount' => 'required|numeric|min:0',
             'buy_charge' => 'required|numeric|min:0'
 
        ]);
        $fin_id = FinancialYear::max('id');
 
        $validatedName['finyear']=$fin_id;

        $total_buy_amount = Stock::where('stock_name', $validatedName['stock_name'])
            ->selectRaw('sum(total_buy_amount) as total')->selectRaw('sum(buy_charge) as charge')
            ->selectRaw('sum(buy_count) as count')
            ->groupBy('stock_name')->get();
        
        $total_sell_count = StockSell::where('stock_name', $validatedName['stock_name'])
            ->selectRaw('sum(sell_count) as count')
            ->groupBy('stock_name')->get();
        
        $stock_code = StockNames::find($validatedName['stock_name']);

        foreach($total_buy_amount as $data){
            $buy_amount = $data->total + $data->charge;
            $buy_count = $data->count;
        }
        foreach($total_sell_count as $value){
            $sell_count = $value->count;
        }

        $count_diff = $buy_count-$validatedName['sell_count'];
        $sell_count = $validatedName['sell_count'] + $sell_count;
        if($count_diff==0 || $sell_count == $buy_count){
            $validatedName['profit'] = $validatedName['total_sell_amount']-$validatedName['buy_charge']-$buy_amount;
            try{
                DB::beginTransaction();
                StockSell::create($validatedName);
                StockAnalys::where('stock_code', $stock_code->stock_code)->update(['buy_status' => 0]);
                DB::commit();
                $this->resetInputFields();
                $this->emit('successAction'); // Close model to using to jquery
            }catch(\Exception $e){
                DB::rollBack();
                dd($e->getMessage());
                $this->emit('failedAction'); // Close model to using to jquery
            }
        }elseif($count_diff <0){
            $this->emit('failedinfo');
        }else{
            $validatedName['profit'] = $validatedName['total_sell_amount']-$validatedName['buy_charge']-$buy_amount;
            try{
                DB::beginTransaction();
                StockSell::create($validatedName);
                DB::commit();
                $this->resetInputFields();
                $this->emit('successAction'); // Close model to using to jquery
            }catch(\Exception $e){
                DB::rollBack();
                dd($e->getMessage());
                $this->emit('failedAction'); // Close model to using to jquery
            }
        }
     }  
     //end stock buy new

    // start stock analysis
    public function analys_stock_store()
    {
        $validatedName = $this->validate([
            'stock_name' => 'required',
            'current_price' => 'required|numeric|min:0',
            'debt_equity' => 'required|numeric|min:0',
            'promoter_holding' => 'required|numeric|min:0',
            'roe' => 'required|numeric|min:0',
            'roce' => 'required|numeric|min:0',
            'profit_aft_tax' => 'required|numeric|min:0',
            'divident' => 'required|numeric|min:0',
        ]);
        $stock_code = 'srstock'.StockAnalys::max('id')+1;

        $validatedName['stock_code']=$stock_code;
        try{
            DB::beginTransaction();
            StockAnalys::create($validatedName);
            StockNames::create([
                'name' => $validatedName['stock_name'],
                'stock_code' => $validatedName['stock_code']
            ]);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        }catch(\Exception $e){
            DB::rollBack();
           dd($e->getMessage());
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }  
    // end stock analysis

    public function edit($id)
    {
        $this->updateMode = true;
        $record = StockAnalys::findOrFail($id);
        $this->selected_id = $id;
        $this->stock_name = $record->stock_name;
        $this->current_price = $record->current_price;
        $this->debt_equity = $record->debt_equity;
        $this->promoter_holding = $record->promoter_holding;
        $this->roe = $record->roe;
        $this->roce = $record->roce;
        $this->profit_aft_tax = $record->profit_aft_tax;
        $this->divident = $record->divident;
    }

    //function for updation
    public function analys_stock_update(){
        $validatedName = $this->validate([
            'stock_name' => 'required',
            'current_price' => 'required|numeric|min:0',
            'debt_equity' => 'required|numeric|min:0',
            'promoter_holding' => 'required|numeric|min:0',
            'roe' => 'required|numeric|min:0',
            'roce' => 'required|numeric|min:0',
            'profit_aft_tax' => 'required|numeric|min:0',
            'divident' => 'required|numeric|min:0',
        ]);
        if ($this->selected_id) {
            $record = StockAnalys::find($this->selected_id);
            try{
                DB::beginTransaction();
                $record->update($validatedName);
                DB::commit();
                $this->resetInputFields();
                $this->updateMode = false;
                $this->emit('successAction'); // Close model to using to jquery
            }catch(\Exception $e){
                DB::rollBack();
                $this->emit('failedAction'); // Close model to using to jquery
            }
        }
    }

    //function for reset input fields
    private function resetInputFields(){
        $this->name = '';
        $this->stock_name = '';
        $this->buy_date = '';
        $this->buy_amount_single = '';
        $this->buy_count = '';
        $this->total_buy_amount ='';
        $this->buy_charge = '';
        $this->sell_date = '';
        $this->sell_amount_single = '';
        $this->sell_count = '';
        $this->total_sell_amount = '';
        $this->current_price = '';
        $this->debt_equity = '';
        $this->promoter_holding = '';
        $this->roe = '';
        $this->roce = '';
        $this->divident = '';
        $this->profit_aft_tax = '';
    }

    public function cancel(){
        $this->updateMode = false;
        $this->resetInputFields();
        $this->emit('refresh');
    }
}
