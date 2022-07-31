<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\expenseAmount;
use App\Models\ExpenseName;

use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $expenses = expenseAmount::join('expense_names', 'expense_names.id', '=', 'expense_amounts.expense_name')
            ->select(DB::raw("SUM(expense_amounts.expense_amount) as total, expense_names.expense_name"))
            ->groupBy('expense_names.expense_name')
            ->where('expense_amounts.state', false)
            ->get();
        
        $label =[];
        $value = [];
        foreach ($expenses as $expense){
            array_push($label, substr($expense->expense_name, 0, 6));
            array_push($value, $expense->total);
        }
        
        return view('super_admin/dashboard',compact('value', 'label'));
    }
}
