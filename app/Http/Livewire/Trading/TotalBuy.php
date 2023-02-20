<?php

namespace App\Http\Livewire\Trading;

use Livewire\Component;

class TotalBuy extends Component
{
    public $total_buy_amount,
        $single_stock_amount,
        $buy_count;
    public function total()
    {
        $this->total_buy_amount = $this->single_stock_amount * $this->buy_count;
        return view('livewire.trading.total-buy');
    }
}
