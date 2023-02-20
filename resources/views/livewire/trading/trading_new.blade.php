<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#tradeBuyModal">
    + Buy Trades
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="tradeBuyModal" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Buy A Stock For Swing Trade</h5>
                <button type="button" wire:click.prevent="cancel()" class="close" data-dismiss="modal"
                    aria-label="Close">
                    <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
            <div class="modal-body sr-body">
                <form>
                    <input type="hidden" name="selected_id">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="date" class="col-md-4 col-form-label">Buy Date</label>
                                <div class="col-md-7">
                                    <input type="date" class="form-control" id="date"
                                        placeholder="Select a date" wire:model="buy_date">
                                    @error('buy_date')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="date" class="col-md-4 col-form-label">Sell Date</label>
                                <div class="col-md-7">
                                    <input type="date" class="form-control" id="date"
                                        placeholder="Select a date" wire:model="sell_date">
                                    @error('sell_date')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="stock_name" class="col-md-4 col-form-label">Stock Name</label>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" name="stock_name"
                                        wire:model='stock_name'>
                                    @error('stock_name')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="single_stock_amount" class="col-md-4 col-form-label">Single Stock
                                    Amount</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="single_stock_amount"
                                        wire:model='single_stock_amount'>
                                    @error('single_stock_amount')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="buy_count" class="col-md-4 col-form-label"> Stock Buy Count</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="buy_count" wire:model='buy_count' wire:keydown="total()">
                                    @error('buy_count')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            @livewire('trading.total-buy')
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group row">
                                <label for="buy_brockerage" class="col-md-4 col-form-label"> Buy Brockerage</label>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" name="buy_brocker"
                                        wire:model='buy_brocker'>
                                    @error('buy_brocker')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group row">
                                <label for="sell_brockerage" class="col-md-4 col-form-label"> Sell Brockerage</label>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" name="sell_brocker"
                                        wire:model='sell_brocker'>
                                    @error('sell_brocker')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group row">
                                <label for="total_sell_amount" class="col-md-4 col-form-label"> Total Sell
                                    Amount</label>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" name="total_sell_amount"
                                        wire:model='total_sell_amount'>
                                    @error('total_sell_amount')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="buy_reason" class="col-md-4 col-form-label"> Buy Reason</label>
                                <div class="col-md-7">
                                    <textarea type="text" class="form-control" name="buy_reason" wire:model='buy_reason'></textarea>
                                    @error('buy_reason')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="loss_reason" class="col-md-4 col-form-label"> Loss Reason</label>
                                <div class="col-md-7">
                                    <textarea type="text" class="form-control" name="loss_reason" wire:model='loss_reason'></textarea>
                                    @error('loss_reason')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn"
                    data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="trade_save()"
                    class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>
