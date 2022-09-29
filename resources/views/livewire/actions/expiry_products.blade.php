<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#expiry">
	+ Add Expiry Date Of Items
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="expiry" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add The Expiry Details Of your Products</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" wire:click.prevent="cancel()" >
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>
                    <div class="form-group row">
                        <label for="exampleFormControlInput1" class="col-md-2 col-form-label">Product Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Name" wire:model="product_name">
                            @error('product_name') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="exampleFormControlInput1" class="col-md-2 col-form-label">Start Date</label>
                        <div class="col-md-9">
                            <input type="date" class="form-control" id="exampleFormControlInput1" placeholder="Enter start date" wire:model="start_date">
                            @error('start_date') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="exampleFormControlInput1" class="col-md-2 col-form-label">End Date</label>
                        <div class="col-md-9">
                            <input type="date" class="form-control" id="exampleFormControlInput1" placeholder="Enter end date" wire:model="end_date">
                            @error('end_date') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="expiry_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>