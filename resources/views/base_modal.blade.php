<!-- Modal -->
<div wire:ignore.self class="modal fade srmodal" id="base_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 50% !important">
        <div class="modal-content">
            <div class="modal-header">
                @yield('modal_header')
                <button type="button" wire:click.prevent="cancel()" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
            <div class="modal-body">
                @yield('modal_body')
            </div>
            <div class="modal-footer">
                @yield('modal_action')
            </div>
        </div>
    </div>
</div>