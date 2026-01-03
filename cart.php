<?php
session_start();

if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// Handle adding to cart from product.php
if (isset($_POST['product_id']) && isset($_POST['quantity']) && !isset($_POST['update_quantity']) && !isset($_POST['remove_item'])) {
    $product_id = $_POST['product_id'];
    $quantity = (int)$_POST['quantity'];

    if ($quantity > 0) {
        if (isset($_SESSION['cart'][$product_id])) {
            $_SESSION['cart'][$product_id] += $quantity;
        } else {
            $_SESSION['cart'][$product_id] = $quantity;
        }
    }
}

// Handle updating quantity from view_cart.php
if (isset($_POST['update_quantity']) && isset($_POST['product_id']) && isset($_POST['quantity'])) {
    $product_id = $_POST['product_id'];
    $quantity = (int)$_POST['quantity'];

    if ($quantity > 0) {
        $_SESSION['cart'][$product_id] = $quantity;
    } else {
        // If quantity is 0 or less, remove item
        unset($_SESSION['cart'][$product_id]);
    }
}

// Handle removing item from view_cart.php
if (isset($_POST['remove_item']) && isset($_POST['product_id'])) {
    $product_id = $_POST['product_id'];
    unset($_SESSION['cart'][$product_id]);
}

header('Location: view_cart.php');
exit();
?>
