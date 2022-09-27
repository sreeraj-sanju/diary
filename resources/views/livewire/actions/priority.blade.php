<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#priorityModal">
	+ New Priority
</button>

<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="priorityModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add New Priorities</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" wire:click.prevent="cancel()" >
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body sr-body">
                <form>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Priority Name</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Name" wire:model="priority_name">
                        @error('priority_name') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlInput1">Priority Code</label>
                        <input type="number" class="form-control" value = {{$priority_code}} id="exampleFormControlInput1" placeholder="Enter Priority Code" wire:model="priority_code">
                        @error('priority_code') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    
                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="priority_store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>