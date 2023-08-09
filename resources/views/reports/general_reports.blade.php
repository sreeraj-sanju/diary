
    
        @foreach ($expenseAmounts as $expenseAmount)
        <tr>
          <td>{{ $expenseAmount->expenseName->expense_name }}</td>
          <td>{{ $expenseAmount->expense_amount }}</td>
          <td>{{ $expenseAmount->expense_date }}</td>
        </tr>
        @endforeach
   
