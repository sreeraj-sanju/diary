@extends('super_admin.profile')
@section('content')
    <div class="content-section" style="overflow-x: scroll;">
        <div class="content-section-title">
            <a class="content-button status-button" href="{{ route('forexIns') }}">Insert</a>
        </div>
        <div class="apps-card">
            @foreach ($data as $value)
                <div class="app-card sr-card sr-card1">
                    <span>
                        <svg viewBox="0 0 512 512" style="border: 1px solid #a059a9">
                            <!-- <path xmlns="http://www.w3.org/2000/svg" -->

                            <g xmlns=""
                                d="M480 0H32C14.368 0 0 14.368 0 32v448c0 17.664 14.368 32 32 32h448c17.664 0 32-14.336 32-32V32c0-17.632-14.336-32-32-32z"
                                fill="#210027" data-original="#7b1fa2" />
                            <!-- <g xmlns="http://www.w3.org/2000/svg"> -->
                            <g xmlns="">
                                <path
                                    d="M192 64h-80c-8.832 0-16 7.168-16 16v352c0 8.832 7.168 16 16 16s16-7.168 16-16V256h64c52.928 0 96-43.072 96-96s-43.072-96-96-96zm0 160h-64V96h64c35.296 0 64 28.704 64 64s-28.704 64-64 64zM400 256h-32c-18.08 0-34.592 6.24-48 16.384V272c0-8.864-7.168-16-16-16s-16 7.136-16 16v160c0 8.832 7.168 16 16 16s16-7.168 16-16v-96c0-26.464 21.536-48 48-48h32c8.832 0 16-7.168 16-16s-7.168-16-16-16z"
                                    fill="#f6e7fa" data-original="#e1bee7" />
                            </g>
                        </svg>
                        Date : {{ $value->Date }}
                    </span>
                    <form method="POST" action="{{ route('forexUpdate') }}">
                        @csrf
                        <div class="app-card__subtext">
                            <ul>
                                <li>
                                    <input type="hidden" name="id" value="{{ $value->id }}" />
                                    <textarea name="desc" cols="110" rows="5">{{ $value->desc }}</textarea>
                                </li>
                                <div class="app-card-buttons">
                                    <button class="content-button status-button">Update</button>
                                </div>
                    </form>
                    @php
                        
                        $trades = App\Models\ForexTrade::where('order_id', $value->id)->get();
                    @endphp
                    @foreach ($trades as $trade)
                        <form action="{{route('tradeUpdate')}}" method="post">
                            @csrf
                            <li>
                                <input type="hidden" value="{{$trade->id}}" name="tradeId">
                                <input class="sr-level" type="text" name="entry" placeholder="Entry point"
                                    value="{{ $trade->entry }}" />
                                <input class="sr-level1" type="text" name="lot" placeholder="lot size"
                                    value="{{ $trade->lot }}" />
                                <input class="sr-level2" type="radio" name="type" value="0"
                                    {{ $trade->type == 0 ? 'checked' : '' }}> BUY
                                <input class="sr-level2" type="radio" name="type" value="1"
                                    {{ $trade->type == 1 ? 'checked' : '' }}>SELL
                                    <input type="text" class="sr-level" name="exit" value="{{ $trade->exit }}" placeholder="exit">
<input type="text" class="sr-level" name="profit" value="{{ $trade->amount }}" placeholder="amount">
                                    <button class="content-button status-button">Update</button>
                            </li>

                            
                        </form>
                    @endforeach
                    </ul>
                </div>
                <form action="{{route('tradeNext')}}" method="post">
                            @csrf
                <div class="app-card-buttons">
                <input type="hidden" name="id" value="{{ $value->id }}" />
                    <button class="content-button status-button">NEXT</button>
                </div>
</form>
        </div>
        @endforeach
    </div>
    </div>
@endsection
