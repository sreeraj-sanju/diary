<?php

namespace App\Http\Livewire\Budget;

use Livewire\Component;
use App\Models\ExpenseName;
use Kris\LaravelFormBuilder\FormBuilder;

class Bugdet extends Component
{
    public $names;
    public $expense_name;
    public function render()
    {
        $this->names=ExpenseName::all();
       
        return view('livewire.budget.bugdet', ['names' => $this->names]);
    }

    private function resetInputFields(){
        $this->expense_name = '';
    }

    public function store()
    {
        $validatedDate = $this->validate([
            'expense_name' => 'required',
        ]);

        //ExpenseName::create($validatedDate);

        session()->flash('message','New Expense Created Successfully.');

        $this->resetInputFields();

        $this->emit('userStore'); // Close model to using to jquery

    }

    
}
