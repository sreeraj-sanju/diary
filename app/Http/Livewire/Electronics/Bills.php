<?php

namespace App\Http\Livewire\Electronics;

use Livewire\Component;
use Illuminate\Support\Facades\DB;
use App\Models\Electronics\{
   BillAmount
};

class Bills extends Component
{
    public $date,
        $user_name,
        $component_price,
        $service_charge,
        $total_price,
        $amount_got,
        $bills,
        $selected_id;

    public $updateMode = false;

    public function render()
    {
        $this->bills = BillAmount::orderBy('id', 'desc')->get();
        return view('livewire.electronics.bills');
    }

    //for save bills
    public function bill_amount_store()
    {
        $validated = $this->validate([
            'date' => 'required',
            'user_name' => 'required',
            'component_price'=> 'required | integer | min:0',
            'service_charge' => 'required | integer | min:0',
            'total_price' => 'required | integer | min:0',
            'amount_got' => 'required | integer | min:0'
        ]);
       
        try{
            DB::beginTransaction();
            BillAmount::create($validated);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }  

    public function edit($id)
    {
        $this->updateMode = true;
        $record = BillAmount::findOrFail($id);
        $this->selected_id = $id;
        $this->date = $record->date;
        $this->user_name = $record->user_name;
        $this->component_price = $record->component_price;
        $this->service_charge = $record->service_charge;
        $this->total_price = $record->total_price;
        $this->amount_got = $record->amount_got;
        
    }

    //function for updation
    public function bill_amount_update(){
        $validated = $this->validate([
            'date' => 'required',
            'user_name' => 'required',
            'component_price'=> 'required | integer | min:0',
            'service_charge' => 'required | integer | min:0',
            'total_price' => 'required | integer | min:0',
            'amount_got' => 'required | integer | min:0'
        ]);
        if ($this->selected_id) {
            $record = BillAmount::find($this->selected_id);
            try{
                DB::beginTransaction();
                $record->update($validated);
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

    public function cancel(){
        $this->updateMode = false;
        $this->resetInputFields();
        $this->emit('refresh');
    }
    //function for reset input fields
    private function resetInputFields(){
        $this->date = '';
        $this->selected_id = '';
        $this->user_name = '';
        $this->component_price = '';
        $this->service_charge = '';
        $this->total_price = '';
        $this->amount_got = '';

    }
}
