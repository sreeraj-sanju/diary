<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#planedItemModal">
	+ New Plan For Buy
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="planedItemModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add New Product For Purchase</h5>
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
                        <label for="exampleFormControlInput1" class="col-md-2 col-form-label">Expected Amount</label>
                        <div class="col-md-9">
                            <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Enter Expected Amount" wire:model="expected_amount">
                            @error('expected_amount') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="expense_name" class="col-md-2 col-form-label">Priority</label>
                        <div class="col-md-9">
                            <select name="priority" class="form-control" id="" wire:model="priority">
                                <option value="">select a name</option>
                                @foreach ($data as $value)
                                <option value="{{$value->id}}">{{$value->priority_name}}</option>
                                @endforeach
                            </select>
                            @error('priority') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="plan_item_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>