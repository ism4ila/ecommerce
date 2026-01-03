<?php
session_start();

if (isset($_SESSION['cart'])) {
    unset($_SESSION['cart']); // Clear the cart after checkout
}

$page_title = "Commande Passée";
include 'includes/header.php';
?>

<!-- Main Section-->
<section class="mt-0 vh-lg-100">
    <div class="container d-flex flex-column justify-content-center align-items-center h-100">
        <div class="card p-5 shadow-sm text-center">
            <div class="card-body">
                <h1 class="card-title text-success mb-4">Merci pour votre commande !</h1>
                <p class="card-text lead">Votre commande a été passée avec succès. Vous recevrez une confirmation par e-mail sous peu.</p>
                <hr class="my-4">
                <p class="mb-0">
                    <a href="index.php" class="btn btn-dark btn-lg hover-lift-sm hover-boxshadow" role="button">Continuer vos achats</a>
                </p>
            </div>
        </div>
    </div>
</section>
<!-- / Main Section-->

<?php
include 'includes/footer.php';
?>
