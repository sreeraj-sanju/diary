<?php

namespace App\Http\Controllers;

use App\Models\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;


class SettingsController extends Controller
{
    public function edit_settings()
    {
        $settings = Settings::where('id', 1)->get();
        return view('settings/general_settings', compact('settings'));
    }

    public function update_settings(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'app_name' => 'required',
            'app_description' => 'required',
            'app_phone' => 'required',
            'app_email' => 'required | email',
        ])->validate();
        $id = $request->post('id');

        $logo = $request->file('logo');
        $favi = $request->file('favicon');

        // Get the contents of the file
        $logo = $logo ? $logo->openFile()->fread($logo->getSize()) :'';
        $favi = $favi ? $favi->openFile()->fread($favi->getSize()) :'';    

        DB::beginTransaction();
        try {
            Settings::where('id', $id)->update([
                'app_name' => $request['app_name'],
                'app_description' => $request['app_description'],
                'app_phone' => $request['app_phone'],
                'app_email' => $request['app_email'],
            ]);

            if ($logo) {
                Settings::where('id', $id)->update([
                    'logo' => $logo,
                ]);
            }

            if ($favi) {
                Settings::where('id', $id)->update([
                    'favicon' => $favi,
                ]);
            }
            DB::commit();
            return redirect()->route("edit_settings")->with(
                Session::flash("message", " Settings Updated Successfully"),
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

    public function sessionOut()
    {
        Session::flush();
        
        Auth::logout();
        return redirect()->route("lo")->with(
            Session::flash("message", "Logout Successfully"),
            Session::flash("alert-class", "alert-success"),
        );
    }
}
