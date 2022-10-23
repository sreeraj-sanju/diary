<?php

namespace App\Http\Livewire\Prathibha;

use Illuminate\Support\Facades\DB;
use Livewire\Component;

use App\Models\{
   Anniversary
};
 
class Programmes extends Component
{
    public $class,
    $contestant_name,
    $song_name,
    $file_name,
    $selected_id;

    public $updateMode = false;

    public function render()
    {
       return view('prathibha.prathibha_2022');
    }

    public function program_store()
    {
        $validated = $this->validate([
            'class' => 'required',
            'contestant_name' => 'required',
            'song_name' => 'required',
            'file_name' => 'required',
        ]);

        try {
            DB::beginTransaction();
            Anniversary::create($validated);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        } catch (\Exception$e) {
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
    }
}
