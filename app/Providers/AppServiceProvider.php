<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
// use Illuminate\Routing\UrlGenerator\URL;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        // URL::forceScheme('https');
=======
	    Schema::defaultStringLength(191);
	    
>>>>>>> adb6cd4 (first changes from aws)
    }

}
