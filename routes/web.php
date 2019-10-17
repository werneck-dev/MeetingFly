<?php


$router->get('/meeting', 'MeetingController@getMeeting');
$router->post('/meeting', 'MeetingController@store');
$router->put('/meeting', 'MeetingController@cancel');
