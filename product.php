<?php
require_once "includes/db.php";
$product_id = $_GET['id'];

// Fetch product details
$sql = "SELECT p.*, c.name AS category_name FROM products p LEFT JOIN categories c ON p.category_id = c.id WHERE p.id = ?";
if($stmt = mysqli_prepare($conn, $sql)){
    mysqli_stmt_bind_param($stmt, "i", $param_id);
    $param_id = $product_id;
    if(mysqli_stmt_execute($stmt)){
        $result = mysqli_stmt_get_result($stmt);
        if(mysqli_num_rows($result) == 1){
            $product = mysqli_fetch_assoc($result);
            ob_start();
            echo $product['name'];
            $page_title = ob_get_clean();
        } else {
            // Product not found
            header("location: index.php"); // Redirect to homepage or error page
            exit();
        }
    } else{
        echo "Oups ! Quelque chose s'est mal passé. Veuillez réessayer plus tard.";
        exit();
    }
    mysqli_stmt_close($stmt);
} else {
    echo "Oups ! Quelque chose s'est mal passé. Veuillez réessayer plus tard.";
    exit();
}

include 'includes/header.php';
?>

<!-- Main Section-->
<section class="mt-0 overflow-hidden ">
    <!-- Page Content Goes Here -->            
    
    <!-- Breadcrumbs-->
    <div class="bg-dark py-4">
        <div class="container-fluid">
            <nav class="m-0" aria-label="breadcrumb">
                <ol class="breadcrumb m-0">
                  <li class="breadcrumb-item breadcrumb-light"><a href="index.php">Accueil</a></li>
                  <?php if($product['category_name']): ?>
                  <li class="breadcrumb-item breadcrumb-light"><a href="category.php?id=<?php echo $product['category_id']; ?>"><?php echo htmlspecialchars($product['category_name']); ?></a></li>
                  <?php endif; ?>
                  <li class="breadcrumb-item breadcrumb-light active" aria-current="page"><?php echo htmlspecialchars($product['name']); ?></li>
                </ol>
            </nav>            
        </div>
    </div>
    <!-- / Breadcrumbs-->

    <div class="container-fluid mt-5">
        <!-- Product Top Section-->
        <div class="row g-9" data-sticky-container>
            <!-- Product Images-->
            <div class="col-12 col-md-6 col-xl-7">
                <div class="row g-3" data-aos="fade-right">
                    <div class="col-12">
                        <picture>
                            <img class="img-fluid" data-zoomable src="images/<?php echo htmlspecialchars($product['image']); ?>" alt="<?php echo htmlspecialchars($product['name']); ?>">
                        </picture>
                    </div>
                    <!-- If you have multiple images for a product, you can loop through them here -->
                </div>
            </div>
            <!-- /Product Images-->

            <!-- Product Information-->
            <div class="col-12 col-md-6 col-lg-5">
                <div class="sticky-top top-5">
                    <div class="pb-3" data-aos="fade-in">
                        <div class="d-flex align-items-center mb-3">
                            <p class="small fw-bolder text-uppercase tracking-wider text-muted m-0 me-4">
                                <?php echo $product['category_name'] ? htmlspecialchars($product['category_name']) : 'Général'; ?>
                            </p>
                            <!-- Reviews could go here -->
                        </div>
                        
                        <h1 class="mb-1 fs-2 fw-bold"><?php echo htmlspecialchars($product['name']); ?></h1>
                        <div class="d-flex justify-content-between align-items-center">
                            <p class="fs-4 m-0 text-primary">FCFA <?php echo number_format($product['price'], 2); ?></p>
                        </div>
                        
                        <!-- Product description -->
                        <div class="mt-4">
                            <h6 class="fw-bolder mb-2">Description du Produit</h6>
                            <p class="fs-6"><?php echo nl2br(htmlspecialchars($product['description'])); ?></p>
                        </div>

                        <form action="cart.php" method="post">
                            <input type="hidden" name="product_id" value="<?php echo $product['id']; ?>">
                            <div class="d-flex justify-content-start align-items-center mt-4">
                                <span class="input-group-text me-2">Quantité</span>
                                <input type="number" name="quantity" value="1" min="1" class="form-control me-3" style="width: 80px;">
                                <button type="submit" class="btn btn-dark hover-lift-sm hover-boxshadow">Ajouter au panier</button>
                            </div>
                        </form>
                    
                        <!-- Product Highlights (keeping for template style, can be removed)-->
                            <div class="my-5">
                                <div class="row">
                                    <div class="col-12 col-md-4">
                                        <div class="text-center px-2">
                                            <!-- Example icon - replace with actual icon if available -->
                                            <i class="ri-24-hours-line ri-2x"></i>
                                            <small class="d-block mt-1">Livraison Rapide</small>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="text-center px-2">
                                            <i class="ri-secure-payment-line ri-2x"></i>
                                            <small class="d-block mt-1">Paiement Sécurisé</small>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="text-center px-2">
                                            <i class="ri-service-line ri-2x"></i>
                                            <small class="d-block mt-1">Retours Faciles</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- / Product Highlights-->
                    
                        <!-- Product Accordion (keeping for template style, can be removed) -->
                        <div class="accordion" id="accordionProduct">
                            <div class="accordion-item">
                              <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                  Détails du Produit
                                </button>
                              </h2>
                              <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionProduct">
                                <div class="accordion-body">
                                    <p class="m-0"><?php echo nl2br(htmlspecialchars($product['description'])); ?></p>
                                </div>
                              </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingTwo">
                                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Entretien
                                  </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionProduct">
                                  <div class="accordion-body">
                                      <p>Informations sur l'entretien du produit.</p>
                                  </div>
                                </div>
                              </div>        
                            <div class="accordion-item">
                              <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                  Livraison & Retours
                                </button>
                              </h2>
                              <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionProduct">
                                <div class="accordion-body">
                                    <p>Informations sur la livraison et les retours.</p>
                                </div>
                              </div>
                            </div>
                          </div>
                        <!-- / Product Accordion-->
                    </div>                    
                </div>
            </div>
            <!-- / Product Information-->
        </div>
        <!-- / Product Top Section-->

        <!-- You May Also Like / Related Products (can be implemented later) -->
        <!-- Currently removed for simplicity, add if you have logic for related products -->

    </div>

    <!-- /Page Content -->
</section>
<!-- / Main Section-->

<?php
include 'includes/footer.php';
mysqli_close($conn);
?>
