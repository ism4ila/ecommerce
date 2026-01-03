<?php
session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

require_once "../includes/db.php";

$id = $name = $description = $price = $current_image = $new_image = $category_id = "";
$name_err = $description_err = $price_err = $new_image_err = $category_id_err = "";

// Fetch categories for the dropdown
$categories = [];
$sql_categories = "SELECT id, name FROM categories ORDER BY name";
if ($result_categories = mysqli_query($conn, $sql_categories)) {
    while ($row_category = mysqli_fetch_assoc($result_categories)) {
        $categories[] = $row_category;
    }
    mysqli_free_result($result_categories);
} else {
    echo "Erreur lors du chargement des catégories: " . mysqli_error($conn);
}


if(isset($_POST["id"]) && !empty($_POST["id"])){
    $id = $_POST["id"];

    if(empty(trim($_POST["name"]))){
        $name_err = "Veuillez entrer un nom.";
    } else{
        $name = trim($_POST["name"]);
    }

    if(empty(trim($_POST["description"]))){
        $description_err = "Veuillez entrer une description.";
    } else{
        $description = trim($_POST["description"]);
    }

    if(empty(trim($_POST["price"])) || !is_numeric(trim($_POST["price"]))){
        $price_err = "Veuillez entrer un prix valide.";
    } else{
        $price = trim($_POST["price"]);
    }

    if(empty(trim($_POST["category_id"]))){
        $category_id_err = "Veuillez sélectionner une catégorie.";
    } else{
        $category_id = trim($_POST["category_id"]);
    }

    // Handle image update
    $current_image = $_POST['current_image_name']; // Hidden field for current image
    $new_image = $current_image; // Assume current image if no new upload

    if(!empty($_FILES["new_image"]["name"])){
        $target_dir = "../images/";
        $image_name = basename($_FILES["new_image"]["name"]);
        $target_file = $target_dir . $image_name;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        $extensions_arr = array("jpg","jpeg","png","gif");

        if(in_array($imageFileType,$extensions_arr)){
            if(move_uploaded_file($_FILES['new_image']['tmp_name'], $target_file)){
                $new_image = $image_name; // Store just the file name
            } else {
                $new_image_err = "Erreur lors du téléchargement de la nouvelle image.";
            }
        } else {
            $new_image_err = "Seuls les fichiers JPG, JPEG, PNG, GIF sont autorisés pour la nouvelle image.";
        }
    }


    if(empty($name_err) && empty($description_err) && empty($price_err) && empty($new_image_err) && empty($category_id_err)){
        $sql = "UPDATE products SET name=?, description=?, price=?, image=?, category_id=? WHERE id=?";

        if($stmt = mysqli_prepare($conn, $sql)){
            mysqli_stmt_bind_param($stmt, "ssdsii", $param_name, $param_description, $param_price, $param_image, $param_category_id, $param_id);

            $param_name = $name;
            $param_description = $description;
            $param_price = $price;
            $param_image = $new_image;
            $param_category_id = $category_id;
            $param_id = $id;

            if(mysqli_stmt_execute($stmt)){
                header("location: products.php");
                exit();
            } else{
                echo "Quelque chose s'est mal passé. Veuillez réessayer plus tard.";
            }

            mysqli_stmt_close($stmt);
        }
    }
    // mysqli_close($conn); // Close connection only if not exiting
} else{
    // Display existing data if no POST request
    if(isset($_GET["id"]) && !empty(trim($_GET["id"]))){
        $id =  trim($_GET["id"]);

        $sql = "SELECT * FROM products WHERE id = ?";
        if($stmt = mysqli_prepare($conn, $sql)){
            mysqli_stmt_bind_param($stmt, "i", $param_id);

            $param_id = $id;

            if(mysqli_stmt_execute($stmt)){
                $result = mysqli_stmt_get_result($stmt);

                if(mysqli_num_rows($result) == 1){
                    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

                    $name = $row["name"];
                    $description = $row["description"];
                    $price = $row["price"];
                    $current_image = $row["image"]; // Store current image name
                    $category_id = $row["category_id"];
                } else{
                    header("location: error.php");
                    exit();
                }

            } else{
                echo "Oups ! Quelque chose s'est mal passé. Veuillez réessayer plus tard.";
            }
        }

        mysqli_stmt_close($stmt);
        // mysqli_close($conn); // Close connection only if not exiting here
    }  else{
        header("location: error.php");
        exit();
    }
}

$page_title = "Modifier le produit";
include 'includes/header.php';
?>

<div class="row">
    <div class="col-md-8 mx-auto">
        <div class="card shadow-sm">
            <div class="card-header">
                <h2 class="mb-0">Mettre à jour le produit</h2>
            </div>
            <div class="card-body">
                <p>Veuillez modifier les valeurs et soumettre pour mettre à jour le produit.</p>
                <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="<?php echo $id; ?>"/>
                    <input type="hidden" name="current_image_name" value="<?php echo htmlspecialchars($current_image); ?>"/>

                    <div class="mb-3">
                        <label for="name" class="form-label">Nom</label>
                        <input type="text" name="name" id="name" class="form-control <?php echo (!empty($name_err)) ? 'is-invalid' : ''; ?>" value="<?php echo htmlspecialchars($name); ?>">
                        <div class="invalid-feedback"><?php echo $name_err; ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea name="description" id="description" class="form-control <?php echo (!empty($description_err)) ? 'is-invalid' : ''; ?>"><?php echo htmlspecialchars($description); ?></textarea>
                        <div class="invalid-feedback"><?php echo $description_err; ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="price" class="form-label">Prix</label>
                        <input type="text" name="price" id="price" class="form-control <?php echo (!empty($price_err)) ? 'is-invalid' : ''; ?>" value="<?php echo htmlspecialchars($price); ?>">
                        <div class="invalid-feedback"><?php echo $price_err; ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="category_id" class="form-label">Catégorie</label>
                        <select name="category_id" id="category_id" class="form-select <?php echo (!empty($category_id_err)) ? 'is-invalid' : ''; ?>">
                            <option value="">Sélectionner une catégorie</option>
                            <?php foreach ($categories as $cat): ?>
                                <option value="<?php echo $cat['id']; ?>" <?php echo ($cat['id'] == $category_id) ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($cat['name']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                        <div class="invalid-feedback"><?php echo $category_id_err; ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="new_image" class="form-label">Image actuelle</label>
                        <?php if(!empty($current_image)){ ?>
                            <div class="mb-2">
                                <img src="../images/<?php echo htmlspecialchars($current_image); ?>" alt="Current Product Image" class="img-thumbnail" style="max-width: 150px;">
                            </div>
                        <?php } else { ?>
                            <p class="text-muted">Aucune image actuelle.</p>
                        <?php } ?>
                        <label for="new_image" class="form-label">Changer l'image (optionnel)</label>
                        <input type="file" name="new_image" id="new_image" class="form-control <?php echo (!empty($new_image_err)) ? 'is-invalid' : ''; ?>">
                        <div class="invalid-feedback"><?php echo $new_image_err; ?></div>
                    </div>
                    <div class="d-flex justify-content-between">
                        <input type="submit" class="btn btn-primary" value="Soumettre">
                        <a href="products.php" class="btn btn-secondary">Annuler</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
include 'includes/footer.php';
mysqli_close($conn);
?>
