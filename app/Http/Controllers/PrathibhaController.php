<?php

namespace App\Http\Controllers;

use App\Models\Anniversary;
use App\Models\Quiz;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Mpdf\Mpdf;
use PDF;

class PrathibhaController extends Controller
{
    public function prathibha()
    {
        return view('prathibha.prathibha_home');
    }

    public function prathibha_2022()
    {
        $year = date('Y');

        $lp = Anniversary::where('class', 'lp')->where('year', $year)->get();
        $v = Anniversary::where('class', 'v')->where('year', $year)->get();
        $vi = Anniversary::where('class', 'vi')->where('year', $year)->get();
        $vii = Anniversary::where('class', 'vii')->where('year', $year)->get();
        $viii = Anniversary::where('class', 'viii')->where('year', $year)->get();
        $ix = Anniversary::where('class', 'ix')->where('year', $year)->get();
        $x = Anniversary::where('class', 'x')->where('year', $year)->get();
        $plusOne = Anniversary::where('class', '+1')->where('year', $year)->get();
        $plusTwo = Anniversary::where('class', '+2')->where('year', $year)->get();
        $special = Anniversary::where('class', 'special')->where('year', $year)->get();

        $total = Anniversary::where('year', $year)->count('id');
        $tot_chain = Anniversary::where('program_name', 'chain')->where('year', $year)->count();
        $tot_solo = Anniversary::where('program_name', 'solo')->where('year', $year)->count();
        $tot_group = Anniversary::where('program_name', 'group')->where('year', $year)->count();
        $tot_folk = Anniversary::where('program_name', 'folk')->where('year', $year)->count();
        $tot_duet = Anniversary::where('program_name', 'duet')->where('year', $year)->count();
        $tot_skit = Anniversary::where('program_name', 'skit')->where('year', $year)->count();
        $tot_drama = Anniversary::where('program_name', 'drama')->where('year', $year)->count();
        $tot_classical = Anniversary::where('program_name', 'classical')->where('year', $year)->count();
        $tot_karoke = Anniversary::where('program_name', 'karoke')->where('year', $year)->count();
        $tot_mime = Anniversary::where('program_name', 'mime')->where('year', $year)->count();
        $tot_special = Anniversary::where('class', 'special')->where('year', $year)->count();

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
            // 'file_name' => 'required',
        ])->validate();
        $year = date('Y');
        $class = $request['class'];
        $audio = $request->file("file_name");
        $destination = "prathibha_annual_" . $year . "/" . $class;
        if ($audio) {
            $audio_name = $audio->getClientOriginalName();
            $audio->move($destination, $audio_name);
        } else {
            $audio_name = 'not_get';
        }

        DB::beginTransaction();
        try {
            Anniversary::create([
                'year' => $year,
                'class' => $class,
                'contastant' => $request['contastant_name'],
                'participant' => $request['participants_name'],
                'program_name' => $request['program_name'],
                'song_name' => $request['song_name'],
                'file_name' => $destination . "/" . $audio_name,
            ]);
            DB::commit();
            return redirect()->route("prathibha_2022")->with(
                Session::flash("message", " Program Added Successfully"),
                Session::flash("alert-class", "alert-success"),
            );
        } catch (\Exception $e) {
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
                $participant = $value->participant;
                $song = $value->song_name;
                $file = $value->file_name;
                $program = $value->program_name;
                $class = $value->class;
            }
            return response()->json([
                'status' => 200,
                'contastant' => $contastant,
                'participant' => $participant,
                'id' => $id,
                'song' => $song,
                'file' => $file,
                'program' => $program,
                'class' => $class,
            ]);
        } else {
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
        ])->validate();
        $id = $request->post('id');

        $class = $request['class'];
        $audio = $request->file("file_name");
        $year = date('Y');
        if ($audio) {
            $destination = "prathibha_annual_" . $year . "/" . $class;
            $audio_name = $audio->getClientOriginalName();
            $audio->move($destination, $audio_name);
        }

        DB::beginTransaction();
        try {
            Anniversary::where('id', $id)->update([
                'class' => $request['class'],
                'contastant' => $request['contastant_name'],
                'participant' => $request['participants_name'],
                'program_name' => $request['program_name'],
                'song_name' => $request['song_name'],
            ]);

            if ($audio) {
                Anniversary::where('id', $id)->update([
                    'file_name' => $destination . "/" . $audio_name,
                ]);
            }
            DB::commit();
            return redirect()->route("prathibha_2022")->with(
                Session::flash("message", " Program Updated Successfully"),
                Session::flash("alert-class", "alert-success"),
            );
        } catch (\Exception $e) {
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
        } catch (\Exception $e) {
            DB::rollback();
            return response()->json([
                'status' => 400,
            ]);
        }
    }

    public function quiz_ins(Request $request)
    {
        $request->validate([
            'std' => 'required|string|max:255',
            'item' => 'required',
            'file' => 'required', // Adjust the image validation rules as needed
        ]);

        $year = date('Y');
        $file = $request->file('file');
        $destination = $year . "/quiz/" . $request->input('std');
        // dd($file->getClientOriginalExtension());
        $file_name = time() . '.' . $file->getClientOriginalExtension();
        $file->move($destination, $file_name);

        // Create a new user or store the data in your database (assuming you have a `User` model)
        $item = $request->input('item');
        $std = $request->input('std');

        $data = [
            'std' => $std,
            'year' => $year,
        ];

        if ($item == 'image') {
            $data['imageName'] = $destination . '/' . $file_name;
        } elseif ($item == 'audio') {
            $data['audioName'] = $destination . '/' . $file_name;
        } elseif ($item == 'video') {
            $data['videoName'] = $destination . '/' . $file_name;
        }

        // Check if the record with the same 'std' and 'year' values exists,
        // and either update it or insert a new record
        $quiz = Quiz::updateOrInsert(
            ['std' => $std, 'year' => $year],
            $data
        );

        if ($quiz) {
            session()->flash('message', 'Item was successfully created!');
            return redirect()->route('quiz');
        }
    }

    public function quiz()
    {
        $year = date('Y');
        $quizes = Quiz::where('year', $year)->get();
        return view('prathibha.quiz', ['quizes' => $quizes]);

        $data = [];
        $std = 'null';
        $item = 'null';
        $index = -1;

        foreach ($quizes as $key => $value) {
            // Check if $std is different from the current $value->std
            if ($std != $value->std) {
                $data[$key]['std'] = $value->std;
                $data[$key]['year'] = $value->year;
                $data[$key]['item'] = $value->item;
                $data[$key]['imageUrl'] = ''; // Initialize imageUrl as an empty string
                $data[$key]['audioUrl'] = ''; // Initialize audioUrl as an empty string
                $data[$key]['videoUrl'] = ''; // Initialize videoUrl as an empty string
                $index++;
            }

            // Check if $item is different from the current $value->item
            if ($item != $value->item) {
                // Update the corresponding URL based on the current $value->item
                if ($value->item == 'image') {
                    $data[$index]['imageUrl'] = $value->fileName;
                } elseif ($value->item == 'audio') {
                    $data[$index]['audioUrl'] = $value->fileName;
                } elseif ($value->item == 'video') {
                    $data[$index]['videoUrl'] = $value->fileName;
                }
            }

            $std = $value->std; // Update $std to the current $value->std
            $item = $value->item; // Update $item to the current $value->item
        }

        $merged = [];
        $index = 0;
        foreach ($data as $item) {
            $std = $item['std'] ?? '';
            if (!empty($std)) {
                if (!isset($merged[$std])) {
                    $merged[$index] = $item;
                } else {
                    $merged[$index] = array_merge($merged[$std], $item);
                }
            }
            $index++;
        }

        // dd($merged);
        $quizes = $merged;
        return response()->json($quizes);
    }

    public function quiz_image(Request $request)
    {
        $id = $request->input('id');
        $item = $request->input('item');
        $year = date('Y');
        $quiz = Quiz::where('year', $year)
            ->where('id', $id)
            ->first();
        if ($item == 'image') {
            $image = asset($quiz['imageName']);
            return response()->json($image);
        } else if ($item == 'audio') {
            $audio = asset($quiz['audioName']);
            return response()->json($audio);
        } elseif ($item == 'video') {
            $video = asset($quiz['videoName']);
            return response()->json($video);
        }
    }

    public function report()
    {
        $year = date('Y');
        $data = Anniversary::where('year', $year)->orderBy('class', 'asc')->get();

        return view('prathibha.report', compact(
            'data'
        ));
    }

    public function priority(Request $request)
    {
        $id = $request->input('id');
        $priority = $request->input('priority');
        Anniversary::where('id', $id)->update([
            'priority' => $priority,
        ]);
        session()->flash('message', 'Updated!');
        return redirect()->route('report');
    }

    public function exportdompdf()
    {
        $year = date('Y');
        // Register the Malayalam font
        $font = public_path('fonts/rachana.ttf'); // Adjust the path to your font file
//    PDF::setFontLocation($font);

        $data = Anniversary::where('year', $year)->orderBy('priority', 'asc')->get();
        view()->share('data', $data);
        $pdf = PDF::loadView('prathibha.export')
            ->setPaper('a4', 'portrait');
// dd($pdf);
        return $pdf->stream('ProgramList');
    }

    public function export()
    {
        // Create mPDF instance
        $mpdf = new Mpdf();

        // Define Malayalam font settings
        $malayalamFontFamily = 'rachana'; // Replace with your font family name
        $malayalamFontFile = public_path('fonts/rachana.ttf'); // Replace with the actual font path

        // Set the Malayalam font
        $mpdf->autoLangToFont = true;
        $mpdf->autoScriptToLang = true;

        $year = date('Y');
        $data = Anniversary::where('year', $year)->orderBy('priority', 'asc')->get();

        $html = view('prathibha.export', compact('data'))->render();
        $mpdf->WriteHTML($html);

        $mpdf->Output('document.pdf', 'I');
    }
}
