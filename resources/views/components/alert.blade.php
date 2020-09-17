<div>
    <!-- The whole future lies in uncertainty: live immediately. - Seneca -->
    @if($message)
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-{{ $type }}">
                    <button type="button" class="close" data-dismiss='alert' aria-label="close">
                        <i class="fa fa-close"></i>
                    </button>
                    <span>{{ $message }}</span>
                </div>
            </div>
        </div>
    @endif
</div>