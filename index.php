<?php
// Set UTF-8 encoding
header('Content-Type: text/html; charset=UTF-8');
mb_internal_encoding('UTF-8');

include 'includes/header.php';
require_once "includes/db.php";
?>

<!-- Hero Section-->
<section class="position-relative overflow-hidden" style="background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%); padding: 4rem 0;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-7 text-white">
                <h1 class="display-4 fw-bold mb-4 animate-fade-in">Bienvenue sur ShopModerne</h1>
                <p class="lead mb-4" style="font-size: 1.25rem; opacity: 0.95;">
                    Découvrez notre sélection exceptionnelle de produits de qualité aux meilleurs prix. 
                    Une expérience shopping unique vous attend !
                </p>
                <div class="d-flex gap-3 flex-wrap">
                    <a href="#products" class="btn btn-light btn-lg hover-lift-sm" style="color: #6366f1; font-weight: 700;">
                        <i class="ri-shopping-bag-line me-2"></i>Découvrir
                    </a>
                    <a href="#features" class="btn btn-outline-light btn-lg hover-lift-sm" style="border: 2px solid white;">
                        <i class="ri-information-line me-2"></i>En savoir plus
                    </a>
                </div>
            </div>
            <div class="col-lg-5 text-center mt-5 mt-lg-0">
                <i class="ri-shopping-cart-2-fill" style="font-size: 15rem; opacity: 0.2; color: white;"></i>
            </div>
        </div>
    </div>
</section>
<!-- / Hero Section-->

<!-- Features Section-->
<section class="py-5" id="features" style="background: white;">
    <div class="container">
        <div class="row g-4">
            <div class="col-md-4">
                <div class="text-center p-4 h-100 rounded-3 transition-all" style="background: linear-gradient(180deg, #f8fafc 0%, white 100%);">
                    <div class="mb-3">
                        <i class="ri-truck-line" style="font-size: 3rem; color: #6366f1;"></i>
                    </div>
                    <h5 class="fw-bold mb-2">Livraison Rapide</h5>
                    <p class="text-muted mb-0">Livraison gratuite sur toutes les commandes de plus de 50€</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="text-center p-4 h-100 rounded-3 transition-all" style="background: linear-gradient(180deg, #f8fafc 0%, white 100%);">
                    <div class="mb-3">
                        <i class="ri-secure-payment-line" style="font-size: 3rem; color: #ec4899;"></i>
                    </div>
                    <h5 class="fw-bold mb-2">Paiement Sécurisé</h5>
                    <p class="text-muted mb-0">Vos transactions sont 100% sécurisées et protégées</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="text-center p-4 h-100 rounded-3 transition-all" style="background: linear-gradient(180deg, #f8fafc 0%, white 100%);">
                    <div class="mb-3">
                        <i class="ri-customer-service-2-line" style="font-size: 3rem; color: #14b8a6;"></i>
                    </div>
                    <h5 class="fw-bold mb-2">Support 24/7</h5>
                    <p class="text-muted mb-0">Notre équipe est toujours disponible pour vous aider</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Features Section-->

<!-- Main Section-->
<section class="py-5" id="products">
    <!-- Page Content Goes Here -->
    <div class="container-fluid">
        <div class="row mb-5">
            <div class="col-12 text-center">
                <h2 class="display-5 fw-bold mb-3" style="background: linear-gradient(135deg, #6366f1 0%, #ec4899 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">
                    Nos Produits
                </h2>
                <p class="lead text-muted mx-auto" style="max-width: 600px;">
                    Explorez notre collection soigneusement sélectionnée de produits de qualité
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-4">
                    <?php
                        $sql = "SELECT p.*, c.name AS category_name FROM products p LEFT JOIN categories c ON p.category_id = c.id ORDER BY p.id DESC";
                        if($result = mysqli_query($conn, $sql)){
                            if(mysqli_num_rows($result) > 0){
                                while($row = mysqli_fetch_array($result)){
                                    echo "<div class='col animate-fade-in'>";
                                    echo "<div class='card h-100 shadow-sm product-card-hover'>"; 
                                    echo "<a href='product.php?id=" . $row['id'] . "' class='text-decoration-none'>";
                                    echo "<div class='position-relative overflow-hidden' style='height: 250px;'>";
                                    // Check if image is external URL or local file
                                    $image_src = (strpos($row['image'], 'http') === 0) ? $row['image'] : 'images/' . $row['image'];
                                    echo "<img src='" . htmlspecialchars($image_src) . "' class='card-img-top w-100 h-100' alt='" . htmlspecialchars($row['name']) . "' style='object-fit: cover;'>";
                                    echo "</div>";
                                    echo "</a>";
                                    echo "<div class='card-body d-flex flex-column'>";
                                    // Category badge
                                    if ($row['category_name']) {
                                        echo "<span class='badge bg-info text-white mb-2' style='width: fit-content;'>" . htmlspecialchars($row['category_name']) . "</span>";
                                    }
                                    echo "<h5 class='card-title mb-2'><a href='product.php?id=" . $row['id'] . "' class='text-decoration-none text-dark'>" . htmlspecialchars($row['name']) . "</a></h5>";
                                    // Price
                                    echo "<p class='card-text lead mb-3'>FCFA " . number_format($row['price'], 0, ',', ' ') . "</p>";
                                    // Button
                                    echo "<div class='mt-auto'>";
                                    echo "<a href='cart.php?action=add&id=" . $row['id'] . "&quantity=1' class='btn btn-primary w-100 d-flex align-items-center justify-content-center gap-2'>"; 
                                    echo "<i class='ri-shopping-cart-line'></i>";
                                    echo "Ajouter au panier";
                                    echo "</a>"; 
                                    echo "</div>";
                                    echo "</div>";
                                    echo "</div>";
                                    echo "</div>";
                                }
                                mysqli_free_result($result);
                            } else{
                                echo "<div class='col-12'>";
                                echo "<div class='alert alert-info text-center' role='alert'>";
                                echo "<i class='ri-information-line ri-2x mb-3 d-block'></i>";
                                echo "<h5 class='mb-2'>Aucun produit disponible</h5>";
                                echo "<p class='mb-0'>Revenez bientôt pour découvrir nos nouveaux produits !</p>";
                                echo "</div>";
                                echo "</div>";
                            }
                        } else{
                            echo "<div class='col-12'>";
                            echo "<div class='alert alert-danger text-center' role='alert'>";
                            echo "<i class='ri-error-warning-line ri-2x mb-3 d-block'></i>";
                            echo "<h5 class='mb-2'>Erreur de chargement</h5>";
                            echo "<p class='mb-0'>Impossible de charger les produits. Veuillez réessayer plus tard.</p>";
                            echo "</div>";
                            echo "</div>";
                        }
                        mysqli_close($conn);
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!-- /Page Content -->
</section>
<!-- / Main Section-->

<?php
include 'includes/footer.php';
?>
