<?php

namespace App\Http\Controllers;

use App\Models\Anniversary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

use Illuminate\Support\Facades\Validator;

class PrathibhaController extends Controller
{
    public function prathibha()
    {
        return view('prathibha.prathibha');
    }

    public function prathibha_2022()
    {
        $lp = Anniversary::where('class', 'lp')->get();
        $v = Anniversary::where('class', 'v')->get();
        $vi = Anniversary::where('class', 'vi')->get();
        $vii = Anniversary::where('class', 'vii')->get();
        $viii = Anniversary::where('class', 'viii')->get();
        $ix = Anniversary::where('class', 'ix')->get();
        $x = Anniversary::where('class', 'x')->get();
        $plusOne = Anniversary::where('class', '+1')->get();
        $plusTwo = Anniversary::where('class', '+2')->get();
        $special = Anniversary::where('class', 'special')->get();

        $total = Anniversary::count('id');
        $tot_chain = count(Anniversary::where('program_name', 'chain')->get());
        $tot_solo = count(Anniversary::where('program_name', 'solo')->get());
        $tot_group = count(Anniversary::where('program_name', 'group')->get());
        $tot_folk = count(Anniversary::where('program_name', 'folk')->get());
        $tot_duet = count(Anniversary::where('program_name', 'duet')->get());
        $tot_skit = count(Anniversary::where('program_name', 'skit')->get());
        $tot_drama = count(Anniversary::where('program_name', 'drama')->get());
        $tot_classical = count(Anniversary::where('program_name', 'classical')->get());
        $tot_karoke = count(Anniversary::where('program_name', 'karoke')->get());
        $tot_mime = count(Anniversary::where('program_name', 'mime')->get());
        $tot_special = count(Anniversary::where('class', 'special')->get());

        return view('prathibha.prathibha_2022', compact(
            'lp', 'v', 'vi', 'vii', 'viii', 'ix', 'x', 'plusOne', 'plusTwo', 'total',
            'tot_chain', 'tot_solo', 'tot_group', 'tot_folk', 'tot_duet', 'tot_skit',
            'tot_drama', 'tot_classical', 'tot_karoke', 'tot_mime', 'special', 'tot_special'

        ));
    }

    public function program_store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'class' => 'required',
            'contastant_name' => 'required',
            'program_name' => 'required',
            'song_name' => 'required ',
            'file_name' => 'required',
        ])->validate();
        $year = 2022;
        DB::beginTransaction();
        try {
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
        } catch (\Exception$e) {
            DB::rollback();
            return back()->with(
                Session::flash("message", $e->getMessage()),
                Session::flash("alert-class", "alert-danger"),
            );
        }
    }

    public function program_edit($id)
    {
        $data = Anniversary::where('id', $id)->get();
        if ($data) {
            foreach ($data as $value) {
                $contastant = $value->contastant;
                $song = $value->song_name;
                $file = $value->file_name;
                $program = $value->program_name;
                $class = $value->class;
            }
            return response()->json([
                'status' => 200,
                'contastant'=>$contastant,
                'id' => $id,
                'song' => $song,
                'file' => $file,
                'program' => $program,
                'class' => $class
            ]);
        }else{
            return response()->json([
                'status' => 400,
            ]);
        }
    }

    public function program_update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'class' => 'required',
            'contastant_name' => 'required',
            'program_name' => 'required',
            'song_name' => 'required ',
            'file_name' => 'required',
        ])->validate();
        $id = $request->post('id');
        DB::beginTransaction();
        try {
            Anniversary::where('id', $id)->update([
                'class' => $request['class'],
                'contastant' => $request['contastant_name'],
                'program_name' => $request['program_name'],
                'song_name' => $request['song_name'],
                'file_name' => $request['file_name'],
            ]);
            DB::commit();
            return redirect()->route("prathibha_2022")->with(
                Session::flash("message", " Program Updated Successfully"),
                Session::flash("alert-class", "alert-success"),
            );
        } catch (\Exception$e) {
            DB::rollback();
            return back()->with(
                Session::flash("message", $e->getMessage()),
                Session::flash("alert-class", "alert-danger"),
            );
        }
    }

    public function program_delete($id)
    {
        DB::beginTransaction();
        try {
            Anniversary::where('id', $id)->delete();
            DB::commit();
            return response()->json([
                'status' => 200,
            ]);
        } catch (\Exception$e) {
            DB::rollback();
            return response()->json([
                'status' => 400,
            ]);
        }
    }
}
