<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\{
    DB, Validator, Session
};
use App\Models\{
    Anniversary
 };
  

class PrathibhaController extends Controller
{
    public function prathibha(){
        return view('prathibha.prathibha');
    }

    public function prathibha_2022(){
        return view('prathibha.prathibha_2022');
    }

     public function program_store(Request $request)
    {
        $validator=Validator::make($request->all(),[
            'class' => 'required',
            'contastant_name' => 'required',
            'program_name' => 'required',
            'song_name' => 'required ',
            'file_name' => 'required',
        ])->validate();
        $year = 2022;
       DB::beginTransaction();
       try{
           Anniversary::create([
            'year' => $year,
            'class' => $request['class'],
            'contastant' => $request['contastant_name'],
            'program_name' => $request['program_name'],
            'song_name' => $request['song_name'],
            'file_name' => $request['file_name'],
           ]);
           DB::commit();
           return redirect()->route("prathibha_2022")->with(
               Session::flash("message", " Program Added Successfully"), 
               Session::flash("alert-class", "alert-success"),
           );
       }catch(\Exception $e){
           DB::rollback();
           return back()->with(
               Session::flash("message", $e->getMessage()), 
               Session::flash("alert-class", "alert-danger"),
           );
       }
    }  
}
