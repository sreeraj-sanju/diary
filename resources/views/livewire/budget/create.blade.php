<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#expenseModal">
	+ New Names
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="expenseModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add New Names For Both Expense & Earnings</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Name</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Name" wire:model="expense_name">
                        @error('expense_name') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="state" id="inlineRadio1" value="0" wire:model="state" checked >
                        <label class="form-check-label" for="inlineRadio1">Expense</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="state" wire:model="state" id="inlineRadio2" value="1">
                        <label class="form-check-label" for="inlineRadio2">Earnings</label>
                    </div>
                    @error('state') <span class="text-danger error">{{ $message }}</span>@enderror
                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>