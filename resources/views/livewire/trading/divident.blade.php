<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#dividentModal">
	+ Add Divident
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="dividentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add Divident Of A Stock</h5>
                <button type="button" wire:click.prevent="cancel()" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>

                    <div class="form-group row">
                        <label for="date" class="col-md-2 col-form-label">Date</label>
                        <div class="col-md-9">
                            <input type="date" class="form-control" id="date" placeholder="Select a date" wire:model="date">
                            @error('date') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="stock_name" class="col-md-2 col-form-label">Stock Names</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="stock_name" wire:model='stock_name'>
                            @error('stock_name') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="divident_percentage" class="col-md-2 col-form-label">Divident Percentage</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="divident_percentage" wire:model='divident_percentage'>
                            @error('divident_percentage') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="stock_count" class="col-md-2 col-form-label"> Buy Amount</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="stock_count" wire:model='stock_count'>
                            @error('stock_count') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="diveidnt_amount" class="col-md-2 col-form-label"> Divident Amount</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="divident_amount" wire:model='divident_amount'>
                            @error('divident_amount') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="issue_date" class="col-md-2 col-form-label">Issuing Date</label>
                        <div class="col-md-9">
                            <input type="date" class="form-control" id="issue_date" placeholder="Select a issue_date" wire:model="issue_date">
                            @error('issue_date') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="divident_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>