<?php
require_once __DIR__ . '/../config/session.php';
session_unset();
session_destroy();
header('Location: /cinema-booking-system/pages/login.php');
exit;
