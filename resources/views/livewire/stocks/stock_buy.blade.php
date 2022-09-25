<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#stockBuyModal">
	+ Buy Stocks
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="stockBuyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Buy A Stock</h5>
                <button type="button" wire:click.prevent="cancel()" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>

                    <div class="form-group row">
                        <label for="date" class="col-md-2 col-form-label">Date</label>
                        <div class="col-md-9">
                            <input type="date" class="form-control" id="date" placeholder="Select a date" wire:model="buy_date">
                            @error('buy_date') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="stock_name" class="col-md-2 col-form-label">Stock Names</label>
                        <div class="col-md-9">
                            <select name="stock_name" class="form-control"  id="" wire:model="stock_name">
                                <option value="">select a name</option>
                                @foreach ($stock_names as $name)
                                <option value="{{$name->id}}">{{$name->name}}</option>
                                @endforeach
                            </select>
                            @error('stock_name') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="buy_amount" class="col-md-2 col-form-label">Single Stock Amount</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="buy_amount_single" wire:model='buy_amount_single'>
                            @error('buy_amount_single') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="buy_count" class="col-md-2 col-form-label"> Stock Buy Count</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="buy_count" wire:model='buy_count'>
                            @error('buy_count') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="total_buy_amount" class="col-md-2 col-form-label"> Total Buy Amount</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="total_buy_amount" wire:model='total_buy_amount'>
                            @error('total_buy_amount') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="service_charge" class="col-md-2 col-form-label"> Service Charge</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="buy_charge" wire:model='buy_charge'>
                            @error('buy_charge') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="stock_buy_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>