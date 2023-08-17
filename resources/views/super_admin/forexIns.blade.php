@extends('super_admin.profile')
@section('content')
   
            <section>
                <div class="colour"></div>
                <div class="colour"></div>
                <div class="colour"></div>
                <div class="box">
                    <!-- <div class="square" style="--i: 0"></div>
                    <div class="square" style="--i: 1"></div>
                    <div class="square" style="--i: 2"></div>
                    <div class="square" style="--i: 3"></div>
                    <div class="square" style="--i: 4"></div> -->
                    <div class="container">
                        <div class="form sr-form">
                            <form action="{{route('forexSave')}}" method="POST">
                                @csrf
                                <div class="input__box">
                                    <label>Date</label>
                                    <input type="date" name="date" placeholder="date time" />
                                </div>
                                <div class="text__box">
                                    <label>description</label>
                                    <textarea cols="50" rows="3" name="desc"></textarea>
                                </div>
                                <div class="input__box">
                                    <label>Entry level</label>
                                    <input class="sr-level" type="text" name="entry" placeholder="Entry point" />
                                    <input class="sr-level1" type="text" name="lot" placeholder="lot size" />
                                    <input class="sr-level2" type="radio" name="type" value="0"> BUY
                                    <input class="sr-level2" type="radio" name="type" value="1">SELL
                                </div>

                                
                                <div class="input__box">
                                    <input type="submit" value="submit" />
                                </div>
                               
                            </form>
                        </div>

                        
                    </div>
                </div>
            </section>
       
@endsection
