# Projet E-commerce Simple

Ce projet est une implémentation simple d'un site web e-commerce utilisant PHP, MySQL, HTML, CSS et JavaScript. Il comprend une interface utilisateur pour la navigation et l'achat de produits, ainsi qu'un tableau de bord d'administration pour la gestion des produits et des utilisateurs.

## Fonctionnalités

### Interface Utilisateur
- **Affichage des produits :** Parcourir une liste de produits disponibles.
- **Détails du produit :** Voir les informations détaillées pour chaque produit.
- **Panier d'achat :** Ajouter des produits au panier, voir les articles du panier et les totaux.
- **Processus de commande :** Un processus de commande simple pour finaliser l'achat (actuellement un message de confirmation).

### Tableau de Bord d'Administration
- **Authentification sécurisée :** Connexion et inscription pour les administrateurs.
- **Gestion des produits :** Ajouter, modifier et supprimer des produits.
- **Gestion des utilisateurs :** Enregistrer de nouveaux utilisateurs (pour l'administration, peut être étendu pour les utilisateurs clients).

## Technologies Utilisées

- **Backend :** PHP
- **Base de Données :** MySQL
- **Frontend :** HTML, CSS, JavaScript

## Configuration du Projet

Suivez ces étapes pour configurer et exécuter le projet sur votre machine locale.

### Prérequis

Assurez-vous d'avoir les éléments suivants installés :
- Serveur web (Apache, Nginx, etc.)
- PHP (version 7.4 ou supérieure recommandée)
- MySQL
- phpMyAdmin (facultatif, pour une gestion facile de la base de données)

### 1. Cloner le dépôt (si applicable)

Si vous avez reçu ce projet sous forme de fichiers, placez-les dans le répertoire racine de votre serveur web (par exemple, `htdocs` pour Apache).

### 2. Configuration de la Base de Données

1.  **Créer la base de données :** Ouvrez votre interface MySQL (par exemple, phpMyAdmin) et créez une nouvelle base de données nommée `ecommerce`.
2.  **Exécuter le script SQL :** Importez le fichier `database.sql` dans la base de données `ecommerce` que vous venez de créer. Ce script créera les tables `products` et `users`.

    ```sql
    CREATE DATABASE ecommerce;

    USE ecommerce;

    CREATE TABLE products (
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(255) NOT NULL,
        description TEXT,
        price DECIMAL(10, 2) NOT NULL,
        image VARCHAR(255)
    );

    CREATE TABLE users (
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        username VARCHAR(50) NOT NULL UNIQUE,
        password VARCHAR(255) NOT NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    );
    ```

### 3. Configuration de la Connexion à la Base de Données

Ouvrez le fichier `includes/db.php` et mettez à jour les informations d'identification de la base de données si elles sont différentes de celles par défaut :

```php
<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root'); // Votre nom d'utilisateur MySQL
define('DB_PASSWORD', '');     // Votre mot de passe MySQL
define('DB_NAME', 'ecommerce');

$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if($conn === false){
    die("ERREUR : Impossible de se connecter. " . mysqli_connect_error());
}
?>
```

### 4. Créer un Compte Administrateur

1.  Ouvrez votre navigateur et naviguez vers `http://localhost/votre_dossier_projet/admin/register.php` (remplacez `votre_dossier_projet` par le nom de votre dossier).
2.  Créez un nom d'utilisateur et un mot de passe pour votre compte administrateur.

### 5. Ajouter des Produits

1.  Connectez-vous au tableau de bord d'administration via `http://localhost/votre_dossier_projet/admin/index.php`.
2.  Utilisez le lien "Ajouter un produit" pour ajouter de nouveaux produits.
3.  Placez les images des produits dans le dossier `images/` du projet.

### 6. Naviguer sur le Site E-commerce

1.  Ouvrez votre navigateur et naviguez vers `http://localhost/votre_dossier_projet/index.php`.
2.  Vous devriez maintenant voir les produits affichés et pouvoir interagir avec l'interface utilisateur.

## Structure du Projet

```
ecommerce/
├── admin/                     # Tableau de bord d'administration
│   ├── add_product.php        # Ajouter un nouveau produit
│   ├── dashboard.php          # Page principale du tableau de bord
│   ├── delete_product.php     # Supprimer un produit
│   ├── edit_product.php       # Modifier un produit existant
│   ├── error.php              # Page d'erreur générique
│   ├── index.php              # Page de connexion de l'administrateur
│   └── register.php           # Enregistrer un nouvel utilisateur (administrateur)
├── css/
│   └── style.css              # Styles CSS du site
├── images/                    # Dossier pour les images de produits
├── includes/
│   └── db.php                 # Fichier de connexion à la base de données
├── js/
│   └── main.js                # Fichier JavaScript (actuellement vide)
├── cart.php                   # Gère l'ajout d'articles au panier
├── checkout.php               # Page de confirmation de commande
├── database.sql               # Script SQL pour la création de la base de données
├── index.php                  # Page d'accueil - affiche les produits
├── product.php                # Affiche les détails d'un produit spécifique
└── view_cart.php              # Affiche le contenu du panier
```
