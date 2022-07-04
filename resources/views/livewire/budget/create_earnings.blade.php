<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#earningsAmountModal">
	+ New Earnings Amount
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="earningsAmountModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Earnings Amount</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
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
                            <select name="expense_name" class="searchable search" id="" wire:model="expense_name">
                                <option value="">select a name</option>
                                @foreach ($earning_names as $name)
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
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="earnings_amount_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>