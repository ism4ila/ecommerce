<?php
// Start session at the beginning before any output
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Set UTF-8 encoding for proper character display
header('Content-Type: text/html; charset=UTF-8');
mb_internal_encoding('UTF-8');
mb_http_output('UTF-8');
?>
<!doctype html>
<html lang="fr">
<!-- Head -->
<head>
  <!-- Page Meta Tags-->
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=yes">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="keywords" content="">

  <!-- Custom Google Fonts-->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;600&family=Roboto:wght@300;400;700&display=auto" rel="stylesheet">

  <!-- RemixIcon CDN for Icons -->
  <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">

  <!-- Favicon -->
  <!-- You might want to replace these with your own favicons -->
  <link rel="apple-touch-icon" sizes="180x180" href="images/oldskool/favicon/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="images/oldskool/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="images/oldskool/favicon/favicon-16x16.png">
  <link rel="mask-icon" href="images/oldskool/favicon/safari-pinned-tab.svg" color="#5bbad5">
  <meta name="msapplication-TileColor" content="#da532c">
  <meta name="theme-color" content="#ffffff">

  <!-- Vendor CSS -->
  <link rel="stylesheet" href="css/oldskool/libs.bundle.css" />

  <!-- Main CSS -->
  <link rel="stylesheet" href="css/oldskool/theme.bundle.css" />
  
  <!-- My Custom CSS (for overrides or specific project styles) -->
  <link rel="stylesheet" href="css/style.css">

  <!-- Fix for custom scrollbar if JS is disabled-->
  <noscript>
    <style>
      /**
          * Reinstate scrolling for non-JS clients
          */
      .simplebar-content-wrapper {
        overflow: auto;
      }
    </style>
  </noscript>

  <!-- Page Title -->
  <title><?php echo isset($page_title) ? $page_title : 'Mon Magasin E-commerce'; ?></title>

</head>
<body class="">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white flex-column border-0" role="navigation" aria-label="Main navigation">
        <div class="container-fluid">
            <div class="w-100">
                <div class="d-flex justify-content-between align-items-center flex-wrap">
    
                    <!-- Logo-->
                    <a class="navbar-brand fw-bold fs-3 m-0 p-0 flex-shrink-0 order-0" href="index.php">
                        <div class="d-flex align-items-center">
                            <i class="ri-shopping-bag-3-fill me-2" style="font-size: 2rem;"></i>
                            <span>ShopModerne</span>
                        </div>
                    </a>
                    <!-- / Logo-->
    
                    <!-- Navbar Icons-->
                    <ul class="list-unstyled mb-0 d-flex align-items-center order-1 order-lg-2 nav-sidelinks">
    
                        <!-- Mobile Nav Toggler-->
                        <li class="d-lg-none">
                            <span class="nav-link text-body d-flex align-items-center cursor-pointer" data-bs-toggle="collapse"
                                data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                                aria-label="Toggle navigation">
                                <i class="ri-menu-3-line ri-lg"></i>
                            </span>
                        </li>
                        <!-- /Mobile Nav Toggler-->
    
                        <!-- Navbar Search-->
                        <li class="d-none d-lg-block">
                            <span class="nav-link text-body search-trigger cursor-pointer d-flex align-items-center">
                                <i class="ri-search-line ri-lg"></i>
                            </span>
                            <div class="navbar-search d-none">
                                <div class="input-group mb-3 h-100">
                                    <span class="input-group-text px-4 bg-transparent border-0"><i
                                            class="ri-search-line ri-lg"></i></span>
                                    <input type="text" class="form-control text-body bg-transparent border-0"
                                        placeholder="Rechercher des produits...">
                                    <span
                                        class="input-group-text px-4 cursor-pointer disable-child-pointer close-search bg-transparent border-0"><i
                                            class="ri-close-circle-line ri-lg"></i></span>
                                </div>
                            </div>
                            <div class="search-overlay"></div>
                        </li>
                        <!-- /Navbar Search-->
    
                        <!-- Navbar Admin-->
                        <li class="ms-3 d-none d-lg-inline-block">
                            <a class="nav-link text-body d-flex align-items-center" href="admin/index.php">
                                <i class="ri-admin-line ri-lg me-1"></i>
                                <span class="d-none d-xl-inline">Admin</span>
                            </a>
                        </li>
                        <!-- /Navbar Admin-->
    
                        <!-- Navbar Cart Icon with Badge-->
                        <li class="ms-3 d-inline-block position-relative">
                            <a class="nav-link text-body d-flex align-items-center position-relative" href="view_cart.php">
                                <i class="ri-shopping-cart-2-line ri-lg"></i>
                                <?php
                                $cart_count = 0;
                                if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
                                    $cart_count = array_sum($_SESSION['cart']);
                                }
                                if ($cart_count > 0):
                                ?>
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill" style="background: linear-gradient(135deg, #ec4899 0%, #f97316 100%); font-size: 0.65rem; padding: 0.25rem 0.5rem;">
                                    <?php echo $cart_count; ?>
                                    <span class="visually-hidden">articles dans le panier</span>
                                </span>
                                <?php endif; ?>
                                <span class="d-none d-xl-inline ms-2">Panier</span>
                            </a>
                        </li>
                        <!-- /Navbar Cart Icon-->
    
                    </ul>
                    <!-- Navbar Icons-->                
    
                    <!-- Main Navigation-->
                    <div class="flex-shrink-0 collapse navbar-collapse navbar-collapse-light w-auto flex-grow-1 order-2 order-lg-1"
                        id="navbarNavDropdown">
    
                        <!-- Menu-->
                        <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="index.php">
                                    <i class="ri-home-line me-1"></i>Accueil
                                </a>
                            </li>
                            <?php
                                require_once __DIR__ . "/db.php"; // ensure db connection is available

                                $sql_categories = "SELECT id, name FROM categories ORDER BY name";
                                if ($result_categories = mysqli_query($conn, $sql_categories)) {
                                    $category_icons = [
                                        'Électronique' => 'ri-smartphone-line',
                                        'Vêtements' => 'ri-shirt-line',
                                        'Livres' => 'ri-book-line',
                                        'Maison' => 'ri-home-4-line',
                                        'Sports' => 'ri-basketball-line',
                                    ];
                                    
                                    while ($row_category = mysqli_fetch_assoc($result_categories)) {
                                        $icon = isset($category_icons[$row_category['name']]) ? $category_icons[$row_category['name']] : 'ri-shopping-bag-line';
                                        echo '<li class="nav-item">';
                                        echo '<a class="nav-link" href="category.php?id=' . $row_category['id'] . '">';
                                        echo '<i class="' . $icon . ' me-1"></i>';
                                        echo htmlspecialchars($row_category['name']);
                                        echo '</a>';
                                        echo '</li>';
                                    }
                                    mysqli_free_result($result_categories);
                                }
                                // mysqli_close($conn); // Close connection if no more queries needed in header
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- / Navbar-->    
    <main class="container mt-4">
