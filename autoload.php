<?php
// Autoload function for automatic class loading
spl_autoload_register(function ($class) {
    $path = __DIR__ . '/lib/' . $class . '.php';
    if (file_exists($path)) {
        require_once $path;
    }
});
