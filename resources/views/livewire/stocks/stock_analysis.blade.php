<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#stockAnalysModal">
	+ Stock Analysis
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="stockAnalysModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">add a stock for analysis</h5>
                <button type="button" class="close" wire:click.prevent="cancel()" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>
                    <input type="hidden" wire:model="selected_id">

                    <div class="form-group row">
                        <label for="date" class="col-md-3 col-form-label">Stock Name</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" placeholder="Enter stock name" wire:model="stock_name">
                            @error('stock_name') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="buy_amount" class="col-md-3 col-form-label">Current Market Price</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="current_price" wire:model='current_price'>
                            @error('current_price') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="buy_count" class="col-md-3 col-form-label"> Debt To Equity</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="debt_equity" wire:model='debt_equity'>
                            @error('debt_equity') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="total_buy_amount" class="col-md-3 col-form-label"> Promoter Holding</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="promoter_holding" wire:model='promoter_holding'>
                            @error('promoter_holding') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="service_charge" class="col-md-3 col-form-label"> ROE</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="roe" wire:model='roe'>
                            @error('roe') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="service_charge" class="col-md-3 col-form-label"> ROCE</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="roce" wire:model='roce'>
                            @error('roce') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="service_charge" class="col-md-3 col-form-label"> Profit Growth %</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="profit_aft_tax" wire:model='profit_aft_tax'>
                            @error('profit_aft_tax') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="service_charge" class="col-md-3 col-form-label"> Divident</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="divident" wire:model='divident'>
                            @error('divident') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="{{ $selected_id ? 'analys_stock_update()':'analys_stock_store()'}}" class="btn btn-primary close-modal">{{ $selected_id ? 'Update':'Save'}}</button>
            </div>
        </div>
    </div>
</div>