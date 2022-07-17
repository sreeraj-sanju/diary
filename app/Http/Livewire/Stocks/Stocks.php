<?php

namespace App\Http\Livewire\Stocks;

use Livewire\Component;
use App\Models\{
    StockNames,
    Stock,
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
        $total_sell_amount
    ;
    public function render()
    {
        $this->stock_names = StockNames::orderBy('id', 'desc')->get();
        $this->buy_stocks = Stock::where('is_active', true)->orderBy('id', 'DESC')->get();
        $this->sell_stocks = StockSell::where('is_active', true)->orderBy('id', 'DESC')->get();
        return view('livewire.stocks.stocks');
    }

    //for save stock names
    public function stock_name_store()
    {
        $validatedName = $this->validate([
            'name' => 'required',
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
        try{
            DB::beginTransaction();
            Stock::create($validatedName);
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
     //end stock buy new

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
    }
}
