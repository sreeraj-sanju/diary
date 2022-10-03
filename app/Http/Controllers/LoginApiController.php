<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Routing\UrlGenerator;
use Illuminate\Support\Facades\Validator;

class LoginApiController extends Controller
{
    // START REGISTER FUNCTION
    public function blog_register(Request $request)
    {
        $data = $request->validate([
            'name' => 'required | string',
            'email' => 'required| email | unique:blog_users,email',
            'password' => 'required|min:6',
            'deviceName' => 'required',
            'version' => 'required',
            'identifier' => 'required'
        ]);

        try{
            DB::beginTransaction();
            $blog_user = connection('mysql2')->BlogUser::create([
                'bloggerName' => $data['name'],
                'email' => $data['email'],
                'password' => bcrypt($data['password'])    
            ]);
            DB::commit();
            $this->resetInputFields();
            $this->emit('successAction'); // Close model to using to jquery
        }catch(\Exception $e){
            DB::rollBack();
            $this->emit('failedAction'); // Close model to using to jquery
        }
        return response([
            'user' => $blog_user,
            'tocken' => $blog_user->createToken('secret')->plainTextToken
        ]);
    }
    // END REGISTER FUNCTION

    // start login images
    public function login_images()
    {
        $images=[
            "status"        =>  "success",
            "image"         =>  asset("images/bg.jpg"),
        ];
        $error = array('status' => 'success', );
        return response()->file(public_path("/images/bg.jpg"));
    }

    // START LOGIN
    public function login(Request $request)
    {
        
        $data = $request->validate([
            'email' => 'required| email | unique:blog_users,email',
            'password' => 'required|min:6',
        ]);

        if(!Auth::attempt($data)){
            return response([
                'message' => 'Invalid credentials',
            ], 403);
        }
        return response([
            'user' => auth()->user(),
            'tocken' => auth()->user()->createToken('secret')->plainTextToken
        ], 200);
    }
    // END LOGIN

    // START FUNCTION FOR LOGOUT
    public function logout()
    {
        auth()->user()->tokens()->delete();
        return response([
            'message' => 'Logout success'
        ], 200);
    } 
    // END FUNCTION FOR LOGOUT 

    public function user()
    {
        return response([
            'user' => auth()->user()
        ], 200);
    }
}
