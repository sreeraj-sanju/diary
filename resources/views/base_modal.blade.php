<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="base_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog sr-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header sr-header">
                @yield('modal_header')
                <button type="button" wire:click.prevent="cancel()" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
            <div class="modal-body sr-body">
                @yield('modal_body')
            </div>
            <div class="modal-footer sr-footer">
                @yield('modal_action')
            </div>
        </div>
    </div>
</div>