@extends('super_admin.profile')
@section('content')
    <!-- <div class="sr-app-card">
        <span>
            Make your plans...Grab it later
        </span>
        <div class="app-card__subtext">
            HTML CSSResult Skip Results Iframe
            EDIT ON -->
            <section>
                <div class="colour"></div>
                <div class="colour"></div>
                <div class="colour"></div>
                <div class="box">
                    <div class="square" style="--i: 0"></div>
                    <div class="square" style="--i: 1"></div>
                    <div class="square" style="--i: 2"></div>
                    <div class="square" style="--i: 3"></div>
                    <div class="square" style="--i: 4"></div>
                    <div class="container">
                        <div class="form">
                        
                            <h3>Make your plan....Go For Grab</h3>
                            <form action="{{route('todoSave')}}" method="POST">
                                @csrf
                                <div class="input__box">
                                    <label>Date</label>
                                    <input type="datetime-local" name="dateTime" placeholder="date time" />
                                </div>
                                <div class="input__box">
                                    <label>description
                                    <input type="text" placeholder="Description" name="description" />
                                </div>
                                <div class="input__box">
                                    <input type="submit" value="submit" />
                                </div>
                                <!-- <p class="forget">
                                    Forgot Password? <a href="#">Click Here</a>
                                </p>
                                <p class="forget">
                                    Don't have an account? <a href="#">Sign Up</a>
                                </p> -->
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        <!-- </div>
        <div class="app-card-buttons">
            <button class="content-button status-button">Update</button>
            <div class="menu"></div>
        </div>
    </div> -->
@endsection
