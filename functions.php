<?php
// для файла конфига. Имей в виду там слэш на конце требуется !
function normalizePath($path){
    return str_replace('\\', '/', realpath($path)) . '/';
}
