<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class expenseAmount extends Model
{
    use HasFactory;
    protected $guarded=[];


    public function expenseName()
    {
        return $this->belongsTo(ExpenseName::class, 'expense_name', 'id');
    }
}
