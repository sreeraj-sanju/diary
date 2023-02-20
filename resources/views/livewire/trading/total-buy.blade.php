<div class="form-group row">
    <label for="total_buy_amount" class="col-md-4 col-form-label"> Total Buy Amount</label>
    <div class="col-md-7">
        <input type="text" class="form-control" name="total_buy_amount"
            wire:model='total_buy_amount'>
        @error('total_buy_amount')
            <span class="text-danger error">{{ $message }}</span>
        @enderror
    </div>
</div>
