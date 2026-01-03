<?php
session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

require_once "../includes/db.php";

$page_title = "Gérer les Produits";
include 'includes/header.php';
?>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h2>Produits</h2>
    <div>
        <a href="add_product.php" class="btn btn-success me-2">Ajouter un nouveau produit</a>
        <a href="dashboard.php" class="btn btn-secondary">Tableau de Bord</a>
    </div>
</div>

<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>#</th>
                <th>Nom</th>
                <th>Description</th>
                <th>Prix</th>
                <th>Catégorie</th>
                <th>Image</th>
                <th style="width: 150px;">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Join with categories table to display category name
            $sql = "SELECT p.*, c.name as category_name FROM products p LEFT JOIN categories c ON p.category_id = c.id ORDER BY p.id DESC";
            if($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)){
                        echo "<tr>";
                            echo "<td>" . $row['id'] . "</td>";
                            echo "<td>" . $row['name'] . "</td>";
                            echo "<td>" . (strlen($row['description']) > 50 ? substr($row['description'], 0, 50) . "..." : $row['description']) . "</td>";
                            echo "<td>FCFA " . number_format($row['price'], 2) . "</td>";
                            echo "<td>" . ($row['category_name'] ? $row['category_name'] : 'N/A') . "</td>";
                            echo "<td><img src='../images/" . $row['image'] . "' alt='" . $row['name'] . "' style='width: 50px; height: 50px; object-fit: cover;'></td>";
                            echo "<td>";
                                echo "<a href='edit_product.php?id=". $row['id'] ."' class='btn btn-sm btn-primary me-1'>Modifier</a>";
                                echo "<a href='delete_product.php?id=". $row['id'] ."' class='btn btn-sm btn-danger'>Supprimer</a>";
                            echo "</td>";
                        echo "</tr>";
                    }
                    mysqli_free_result($result);
                } else{
                    echo "<tr><td colspan='7' class='text-center'>Aucun produit trouvé.</td></tr>";
                }
            } else{
                echo "<tr><td colspan='7' class='text-danger'>ERREUR : Impossible d'exécuter la requête $sql. " . mysqli_error($conn) . "</td></tr>";
            }
            mysqli_close($conn);
            ?>
        </tbody>
    </table>
</div>

<?php
include 'includes/footer.php';
?>
