<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->get('allfiles',  ['uses' => 'UploadFilesController@getAll']);
    $router->get('files[/{page}[/{keyword}]]',  ['uses' => 'UploadFilesController@getFiles']);
    $router->get('history[/{page}]',  ['uses' => 'UploadFilesController@showHistory']);
    $router->post('upload-file', ['uses' => 'UploadFilesController@submitFile']);
    $router->delete('file/{id}', ['uses' => 'UploadFilesController@deleteFile']);
});
