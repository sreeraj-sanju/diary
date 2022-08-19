<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\expenseAmount;
use App\Models\ExpenseName;
use App\Models\Stock;
use App\Models\StockSell;
use App\Models\Electronics\BillAmount;
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
        //start monthly expense or earnings   
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
        
        $total_sav = $total_ear - $total_exp;
        $sav_percent = round(($total_sav/$total_ear)*100, 2);
        foreach ($monthEx as $expMonth){
            array_push($labelEx, substr(date("F", strtotime('00-'.$expMonth->month.'-01')), 0, 4));
            array_push($valueEx, $expMonth->total);
            $finYear = $expMonth->finYear;
        }

        foreach ($monthEr as $earMonth){
            array_push($labelEr, substr(date("F", strtotime('00-'.$earMonth->month.'-01')), 0, 4));
            array_push($valueEr, $earMonth->total);
        }
        //end monthly expense or earnings

        //start last month earning, expense, savings, debt paid earns, yearly expense and earns
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

        $debtP = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear')
            ->groupBy('am.finYear')
            ->where('am.state', false)
            ->where('am.expense_name', 34)
            ->where('am.finYear', $fin->id)
            ->get();

        $debtE = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear')
            ->groupBy('am.finYear')
            ->where('am.state', true)
            ->where('am.expense_name', 33)
            ->where('am.finYear', $fin->id)
            ->get();

        $lyEx = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear')
            ->groupBy('am.finYear')
            ->where('am.state', false)
            ->get();
        
        $lyEr = DB::table('expense_amounts', 'am')->join('financial_years as f', 'f.id', '=', 'am.finyear')
            ->select(DB::raw("SUM(am.expense_amount) as total"), 'f.description as finYear')
            ->groupBy('am.finYear')
            ->where('am.state', true)
            ->get();

        $labelYEx = [];
        $valueYEx = [];
        $valueYEr = [];
        foreach($lyEx as $expense){
            array_push($labelYEx, $expense->finYear);
            array_push($valueYEx, $expense->total); 
        }
        foreach($lyEr as $expense){
            array_push($valueYEr, $expense->total); 
        }

        $lmExAmount = $lmEx->isNotEmpty() ? $lmEx[0]->total : 0;
        $lmErAmount = $lmEr->isNotEmpty() ? $lmEr[0]->total : 0;
        $debtPA = $debtP->isNotEmpty() ? $debtP[0]->total : 0;
        $debtEA = $debtE->isNotEmpty() ? $debtE[0]->total : 0;
        $debtIA = $debtPA - $debtEA;

        $savings = $lmErAmount-$lmExAmount;
        $savings_perc = 0;
        if($lmErAmount >0){
            $savings_perc = round((($savings)/$lmErAmount)*100, 2);
        }
        //start last month earning, expense, savings, debt paid earns, yearly expense and earns

        //start annual data not using
        $annualExpense = DB::table('expense_amounts', 'am')
            ->select(DB::raw("SUM(am.expense_amount) as total"))
            ->groupBy('am.finYear')
            ->where('am.state', false)
            ->where('am.finYear', $fin->id)
            ->get();

        $annualEarns = DB::table('expense_amounts', 'am')
        ->select(DB::raw("SUM(am.expense_amount) as total"))
        ->groupBy('am.finYear')
        ->where('am.state', true)
        ->where('am.finYear', $fin->id)
        ->get();
        //end annual data not using

        //start stock 
        $stocks = DB::table('stock_names', 'sn')
            ->leftJoin('stocks as s', 's.stock_name', '=', 'sn.id')
            ->leftJoin('stock_sells as ss', 'ss.stock_name', '=', 'sn.id')
            ->select(DB::raw("SUM(s.total_buy_amount) as total"), 'sn.name', DB::raw("SUM(ss.total_sell_amount) as totalSell"))
            ->groupBy('sn.id')
            ->get();
        $stockData=[];
        $stockLabel=[];
        $stockSell = [];
        foreach($stocks as $stock){
            array_push($stockLabel, $stock->name);
            $buy = $stock->total;
            $sell = $stock->totalSell ? $stock->totalSell :0;
            array_push($stockData, $buy);
            array_push($stockSell, $sell);
        }

        $stockBuyAmount=Stock::sum('total_buy_amount');
        $stockSellAmount=StockSell::sum('total_sell_amount');
        $charge = Stock::sum('buy_charge') + StockSell::sum('buy_charge');
        $stockTotal = $stockBuyAmount + $charge;
        $profit = StockSell::sum('profit');
        $profit_perc = round(($profit/$stockTotal*100));
        // end stock

        //start electronics
        $comp_price = BillAmount::sum('component_price');
        $total_price = BillAmount::sum('amount_got');
        $amount_got = $total_price - $comp_price; 
        $amount_to_get = BillAmount::sum('total_price')-$total_price;
        //end electronics

        return view('super_admin/dashboard',compact(
            'value', 'label', 'labelEar', 'valueEar', 'labelEx', 'valueEx', 'finYear', 'labelEr', 'valueEr',
            'savings', 'savings_perc', 'total_exp', 'total_ear', 'debtPA', 'debtEA', 'debtIA', 'labelYEx', 
            'valueYEx', 'valueYEr', 'stockLabel', 'stockData', 'stockSell', 'total_sav', 'sav_percent',
            'stockTotal', 'stockSellAmount', 'profit', 'profit_perc', 'amount_got', 'amount_to_get'
        ));
    }
}
