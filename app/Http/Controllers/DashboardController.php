<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\expenseAmount;
use App\Models\ExpenseName;
use App\Models\FinancialYear;

use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function dashboard()
    {
        //create a new financial year automatically
        $fin = FinancialYear::latest('id')->first();
        $curDate = date("Y-m-d");
        if($curDate >= $fin->end_date){
            $new_fin = new FinancialYear();
            $new_fin->start_date = date('Y-m-d', strtotime($fin->end_date . ' +1 day'));;
            $new_fin->end_date = date("Y-m-d", strtotime($fin->end_date .'+1 year'));
            $new_fin->description = date("Y").'-'.substr(date("Y-m-d", strtotime($fin->end_date .'+1 year')), 2, 2);
            $new_fin->save();
        }
        $expenses = expenseAmount::join('expense_names', 'expense_names.id', '=', 'expense_amounts.expense_name')
            ->select(DB::raw("SUM(expense_amounts.expense_amount) as total, expense_names.expense_name"))
            ->groupBy('expense_names.expense_name')
            ->where('expense_amounts.state', false)
            ->get();
        $earnings = expenseAmount::join('expense_names', 'expense_names.id', '=', 'expense_amounts.expense_name')
            ->select(DB::raw("SUM(expense_amounts.expense_amount) as total, expense_names.expense_name"))
            ->groupBy('expense_names.expense_name')
            ->where('expense_amounts.state', true)
            ->get();
            
        $monthEx = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear', DB::raw('MONTH(am.expense_date) month'))
            ->groupBy('am.finYear', DB::raw('MONTH(am.expense_date)'))
            ->orderBy(DB::raw('MONTH(am.expense_date)'))
            ->where('am.state', false)
            ->where('am.finYear', $fin->id)
            ->get();

        $monthEr = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear', DB::raw('MONTH(am.expense_date) month'))
            ->groupBy('am.finYear', DB::raw('MONTH(am.expense_date)'))
            ->orderBy(DB::raw('MONTH(am.expense_date)'))
            ->where('am.state', true)
            ->where('am.finYear', $fin->id)
            ->get();
    
        $label =[];
        $value = [];
        
        $labelEar = [];
        $valueEar = [];

        $labelEx = [];
        $valueEx = [];

        $finYear;

        $labelEr = [];
        $valueEr = [];

        $total_exp = 0;
        $total_ear = 0;
        foreach ($expenses as $expense){
            array_push($label, substr($expense->expense_name, 0, 6));
            array_push($value, $expense->total);
            $total_exp += $expense->total;
        }

        foreach ($earnings as $earning){
            array_push($labelEar, substr($earning->expense_name, 0, 6));
            array_push($valueEar, $earning->total);
            $total_ear += $earning->total;
        }
        
        foreach ($monthEx as $expMonth){
            array_push($labelEx, substr(date("F", strtotime('00-'.$expMonth->month.'-01')), 0, 4));
            array_push($valueEx, $expMonth->total);
            $finYear = $expMonth->finYear;
        }

        foreach ($monthEr as $earMonth){
            array_push($labelEr, substr(date("F", strtotime('00-'.$earMonth->month.'-01')), 0, 4));
            array_push($valueEr, $earMonth->total);
        }
    
        //last month earning, expense, savings
        $t_date = date('m');
        $lmEx = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear')
            ->groupBy('am.finYear', DB::raw('MONTH(am.expense_date)'))
            ->where('am.state', false)
            ->where(DB::raw('MONTH(am.expense_date)'), $t_date)
            ->where('am.finYear', $fin->id)
            ->get();

        $lmEr = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear')
            ->groupBy('am.finYear', DB::raw('MONTH(am.expense_date)'))
            ->where('am.state', true)
            ->where(DB::raw('MONTH(am.expense_date)'), $t_date)
            ->where('am.finYear', $fin->id)
            ->get();
        
        $lmExAmount = $lmEx->isNotEmpty() ? $lmEx[0]->total : 0;
        $lmErAmount = $lmEr->isNotEmpty() ? $lmEr[0]->total : 0;

        $savings = $lmErAmount-$lmExAmount;
        $savings_perc = 0;
        if($lmErAmount >0){
            $savings_perc = round((($savings)/$lmErAmount)*100, 2);
        }

        return view('super_admin/dashboard',compact(
            'value', 'label', 'labelEar', 'valueEar', 'labelEx', 'valueEx', 'finYear', 'labelEr', 'valueEr',
            'savings', 'savings_perc', 'total_exp', 'total_ear'
        ));
    }
}
