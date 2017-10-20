<?php
namespace Project\Util;

class Flash
{
    public static function getFlash()
    {
        // caso existe algo na casa flash em Session, retorna esse algo e zera a casa
        if( array_key_exists('flash', $_SESSION)){
           $flash = $_SESSION['flash'];
           unset($_SESSION['flash']);
           return $flash;
           
       }

       return false;
    }

    public static function setFlash($flash)
    {
        // apenas insere algo na casa flash
        $_SESSION['flash'] = $flash;
    }

    public static function getRedirectURL()
    {
        // caso existe algo na casa flash em Session, retorna esse algo e zera a casa
        if( array_key_exists('redirectURL', $_SESSION)){
           $redirectURL = $_SESSION['redirectURL'];
           unset($_SESSION['redirectURL']);
           return $redirectURL;
           
       }

       return false;
    }

    public static function setRedirectURL($redirectURL)
    {
        // apenas insere algo na casa flash
        $_SESSION['redirectURL'] = $_ENV['base_url'] . $redirectURL;
    }
}