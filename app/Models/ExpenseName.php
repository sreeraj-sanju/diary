<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExpenseName extends Model
{
    use HasFactory;
    protected $guarded=[];

    public function expenseAmounts()
    {
        return $this->hasMany(expenseAmount::class, 'expense_name', 'id');
    }
}
