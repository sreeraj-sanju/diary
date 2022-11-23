<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#to-do">
	+ New To Do Item
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="to-do" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add New Item</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" wire:click.prevent="cancel()">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>
                    <div class="form-group row">
                        <label for="date" class="col-md-2 col-form-label">Date</label>
                        <div class="col-md-9">
                            <input type="date" class="form-control" id="date" placeholder="Select a date" wire:model="expense_date">
                            @error('expense_date') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>
                
                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="todo_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>