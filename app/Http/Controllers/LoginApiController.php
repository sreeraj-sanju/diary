<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Routing\UrlGenerator;

class LoginApiController extends Controller
{
    // start base url
    public function get_base_url()
    {
        return env('APP_URL');
    }

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
}