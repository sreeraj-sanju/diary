<?php

namespace App\Http\Controllers;

use App\Models\ExpenseName;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx\Rels;

class ReportController extends Controller
{
    public function reports_index(Request $request) {
        $options = ExpenseName::all();
        $filterValue = $request->input('filterValue') ? $request->input('filterValue') : 0;

        $expenseName = ExpenseName::find($filterValue);

        if ($expenseName) {
            $expenseAmounts = $expenseName->expenseAmounts;
            // Process the expense amounts as needed
            // foreach ($expenseAmounts as $expenseAmount) {
            //     dump($expenseAmount->expenseName->expense_name);
            //     }
            //     dd(1);
            return response()->json($expenseAmounts);
        } else {
            // Handle the case when the expense name is not found
            $expenseAmounts = [];
        }
        return view('reports/reports_index', compact('options', 'expenseAmounts'));
    }
    public function reports(Request $request)
    {

        /* queries for various
        // Retrieve an expense name and its associated expense amounts
        $expenseName = ExpenseName::find(1);
        $expenseAmounts = $expenseName->expenseAmounts;

        // Loop through the expense amounts
        foreach ($expenseAmounts as $expenseAmount) {
        dump($expenseAmount->amount);
        }

        // Alternatively, you can retrieve the expense amounts directly
        $expenseAmounts = ExpenseName::find(1)->expenseAmounts;
        dump($expenseAmounts);
        // You can also eager load the expense amounts to improve performance
        $expenseName = ExpenseName::with('expenseAmounts')->find(1);
        dd($expenseName); */
        $filterValue = $request->input('filterValue') ? $request->input('filterValue') : 0;

        $expenseName = ExpenseName::find($filterValue);

        if ($expenseName) {
            $expenseAmounts = $expenseName->expenseAmounts;
            // Process the expense amounts as needed
        } else {
            // Handle the case when the expense name is not found
            $expenseAmounts = [];
        }
        
        // foreach($expenseAmounts as $expenseAmount){
        //     dump($expenseAmount);
        //     dd($expenseAmount->expense_amount );
        // }

        ob_start();
        // Your logic for generating the view goes here
        echo view('reports/general_reports', compact('expenseAmounts', 'options'));
        $output = ob_get_clean();

        return View::make('your-view', compact('data'))->render();
        return $output;
        return view('reports/general_reports', compact('expenseAmounts', 'options'));
    }
}
