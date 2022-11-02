<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Laravel\Sanctum\HasApiTokens;

class LoginApiController extends Controller
{
    use HasApiTokens;
    // START REGISTER FUNCTION
    public function blog_register(Request $request)
    {
        // $data = $request->validate([
        //     'name' => 'required | string',
        //     'email' => 'required| email | unique:blog_users,email',
        //     'password' => 'required|min:6',
        //     'deviceName' => 'required',
        //     'version' => 'required',
        //     'identifier' => 'required'
        // ]);

        $data = $request->validate([
            'name' => 'required | string',
            'email' => 'required| email',
            'password' => 'required|min:6',
        ]);

        try {
            DB::beginTransaction();
            $blog_user = DB::connection('mysql2')->table('blog_users')->insert([
                'bloggerName' => $data['name'],
                'email' => $data['email'],
                // 'password' => bcrypt($data['password'])
                'password' => $data['password'],
            ]);
            DB::commit();
        } catch (\Exception $e) {
            DB::rollBack();
            return response([
                'message' => $e->getMessage(),
            ], 400);
        }
        return response([
            'user' => $blog_user,
            'tocken' => bcrypt($blog_user->id . mt_rand(10000, 999999) . $blog_user->id),
        ], 200);
    }
    // END REGISTER FUNCTION

    // start login images
    public function login_images()
    {
        $images = [
            "status" => "success",
            "image" => asset("images/bg.jpg"),
        ];
        $error = array('status' => 'success');
        return response()->file(public_path("/images/bg.jpg"));
    }

    // START LOGIN
    public function blog_login(Request $request)
    {

        $data = $request->validate([
            'email' => 'required| email',
            'password' => 'required|min:6',
        ]);

        $user = DB::connection('mysql2')->table('blog_users')->where($data)->first();
        if ($user) {
            $token = bcrypt($user->id . mt_rand(10000, 999999) . $user->id);
            return response([
                'user' => $user,
                'token' => $token,
            ], 200);
        }else{
            return response([
                'message' => "user not found. Register first",
            ], 400);
        }

    }
    // END LOGIN

    // START FUNCTION FOR LOGOUT
    public function logout()
    {
        auth()->user()->tokens()->delete();
        return response([
            'message' => 'Logout success',
        ], 200);
    }
    // END FUNCTION FOR LOGOUT

    public function user()
    {
        return response([
            'user' => auth()->user(),
        ], 200);
    }
}
