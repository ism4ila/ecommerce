<?php
session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

$page_title = "Tableau de Bord";
include 'includes/header.php';
?>

<div class="row">
    <div class="col-12">
        <h1 class="my-4 text-center">Bonjour, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Bienvenue sur le tableau de bord administrateur.</h1>
    </div>
</div>

<div class="row justify-content-center text-center mt-4">
    <div class="col-md-4 mb-3">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="card-title">Ajouter de nouveaux produits</h5>
                <p class="card-text">Cliquez ici pour ajouter de nouveaux articles à votre boutique.</p>
                <a href="add_product.php" class="btn btn-success">Ajouter un produit</a>
            </div>
        </div>
    </div>
    <div class="col-md-4 mb-3">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="card-title">Gérer les produits existants</h5>
                <p class="card-text">Modifier ou supprimer les produits actuels de votre inventaire.</p>
                <a href="products.php" class="btn btn-info">Gérer les produits</a>
            </div>
        </div>
    </div>
    <!-- Add more dashboard cards as needed for other functionalities like Orders, Users, Categories -->
</div>

<?php
include 'includes/footer.php';
?>
