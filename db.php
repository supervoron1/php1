<?php

function db() {
    static $db = null;
    if (is_null($db)) {
        echo "Подключение к БД";
        $db = 1;
    }

    return $db;
}

echo db();
echo db();
echo db();