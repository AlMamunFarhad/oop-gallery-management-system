<?php


class Session
{
    private $signed_in = false;
    public  $user_id;
    public  $username;
    public  $message;
    function __construct()
    {
        session_start();
        $this->check_the_login();
        $this->check_message();
    }
    public function message($msg = "")
    {
        if (!empty($msg)) {
            $_SESSION['message'] = $msg;
        } else {
            return $this->message;
        }
    }
    private function check_message()
    {
        if (isset($_SESSION['message'])) {
            $this->message = $_SESSION['message'];
            unset($_SESSION['message']);
        } else {
            $this->message = "";
        }
    }
    // Signed in method
    public function is_signed_in()
    {
        return $this->signed_in;
    }
    // Login user method
    public function login($user)
    {
        $this->user_id = $_SESSION['user_id'] = $user->id;
        $this->username = $_SESSION['username'] = $user->username;
        $this->signed_in = true;
    }
    // Logout method
    public function logout()
    {
        unset($_SESSION['user_id']);
        unset($this->user_id);
        $this->signed_in = false;
    }
    // Check if user is logged in
    private function check_the_login()
    {
        if (isset($_SESSION['user_id'])) {
            $this->user_id = $_SESSION['user_id'];
            $this->signed_in = true;
        } else {
            unset($this->user_id);
            $this->signed_in = false;
        }
    }
}
$session = new Session();
