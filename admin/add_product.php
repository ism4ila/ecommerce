<?php
session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

require_once "../includes/db.php";

$name = $description = $price = $image = $category_id = "";
$name_err = $description_err = $price_err = $image_err = $category_id_err = "";

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

if($_SERVER["REQUEST_METHOD"] == "POST"){

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

    // Image upload handling
    if(empty($_FILES["image"]["name"])){
        $image_err = "Veuillez sélectionner une image.";
    } else{
        $target_dir = "../images/";
        $image_name = basename($_FILES["image"]["name"]);
        $target_file = $target_dir . $image_name;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        $extensions_arr = array("jpg","jpeg","png","gif");

        if(in_array($imageFileType,$extensions_arr)){
            if(move_uploaded_file($_FILES['image']['tmp_name'], $target_file)){
                $image = $image_name; // Store just the file name in the database
            } else {
                $image_err = "Erreur lors du téléchargement de l'image.";
            }
        } else {
            $image_err = "Seuls les fichiers JPG, JPEG, PNG, GIF sont autorisés.";
        }
    }

    if(empty($name_err) && empty($description_err) && empty($price_err) && empty($image_err) && empty($category_id_err)){

        $sql = "INSERT INTO products (name, description, price, image, category_id) VALUES (?, ?, ?, ?, ?)";

        if($stmt = mysqli_prepare($conn, $sql)){
            mysqli_stmt_bind_param($stmt, "ssdsi", $param_name, $param_description, $param_price, $param_image, $param_category_id);

            $param_name = $name;
            $param_description = $description;
            $param_price = $price;
            $param_image = $image;
            $param_category_id = $category_id;

            if(mysqli_stmt_execute($stmt)){
                header("location: products.php");
                exit;
            } else{
                echo "Quelque chose s'est mal passé. Veuillez réessayer plus tard.";
            }

            mysqli_stmt_close($stmt);
        }
    }
    // mysqli_close($conn); // Close connection only after all operations if not exiting
}

$page_title = "Ajouter un produit";
include 'includes/header.php';
?>

<div class="row">
    <div class="col-md-8 mx-auto">
        <div class="card shadow-sm">
            <div class="card-header">
                <h2 class="mb-0">Ajouter un produit</h2>
            </div>
            <div class="card-body">
                <p>Veuillez remplir ce formulaire pour ajouter un produit.</p>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
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
                            <?php foreach ($categories as $category): ?>
                                <option value="<?php echo $category['id']; ?>" <?php echo ($category['id'] == $category_id) ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($category['name']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                        <div class="invalid-feedback"><?php echo $category_id_err; ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">Image</label>
                        <input type="file" name="image" id="image" class="form-control <?php echo (!empty($image_err)) ? 'is-invalid' : ''; ?>">
                        <div class="invalid-feedback"><?php echo $image_err; ?></div>
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
