<?php
session_start();
require_once "includes/db.php";

$cart_items = [];
$total_price = 0;

if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
    $product_ids = array_keys($_SESSION['cart']);
    if (!empty($product_ids)) {
        $placeholders = implode(',', array_fill(0, count($product_ids), '?'));
        $sql = "SELECT id, name, price, image FROM products WHERE id IN ($placeholders)";
        $stmt = mysqli_prepare($conn, $sql);
        $types = str_repeat('i', count($product_ids));
        mysqli_stmt_bind_param($stmt, $types, ...$product_ids);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if ($result) {
            while ($row = mysqli_fetch_assoc($result)) {
                $product_id = $row['id'];
                $quantity = $_SESSION['cart'][$product_id];
                $subtotal = $row['price'] * $quantity;
                $total_price += $subtotal;

                $cart_items[] = [
                    'id' => $row['id'],
                    'name' => $row['name'],
                    'price' => $row['price'],
                    'image' => $row['image'],
                    'quantity' => $quantity,
                    'subtotal' => $subtotal
                ];
            }
            mysqli_free_result($result);
        }
        mysqli_stmt_close($stmt);
    }
}

$page_title = "Votre Panier";
include 'includes/header.php';
?>

<!-- Main Section-->
<section class="mt-0 overflow-hidden vh-lg-100">
    <!-- Page Content Goes Here -->
    <div class="container">
        <div class="row g-0 vh-lg-100">
            <div class="col-12 col-lg-7 pt-5 pt-lg-10">
                <div class="pe-lg-5">
                    <!-- Keeping simplified nav for now -->
                    <nav class="d-none d-md-block">
                        <ul class="list-unstyled d-flex justify-content-start mt-4 align-items-center fw-bolder small">
                            <li class="me-4"><a class="nav-link-checkout active" href="view_cart.php">Votre Panier</a></li>
                            <li class="me-4"><a class="nav-link-checkout " href="checkout.php">Paiement</a></li>
                        </ul>
                    </nav>
                    
                    <div class="mt-5">
                        <h3 class="fs-5 fw-bolder mb-0 border-bottom pb-4">Votre Panier</h3>
                        <?php if (!empty($cart_items)): ?>
                            <?php foreach ($cart_items as $item): ?>
                                <!-- Cart Item-->
                                <div class="row mx-0 py-4 g-0 border-bottom">
                                    <div class="col-2 position-relative">
                                        <picture class="d-block border">
                                            <img class="img-fluid" src="images/<?php echo $item['image']; ?>" alt="<?php echo $item['name']; ?>">
                                        </picture>
                                    </div>
                                    <div class="col-9 offset-1">
                                        <div>
                                            <h6 class="justify-content-between d-flex align-items-start mb-2">
                                                <?php echo htmlspecialchars($item['name']); ?>
                                                <form action="cart.php" method="post" class="d-inline">
                                                    <input type="hidden" name="product_id" value="<?php echo $item['id']; ?>">
                                                    <button type="submit" name="remove_item" class="btn btn-link p-0 text-dark"><i class="ri-close-line ms-3"></i></button>
                                                </form>
                                            </h6>
                                            <form action="cart.php" method="post" class="d-flex align-items-center">
                                                <input type="hidden" name="product_id" value="<?php echo $item['id']; ?>">
                                                <label for="quantity-<?php echo $item['id']; ?>" class="d-block text-muted fw-bolder text-uppercase fs-9 me-2">Qté:</label>
                                                <input type="number" name="quantity" id="quantity-<?php echo $item['id']; ?>" value="<?php echo $item['quantity']; ?>" min="1" class="form-control form-control-sm w-auto">
                                                <button type="submit" name="update_quantity" class="btn btn-sm btn-outline-secondary ms-2">Mettre à jour</button>
                                            </form>
                                        </div>
                                        <p class="fw-bolder text-end text-muted m-0">FCFA <?php echo number_format($item['price'], 2); ?></p>
                                    </div>
                                </div>
                                <!-- / Cart Item-->
                            <?php endforeach; ?>
                        <?php else: ?>
                            <div class="alert alert-info text-center mt-3" role="alert">
                                Votre panier est vide. <a href="index.php" class="alert-link">Continuer vos achats</a>.
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-5 bg-light pt-lg-10 aside-checkout pb-5 pb-lg-0 my-5 my-lg-0">
                <div class="p-4 py-lg-0 pe-lg-0 ps-lg-5">
                    <div class="pb-4 border-bottom">
                        <div class="d-flex flex-column flex-md-row justify-content-md-between mb-4 mb-md-2">
                            <div>
                                <p class="m-0 fw-bold fs-5">Total Général</p>
                            </div>
                            <p class="m-0 fs-5 fw-bold">FCFA <?php echo number_format($total_price, 2); ?></p>
                        </div>
                    </div>
                    <!-- Coupon code section - keeping for template style, can be made functional later -->
                    <div class="py-4">
                        <div class="input-group mb-0">
                            <input type="text" class="form-control" placeholder="Code promo">
                            <button class="btn btn-secondary btn-sm px-4">Appliquer</button>
                        </div>
                    </div>
                    <?php if (!empty($cart_items)): ?>
                        <a href="checkout.php" class="btn btn-dark w-100 text-center" role="button">Passer à la caisse</a>
                    <?php else: ?>
                        <a href="index.php" class="btn btn-dark w-100 text-center" role="button">Continuer vos achats</a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    <!-- /Page Content -->
</section>
<!-- / Main Section-->

<?php
include 'includes/footer.php';
mysqli_close($conn);
?>
