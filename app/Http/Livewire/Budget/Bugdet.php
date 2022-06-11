<?php

namespace App\Http\Livewire\Budget;

use Illuminate\Http\Request;
use Livewire\Component;
use App\Models\{
    ExpenseName,
    FinancialYear,
    expenseAmount
};

use Illuminate\Support\Facades\DB;
use Kris\LaravelFormBuilder\FormBuilder;

class Bugdet extends Component
{
    public 
        $expense_names, 
        $earning_names,
        $expense_amounts, 
        $earning_amounts,
        $expense_id, 
        $expense_name, 
        $expense_date, 
        $expense_amount, 
        $state
    ;

    public $updateMode = false;

    //page for budget
    public function render()
    {
        $this->expense_names=ExpenseName::where('state', 0)->get();
        $this->earning_names=ExpenseName::where('state', 1)->get();
        $this->expense_amounts = expenseAmount::where('state', 0)->get();
        $this->earning_amounts = expenseAmount::where('state', 1)->get();
        return view('livewire.budget.bugdet', [
            'expense_names' => $this->expense_names, 
            'expense_amounts' => $this->expense_amounts,
            'earning_names' => $this->earning_names,
            'earning_amounts' => $this->earning_amounts
        ]);
    }

    //store expense name
    public function store()
    {
        $validatedDate = $this->validate([
            'expense_name' => 'required',
            'state' => 'required'
        ]);
         
        try{
            DB::beginTransaction();
            ExpenseName::create($validatedDate);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); 
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }

    //for save expense amount
    public function expense_amount_store()
    {
        $validatedAmount = $this->validate([
            'expense_name' => 'required',
            'expense_date'  => 'required',
            'expense_amount' => 'required | integer',
        ]);
        $fin_id = FinancialYear::max('id');

        $validatedAmount['finyear']=$fin_id;
        try{
            DB::beginTransaction();
            expenseAmount::create($validatedAmount);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }  

    //for save earnings amount
    public function earnings_amount_store()
    {
        $validatedAmount = $this->validate([
            'expense_name' => 'required',
            'expense_date'  => 'required',
            'expense_amount' => 'required | integer',
        ]);
        $fin_id = FinancialYear::max('id');

        $validatedAmount['finyear']=$fin_id;
        $validatedAmount['state']=1;
        try{
            DB::beginTransaction();
            expenseAmount::create($validatedAmount);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }  

    //for expense edit form
    public function expense_edit($id)
    {
        $this->updateMode = true;
        $expense_amount = expenseAmount::where('id',$id)->first();
        $this->expense_id = $id;
        $this->expense_name = $expense_amount->expense_name;
        $this->expense_date = $expense_amount->expense_date;
        $this->expense_amount = $expense_amount->expense_amount;
        
    }

    //cancel button operation
    public function cancel()
    {
        $this->updateMode = false;
        $this->resetInputFields();
    }

    //for update expense amount
    public function expense_update()
    {
        $validatedAmount = $this->validate([
            'expense_name' => 'required',
            'expense_date'  => 'required',
            'expense_amount' => 'required | integer'
        ]);

        if ($this->expense_id) {
            $expense_amount = expenseAmount::find($this->expense_id);
            try{
                DB::beginTransaction();
                $expense_amount->update([
                    'expense_name' => $this->expense_name,
                    'expense_date' => $this->expense_date,
                    'expense_amount' => $this->expense_amount
                ]);
                DB::commit();
                $this->updateMode = false;
                $this->resetInputFields();
                $this->emit('successAction'); 
            }catch(\Exception $e){
                DB::rollBack();
                $this->emit('failedAction'); // Close model to using to jquery
            }

        }
    }

    //for update earnings amount
    public function earnings_update()
    {
        $validatedAmount = $this->validate([
            'expense_name' => 'required',
            'expense_date'  => 'required',
            'expense_amount' => 'required | integer'
        ]);

        if ($this->expense_id) {
            $expense_amount = expenseAmount::find($this->expense_id);
            try{
                DB::beginTransaction();
                $expense_amount->update([
                    'expense_name' => $this->expense_name,
                    'expense_date' => $this->expense_date,
                    'expense_amount' => $this->expense_amount,
                    'state' => 1
                ]);
                DB::commit();
                $this->updateMode = false;
                $this->resetInputFields();
                $this->emit('successAction'); 
            }catch(\Exception $e){
                DB::rollBack();
                $this->emit('failedAction'); // Close model to using to jquery
            }

        }
    }
    
    //function for reset input fields
    private function resetInputFields(){
        $this->expense_name = '';
        $this->expense_date = '';
        $this->expense_amount = '';
    }
}
