<?php

namespace App\Http\Livewire\Budget;

use Livewire\Component;
use App\Models\ExpenseName;

class Bugdet extends Component
{
    public $names;

    public function render()
    {
        $this->names=ExpenseName::all();
       
        return view('livewire.budget.bugdet', ['names' => $this->names]);
    }
}
