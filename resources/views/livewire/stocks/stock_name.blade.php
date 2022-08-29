<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#stockNameModal">
	+ New Stocks
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="stockNameModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add New Stock Name</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Name</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Name" wire:model="name">
                        @error('name') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="stock_name_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>