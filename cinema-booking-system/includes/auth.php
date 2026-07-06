<?php
if (!isLoggedIn()) {
    header('Location: /cinema-booking-system/pages/login.php');
    exit;
}
