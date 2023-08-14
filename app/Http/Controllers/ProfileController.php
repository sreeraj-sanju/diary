<?php

namespace App\Http\Controllers;

use App\Models\Todo;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function todoList()
    {
        $yest = Todo::where('completed', false)->whereDate('dateTime', '<', now())->orderBy('dateTime', 'asc')->get();
        $tomo = Todo::where('completed', false)->whereDate('dateTime', '>', now())->orderBy('dateTime', 'asc')->get();
        $today = Todo::where('completed', false)->whereDate('dateTime', '=', now())->orderBy('dateTime', 'asc')->get();
        return view('super_admin.todo', ['yest' => $yest, 'tomo' => $tomo, 'today' => $today]);
    }

    public function todoUpdate(Request $request)
    {
        $type = $request->input('date');
        if ($type == 1) {
            $data = Todo::whereDate('dateTime', '<', now())->orderBy('dateTime', 'desc')->get();
        } elseif ($type == 2) {
            $data = Todo::whereDate('dateTime', '>', now())->orderBy('dateTime', 'desc')->get();
        } elseif ($type == 3) {
            $data = Todo::whereDate('dateTime', '=', now())->orderBy('dateTime', 'desc')->get();
        }
        return view('super_admin.todoUpdate', ['data' => $data]);
    }

    public function todoIns()
    {
        $list = [];
        return view('super_admin.todo_ins', ['lists' => $list]);
    }

    public function todoSave(Request $request)
    {
        $request->validate([
            'dateTime' => 'required',
            'description' => 'required',
        ]);

        $quiz = Todo::create(
            ['dateTime' => $request->input('dateTime'),
                'description' => $request->input('description')]
        );

        if ($quiz) {
            session()->flash('message', 'Item was successfully created!');
            return redirect()->route('todoIns');
        } else {
            session()->flash('message', 'Error occured!');
            return redirect()->route('todoIns');
        }
    }

    public function todoUpdated(Request $request)
    {
        $checkboxValues = $request->input('todos', []); // Get the array of checkbox values

        // Update the table based on the checkbox values
        Todo::whereIn('id', $checkboxValues)
            ->update(['completed' => true]); // For example, update the 'status' column

            session()->flash('message', 'Item was successfully completed!');
            return redirect()->route('todoList');
    }
}
