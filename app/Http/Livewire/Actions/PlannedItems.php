<?php

namespace App\Http\Livewire\Actions;

use Livewire\Component;
use App\Models\{
    Priority,
    PlanItem
};
use Illuminate\Support\Facades\DB;

class PlannedItems extends Component
{
    public $priority_name,
        $priority_code,
        $priorities,
        $priority,
        $product_name,
        $expected_amount
    ;
    public function render()
    {
        $this->priority_code = Priority::max('id')+100;
        $this->priorities = Priority::orderby('id', 'desc')->get();
        $this->data = DB::select( DB::raw("SELECT * FROM priorities WHERE priorities.id NOT IN (SELECT priority FROM plan_items )"));
        $this->planed_item = PlanItem::join('priorities', 'plan_items.priority', '=', 'priorities.id')
            ->orderBy('priorities.priority_code')
            ->get();
        return view('livewire.actions.planned-items');
    }

    // Start function for store priority name
    public function priority_store()
    {
        $validatedDate = $this->validate([
            'priority_name' => 'required',
            'priority_code' => 'required'
        ]);
         
        try{
            DB::beginTransaction();
            Priority::create($validatedDate);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); 
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }
    // End function for  store priority name

    // Start function for store planed products for buy
    public function plan_item_store()
    {
        $validatedDate = $this->validate([
            'product_name' => 'required',
            'expected_amount' => 'required',
            'priority' => 'required'
        ]);
         
        try{
            DB::beginTransaction();
            PlanItem::create($validatedDate);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); 
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }
    // End function for  store planed products for buy

    //cancel button operation
    public function cancel()
    {
        $this->updateMode = false;
        $this->resetInputFields();
        $this->emit('refresh');
    }

    //function for reset input fields
    private function resetInputFields(){
        $this->priority_name = '';
        $this->priority_code = '';
    }
}
