<!-- Modal -->
<div wire:ignore.self class="modal fade" id="expenseUpdateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
       <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="date" class="col-md-2 col-form-label">Date</label>
                        <div class="col-md-9">
                            <input type="date" class="form-control" id="date" placeholder="Select a date" wire:model="expense_date">
                            @error('expense_date') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="expense_name" class="col-md-2 col-form-label">Expense Names</label>
                        <div class="col-md-9">
                            <select name="expense_name" class="form-control"  id="" wire:model="expense_name">
                                <option value="">select a name</option>
                                @foreach ($expense_names as $name)
                                <option value="{{$name->id}}">{{$name->expense_name}}</option>
                                @endforeach
                            </select>
                            @error('expense_name') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="expense_amount" class="col-md-2 col-form-label">Expense Amount</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="expense_amount" wire:model='expense_amount'>
                            @error('expense_amount') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <input type="hidden" wire:model="expense_id">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="expense_update()" class="btn btn-primary">Update</button>
            </div>
       </div>
    </div>
</div>