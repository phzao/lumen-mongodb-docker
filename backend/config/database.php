<?php
return [
    'default' => 'mongodb',
    'connections' => [
        'mongodb' => array(
            'driver'   => 'mongodb',
            'host'     => 'mongo',
            'port'     => 27017,
            'username' => '',
            'password' => '',
            'database' => 'admin'
        ),

    ],

    'migrations' => 'migrations',
];
