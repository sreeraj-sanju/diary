<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#calculationModal"
    wire:click.prevent="amount()">
    + Calculation
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="calculationModal" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Calculate the amount related to stock</h5>
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
                                <label for="date" class="col-md-4 col-form-label">Calculation Date</label>
                                <div class="col-md-7">
                                    <input type="date" class="form-control" id="date"
                                        placeholder="Select a date" wire:model="calc_date">
                                    @error('calc_date')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="stock_name" class="col-md-4 col-form-label">Stock Name</label>
                                <div class="col-md-7">
                                    <input type="stock_name" class="form-control" id="stock_name"
                                        placeholder="Enter a stock_name" wire:model="stock_name">
                                    @error('stock_name')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="amount_avail" class="col-md-4 col-form-label">Amount Available</label>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" name="amount_avail"
                                        wire:model='amount_avail'>
                                    @error('amount_avail')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="buy_amount" class="col-md-4 col-form-label">Buy Price</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="buy_amount"
                                        wire:model='buy_amount'>
                                    @error('buy_amount')
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
                                    <input type="number" class="form-control" name="buy_count" wire:model='buy_count'>
                                    @error('buy_count')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="total_buy_amount" class="col-md-4 col-form-label"> Total Buy Amount</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="total_buy_amount"
                                        wire:model='total_buy_amount'>
                                    @error('total_buy_amount')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                    {{ $total }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="stop_loss" class="col-md-4 col-form-label"> Stop loss</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="stop_loss" wire:model='stop_loss'>
                                    @error('stop_loss')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="target" class="col-md-4 col-form-label"> Target</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="target" wire:model='target'>
                                    @error('target')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="expected_profit" class="col-md-4 col-form-label"> Expected Profit</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="expected_profit"
                                        wire:model='expected_profit'>
                                    @error('expected_profit')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="expected_loss" class="col-md-4 col-form-label"> Expected Loss</label>
                                <div class="col-md-7">
                                    <input type="number" class="form-control" name="expected_loss"
                                        wire:model='expected_loss'>
                                    @error('expected_loss')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="ratio" class="col-md-4 col-form-label"> Ratio</label>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" name="ratio" wire:model='ratio'>
                                    @error('ratio')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="amount_accnt" class="col-md-4 col-form-label">Amount in Account</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="amount_accnt"
                                        wire:model='amount_accnt'>
                                    @error('amount_accnt')
                                        <span class="text-danger error">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="col-md-3">
                                    <button type="button" wire:click.prevent="amount_fill()"
                                        class="btn btn-info close-modal">Update</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn"
                    data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="calculation_store()"
                    class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>
