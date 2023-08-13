<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function todoList() {
        $list = [];
        return view('super_admin.todo', ['lists' => $list]);   
    }
}
