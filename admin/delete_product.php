<?php
session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

if(isset($_POST["id"]) && !empty($_POST["id"])){
    require_once "../includes/db.php";

    $sql = "DELETE FROM products WHERE id = ?";

    if($stmt = mysqli_prepare($conn, $sql)){
        mysqli_stmt_bind_param($stmt, "i", $param_id);

        $param_id = trim($_POST["id"]);

        if(mysqli_stmt_execute($stmt)){
            header("location: products.php");
            exit();
        } else{
            echo "Oups ! Quelque chose s'est mal passé. Veuillez réessayer plus tard.";
        }
    }

    mysqli_stmt_close($stmt);
    mysqli_close($conn); // Close connection here as it's the end of POST handling
} else{
    if(empty(trim($_GET["id"]))){
        header("location: error.php");
        exit();
    }
}

$page_title = "Supprimer le produit";
include 'includes/header.php';
?>

<div class="row">
    <div class="col-md-6 mx-auto">
        <div class="card shadow-sm mt-5">
            <div class="card-header bg-danger text-white">
                <h2 class="mb-0">Supprimer le produit</h2>
            </div>
            <div class="card-body">
                <p>Êtes-vous sûr de vouloir supprimer ce produit ?</p>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                    <input type="hidden" name="id" value="<?php echo trim($_GET["id"]); ?>"/>
                    <div class="d-flex justify-content-between">
                        <input type="submit" value="Oui" class="btn btn-danger">
                        <a href="products.php" class="btn btn-secondary">Non</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
include 'includes/footer.php';
// mysqli_close($conn); // Connection might already be closed if POST was handled
?>
