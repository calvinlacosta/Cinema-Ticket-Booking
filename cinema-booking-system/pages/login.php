<?php
$pageTitle = 'Login';
include __DIR__ . '/../includes/header.php';
include __DIR__ . '/../includes/navbar.php';
?>
<main>
    <div class="container">
        <h1>Login</h1>
        <form>
            <label>Email</label><br>
            <input type="email" name="email"><br><br>
            <label>Password</label><br>
            <input type="password" name="password"><br><br>
            <button type="submit">Login</button>
        </form>
    </div>
</main>
<?php include __DIR__ . '/../includes/footer.php'; ?>
