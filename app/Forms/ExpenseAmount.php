<?php

namespace App\Forms;

use Kris\LaravelFormBuilder\Form;

class ExpenseAmount extends Form
{
    public function buildForm()
    {
        $this
            ->add('name', 'text');
    }
}
