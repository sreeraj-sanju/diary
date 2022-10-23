<button type="button" class="btn btn-primary sr-button" data-toggle="modal" data-target="#earningsAmountModal">
    + New Program
</button>
<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="earningsAmountModal" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                <h5 class="modal-title sr-title" id="exampleModalLabel">Add New Earnings Amount</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                    wire:click.prevent="cancel()">
                    <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
            <div class="modal-body sr-body">
                <form action="{{route('program_store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" wire:model="selected_id">

                    <div class="form-group row">
                        <label for="class" class="col-md-3 col-form-label">Class</label>
                        <div class="col-md-8">
                            <select name="class" class="form-control pr_form" id="" wire:model="class">
                                <option value="">select a class</option>
                                <option value="lp">LP</option>
                                <option value="v">V</option>
                                <option value="vi">VI</option>
                                <option value="vii">VII</option>
                                <option value="viii">VIII</option>
                                <option value="ix">IX</option>
                                <option value="x">X</option>
                                <option value="+1">+1</option>
                                <option value="+2">+2</option>
                            </select>
                            @error('class')
                                <span class="text-danger error">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="contastant_name" class="col-md-3 col-form-label">Contastant Name</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="contastant_name"
                                wire:model='contastant_name'>
                            @error('contastant_name')
                                <span class="text-danger error">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="class" class="col-md-3 col-form-label">Program</label>
                        <div class="col-md-8">
                            <select name="program_name" class="form-control pr_form" id="" wire:model="class">
                                <option value="">select a Program</option>
                                <option value="solo">Single Dance</option>
                                <option value="duet">Duet Dance</option>
                                <option value="group">Group Dance</option>
                                <option value="folk">Folk Dance</option>
                                <option value="classical">Classical Dance</option>
                                <option value="skit">Skit</option>
                                <option value="drama">Drama</option>
                                <option value="mime">Mime</option>
                                <option value="karoke">Karoke</option>

                            </select>
                            @error('class')
                                <span class="text-danger error">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="song_name" class="col-md-3 col-form-label">Song/Music Name</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="song_name" wire:model='song_name'>
                            @error('song_name')
                                <span class="text-danger error">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="file_name" class="col-md-3 col-form-label">File Name</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="file_name" wire:model='file_name'>
                            @error('file_name')
                                <span class="text-danger error">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <button type="submit" wire:click.prevent="program_store()"
                    class="btn btn-primary close-modal">Save</button>
                </form>
            </div>
            <div class="modal-footer sr-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary close-btn"
                    data-dismiss="modal">Close</button>
                <button type="submit" wire:click.prevent="program_store()"
                    class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>
