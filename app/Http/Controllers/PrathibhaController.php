<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\{
    DB, Validator, Session
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
        dd($request);
        $validator=Validator::make($request->all(),[
            'class' => 'required',
            'program' => 'required',
            'group'=> 'required',
            'contestant_name' => 'required',
            'song_name' => 'required ',
            'song' => 'required'
        ])->validate();
        
       $song=$request->file("song");
       $date=date("M-Y");
       $destination="prathibha/prAsset/";
       $song_name=$song->getClientOriginalName();
       $song->move($destination, $song_name);
       dd('success');
       DB::beginTransaction();
       try{
           FleetCategory::create([
               "code"              =>  $request["code"],
               "name"              =>  $request["name"],
               "image"             =>  $date.'/'.$image_name,
               "status"            =>  $request["status"]
           ]);
           DB::commit();
           return redirect()->route("fleet_categories.index")->with(
               Session::flash("message", " Fleet category added successfully"), 
               Session::flash("alert-class", "alert-success"),
           );
       }catch(\Exception $e){
           DB::rollback();
           return back()->with(
               Session::flash("message", "Cannot add the fleet category"), 
               Session::flash("alert-class", "alert-danger"),
           );
       }
    }  
}
