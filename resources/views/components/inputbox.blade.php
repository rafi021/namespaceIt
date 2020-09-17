    <!-- Simplicity is an acquired taste. - Katharine Gerould -->
    <div class="form-group {{ $errors->has($varName) ? 'has-danger': ''}} ">
        <label class="text-dark" for=""> {{ $labelName }} </label>
        <input type={{ $type }} name={{ $varName }} id="input-{{ $varName }}" class="form-control {{ $errors->has($varName) ? 'is-invalid': ''}}" placeholder="{{$placeholderName}}" value="{{old($varName, $dbvalue ?? null)}}">
        @if($errors->has($varName))
        <span id="{{ $varName }}-name" class="error text-danger" for='input-{{ $varName }}'>
            {{ $errors->first($varName) }}
        </span>
        @endif
    </div>
{{-- <div class="col-md-6 col-12 mb-3">
    <label for="jobTitle">Job Title</label>
    <input type="text" id="jobTitle" placeholder="e.g. web design">
</div> --}}