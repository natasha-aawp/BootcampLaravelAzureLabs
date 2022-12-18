<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    //
    public function show($name, Request $request)
    {
        // data from url
        echo 'Data from url: ' . $name;
        echo '<br>';
        // method path()
        $path = $request->path();
        echo 'Method path: ' . $path;
        echo '<br>';
        // method is()
        $pattern = $request->is('pegawai/*');
        echo 'Method is: ' . $pattern;
        echo '<br>';
        // method url()
        $url = $request->url();
        echo 'Method url : ' . $url;
        echo '<br>';
        // method fullUrl()
        $fullUrl = $request->fullUrl();
        echo 'Method fullUrl : ' . $fullUrl;
        echo '<br>';
        echo '<br>';
        // method method()
        $method = $request->method();
        echo 'Method method : ' . $method;
        echo '<br>';
        // method isMethod
        if ($request->isMethod('post')) {
            echo 'method post';
            echo '<br>';
        }
        if ($request->isMethod('get')) {
            echo 'method get';
            echo '<br>';
        }
        exit();
    }
}
