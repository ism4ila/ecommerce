-- ========================================
-- DATABASE ECOMMERCE - 100+ PRODUITS AMÉLIORÉS
-- Avec images réelles gratuites (Unsplash)
-- ========================================

USE ecommerce;

-- Supprimer les anciennes données (dans le bon ordre)
DELETE FROM cart_items;
DELETE FROM order_items;
DELETE FROM orders;
DELETE FROM products;
DELETE FROM categories;

-- Réinitialiser les compteurs auto-increment
ALTER TABLE cart_items AUTO_INCREMENT = 1;
ALTER TABLE order_items AUTO_INCREMENT = 1;
ALTER TABLE orders AUTO_INCREMENT = 1;
ALTER TABLE products AUTO_INCREMENT = 1;
ALTER TABLE categories AUTO_INCREMENT = 1;

-- ========================================
-- CATÉGORIES (10 catégories)
-- ========================================
INSERT INTO categories (name) VALUES
('Électronique'),
('Vêtements Homme'),
('Vêtements Femme'),
('Chaussures'),
('Accessoires'),
('Maison & Décoration'),
('Sports & Loisirs'),
('Livres'),
('Beauté & Santé'),
('Jouets & Enfants');

-- ========================================
-- PRODUITS - ÉLECTRONIQUE (15 produits)
-- ========================================
INSERT INTO products (name, description, price, image, category_id) VALUES
('iPhone 14 Pro Max', 'Smartphone Apple dernière génération avec puce A16 Bionic, écran Super Retina XDR 6.7", appareil photo 48MP ProRAW', 850000, 'https://images.unsplash.com/photo-1678652197748-86de29a4e93d?w=800&q=80', 1),
('Samsung Galaxy S23 Ultra', 'Smartphone Android premium avec S Pen intégré, appareil photo 200MP, écran AMOLED 120Hz', 750000, 'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=800&q=80', 1),
('MacBook Air M2', 'Ordinateur portable ultra-fin avec puce M2, 13.6 pouces Liquid Retina, 8GB RAM, autonomie 18h', 950000, 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&q=80', 1),
('iPad Pro 12.9"', 'Tablette professionnelle avec écran Liquid Retina XDR, puce M2, compatible Apple Pencil', 680000, 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800&q=80', 1),
('Sony WH-1000XM5', 'Casque sans fil à réduction de bruit active premium, autonomie 30h, qualité audio exceptionnelle', 285000, 'https://images.unsplash.com/photo-1546435770-a3e426bf472b?w=800&q=80', 1),
('AirPods Pro 2', 'Écouteurs sans fil avec réduction de bruit active adaptative et son spatial personnalisé', 185000, 'https://images.unsplash.com/photo-1606841837239-c5a1a4a07af7?w=800&q=80', 1),
('Dell XPS 15', 'PC portable professionnel, Intel i7 13ème gen, 16GB RAM, écran 4K OLED tactile', 1250000, 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=800&q=80', 1),
('PS5 Console', 'Console de jeux PlayStation 5 avec lecteur Blu-ray Ultra HD, ray tracing, SSD ultra-rapide', 425000, 'https://images.unsplash.com/photo-1606813907291-d86efa9b94db?w=800&q=80', 1),
('Nintendo Switch OLED', 'Console portable avec écran OLED 7 pouces et Joy-Con, mode TV et portable', 245000, 'https://images.unsplash.com/photo-1578303512597-81e6cc155b3e?w=800&q=80', 1),
('Canon EOS R6', 'Appareil photo hybride plein format 20MP, vidéo 4K 60fps, stabilisation 5 axes', 1850000, 'https://images.unsplash.com/photo-1606986628571-dc0d83ba989c?w=800&q=80', 1),
('Samsung TV 65" QLED', 'Smart TV 4K QLED 65 pouces avec Quantum HDR, 120Hz, AirPlay 2', 775000, 'https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800&q=80', 1),
('Apple Watch Series 9', 'Montre connectée avec Always-On Display, GPS, capteur santé avancé, étanche 50m', 325000, 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?w=800&q=80', 1),
('GoPro Hero 12', 'Caméra d\'action 5.3K avec stabilisation HyperSmooth 6.0, étanche 10m', 385000, 'https://images.unsplash.com/photo-1519558260268-cde7e03a0152?w=800&q=80', 1),
('Bose SoundLink Revolve+', 'Enceinte Bluetooth portable 360° étanche, autonomie 16h, son puissant', 195000, 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=800&q=80', 1),
('Kindle Paperwhite', 'Liseuse électronique avec écran 6.8" antireflet et étanche, stockage 16GB', 95000, 'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=800&q=80', 1),

-- ========================================
-- VÊTEMENTS HOMME (15 produits)
-- ========================================
('Costume Homme Slim Fit', 'Costume 2 pièces élégant en laine mélangée, coupe ajustée moderne, parfait pour événements', 125000, 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=800&q=80', 2),
('Chemise Blanche Business', 'Chemise classique en coton égyptien premium, col italien, coupe ajustée', 35000, 'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?w=800&q=80', 2),
('Jean Denim Brut', 'Jean coupe droite en denim japonais selvedge, coutures renforcées', 75000, 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=800&q=80', 2),
('Polo Lacoste', 'Polo classique en petit piqué de coton avec crocodile brodé, respirant', 65000, 'https://images.unsplash.com/photo-1581655353564-df123a1eb820?w=800&q=80', 2),
('Blouson Cuir Vintage', 'Veste en cuir véritable style aviateur, doublure matelassée, look authentique', 285000, 'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=800&q=80', 2),
('Pull Cachemire Col V', 'Pull luxueux en cachemire 100% avec finitions précises, doux et chaud', 145000, 'https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?w=800&q=80', 2),
('T-Shirt Premium Cotton', 'Pack de 3 t-shirts basiques en coton peigné bio, coupe confortable', 45000, 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=800&q=80', 2),
('Pardessus Laine', 'Manteau long en laine vierge, style trench coat élégant, boutons doubles', 195000, 'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?w=800&q=80', 2),
('Chino Beige Stretch', 'Pantalon chino avec stretch confort, coupe slim, polyvalent', 55000, 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?w=800&q=80', 2),
('Cravate Soie Italienne', 'Cravate en soie pure tissée main, motif jacquard élégant', 45000, 'https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?w=800&q=80', 2),
('Gilet Sans Manches', 'Gilet de costume coordonné, 5 boutons, dos satin, coupe ajustée', 55000, 'https://images.unsplash.com/photo-1594938291221-94f18cbb5660?w=800&q=80', 2),
('Short Sport Technique', 'Short running avec technologie Dri-FIT, poches zippées, respirant', 35000, 'https://images.unsplash.com/photo-1591195853828-11db59a44f6b?w=800&q=80', 2),
('Sweat Capuche Premium', 'Hoodie en molleton gratté, broderie logo poitrine, coupe décontractée', 75000, 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?w=800&q=80', 2),
('Pyjama Satin', 'Ensemble pyjama col châle en satin de coton, luxueux et confortable', 65000, 'https://images.unsplash.com/photo-1631679706909-1844bbd07221?w=800&q=80', 2),
('Maillot de Bain', 'Short de bain séchage rapide avec filet intérieur, poches étanches', 25000, 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?w=800&q=80', 2),

-- ========================================
-- VÊTEMENTS FEMME (15 produits)
-- ========================================
('Robe Cocktail Noire', 'Robe élégante mi-longue avec dentelle, parfaite pour soirées et événements', 95000, 'https://images.unsplash.com/photo-1566174053879-31528523f8ae?w=800&q=80', 3),
('Jupe Plissée Midi', 'Jupe plissée longueur midi, taille haute élastiquée, fluide et élégante', 45000, 'https://images.unsplash.com/photo-1583496661160-fb5886a0aaaa?w=800&q=80', 3),
('Blouse Soie Écrue', 'Chemisier fluide en soie naturelle, col lavallière, tombé parfait', 75000, 'https://images.unsplash.com/photo-1594223274512-ad4803739b7c?w=800&q=80', 3),
('Tailleur Pantalon Femme', 'Ensemble veste + pantalon cigarette, coupe moderne professionnelle', 145000, 'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?w=800&q=80', 3),
('Robe Bohème Fleurie', 'Robe longue imprimé fleuri, manches volantées, style romantique', 65000, 'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?w=800&q=80', 3),
('Jean Skinny Taille Haute', 'Jean stretch 5 poches, délavage moderne, sculptant et confortable', 55000, 'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?w=800&q=80', 3),
('Cardigan Long Maille', 'Gilet long en maille fine avec poches plaquées, drapé élégant', 65000, 'https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?w=800&q=80', 3),
('Top Dentelle Blanc', 'Haut sans manches en dentelle doublée, fermeture dos, raffiné', 45000, 'https://images.unsplash.com/photo-1583846112476-f040c2c71a6c?w=800&q=80', 3),
('Pantalon Palazzo Fluide', 'Pantalon large fluide, taille élastique confort, tombé impeccable', 55000, 'https://images.unsplash.com/photo-1594633313593-bab3825d0caf?w=800&q=80', 3),
('Robe Pull Col Roulé', 'Robe-pull midi en maille fine, ceinture incluse, coupe féminine', 75000, 'https://images.unsplash.com/photo-1585487000160-6ebcfceb0d03?w=800&q=80', 3),
('Blazer Oversize', 'Veste blazer tendance, épaulettes structurées, look affirmé', 95000, 'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?w=800&q=80', 3),
('Combinaison Élégante', 'Combinaison pantalon avec ceinture, parfaite pour événements chics', 85000, 'https://images.unsplash.com/photo-1585487000160-6ebcfceb0d03?w=800&q=80', 3),
('Legging Sport Gainant', 'Legging taille haute compression douce, anti-transpiration, squat proof', 35000, 'https://images.unsplash.com/photo-1506629082955-511b1aa562c8?w=800&q=80', 3),
('Robe Chemise Lin', 'Robe chemise en lin naturel, ceinture nouée, fraîche et légère', 65000, 'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?w=800&q=80', 3),
('Gilet Sans Manches Fausse Fourrure', 'Gilet chaud et tendance en fausse fourrure douce, look cocooning', 75000, 'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?w=800&q=80', 3),

-- ========================================
-- CHAUSSURES (15 produits)
-- ========================================
('Nike Air Max 270', 'Baskets running avec amorti Air Max visible, mesh respirant, confort maximal', 125000, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&q=80', 4),
('Adidas Ultraboost', 'Chaussures running avec technologie Boost, très confortables, retour d\'énergie', 145000, 'https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=800&q=80', 4),
('Converse Chuck Taylor', 'Baskets montantes iconiques en toile, semelle vulcanisée, style intemporel', 55000, 'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?w=800&q=80', 4),
('Timberland Boots', 'Boots imperméables en cuir nubuck, semelle antidérapante, robustes', 175000, 'https://images.unsplash.com/photo-1520639888713-7851133b1ed0?w=800&q=80', 4),
('Mocassins Cuir Homme', 'Mocassins classiques en cuir véritable, semelle cuir, élégance décontractée', 85000, 'https://images.unsplash.com/photo-1533867617858-e7b97e060509?w=800&q=80', 4),
('Escarpins Daim Noir', 'Talons hauts 8cm en daim, bout pointu élégant, look sophistiqué', 75000, 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?w=800&q=80', 4),
('Sandales Compensées', 'Sandales d\'été avec semelle compensée en corde, confortables et stylées', 55000, 'https://images.unsplash.com/photo-1603487742131-4160ec999306?w=800&q=80', 4),
('Ballerines Ballerina', 'Ballerines en cuir souple, nœud décoratif, chic et confortable', 45000, 'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?w=800&q=80', 4),
('Bottines Chelsea', 'Boots Chelsea élastiques latéraux, cuir pleine fleur, look urbain', 95000, 'https://images.unsplash.com/photo-1608256246200-53e635b5b65f?w=800&q=80', 4),
('Baskets Montantes Blanches', 'Sneakers high-top en cuir blanc, style streetwear, polyvalentes', 85000, 'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=800&q=80', 4),
('Chaussures Bateau Sebago', 'Boat shoes en cuir avec lacets 360°, semelle antidérapante', 95000, 'https://images.unsplash.com/photo-1533867617858-e7b97e060509?w=800&q=80', 4),
('Bottes Cavalières', 'Bottes hautes en cuir, boucle décorative, élégantes et confortables', 145000, 'https://images.unsplash.com/photo-1608256246200-53e635b5b65f?w=800&q=80', 4),
('Chaussures Randonnée', 'Chaussures de trail imperméables, membrane Gore-Tex, adhérence optimale', 125000, 'https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?w=800&q=80', 4),
('Tongs Havaianas', 'Sandales brésiliennes en caoutchouc naturel, légères et durables', 15000, 'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?w=800&q=80', 4),
('Crocs Classic', 'Sabots légers et confortables, respirants, faciles à entretenir', 35000, 'https://images.unsplash.com/photo-1584670747078-9eb1b6116e14?w=800&q=80', 4),

-- ========================================
-- ACCESSOIRES (15 produits)
-- ========================================
('Sac à Main Cuir Luxe', 'Sac porté épaule en cuir italien, fermeture aimantée, élégant et spacieux', 195000, 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=800&q=80', 5),
('Montre Automatique Homme', 'Montre mécanique avec mouvement visible, bracelet cuir, intemporelle', 385000, 'https://images.unsplash.com/photo-1524592094714-0f0654e20314?w=800&q=80', 5),
('Lunettes Soleil Ray-Ban', 'Lunettes de soleil polarisées, protection UV 100%, style iconique', 145000, 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=800&q=80', 5),
('Ceinture Cuir Réversible', 'Ceinture 2-en-1 noir/marron avec boucle argentée, polyvalente', 45000, 'https://images.unsplash.com/photo-1624222247344-550fb60583f0?w=800&q=80', 5),
('Portefeuille RFID', 'Porte-cartes minimaliste avec protection anti-piratage, cuir premium', 35000, 'https://images.unsplash.com/photo-1627123424574-724758594e93?w=800&q=80', 5),
('Écharpe Cachemire', 'Écharpe douce et chaude en cachemire, 200x70cm, luxueuse', 85000, 'https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?w=800&q=80', 5),
('Casquette Baseball', 'Casquette ajustable avec broderie logo, 100% coton, style décontracté', 25000, 'https://images.unsplash.com/photo-1588850561407-ed78c282e89b?w=800&q=80', 5),
('Bonnet Laine Mérinos', 'Bonnet chaud tricoté, laine mérinos extra-fine, confortable', 35000, 'https://images.unsplash.com/photo-1576871337632-b9aef4c17ab9?w=800&q=80', 5),
('Gants Cuir Tactiles', 'Gants en cuir avec doigts tactiles pour smartphone, doublure chaude', 55000, 'https://images.unsplash.com/photo-1603871165848-0aa92c869fa1?w=800&q=80', 5),
('Sac à Dos Business', 'Sac à dos ordinateur 15", compartiment USB, anti-vol, ergonomique', 75000, 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=800&q=80', 5),
('Parapluie Automatique', 'Parapluie pliable ouverture/fermeture auto, anti-vent, compact', 35000, 'https://images.unsplash.com/photo-1589127467734-f33e8e7b2751?w=800&q=80', 5),
('Bijoux Collier Or', 'Collier chaîne fine en or 18K, longueur 45cm, délicat et élégant', 285000, 'https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?w=800&q=80', 5),
('Boucles d\'Oreilles Perles', 'Boucles en argent 925 avec perles de culture, raffinées', 95000, 'https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?w=800&q=80', 5),
('Bracelet Connecté Fitbit', 'Tracker d\'activité avec suivi sommeil et fréquence cardiaque, GPS', 125000, 'https://images.unsplash.com/photo-1575311373937-040b8e1fd5b6?w=800&q=80', 5),
('Porte-Clés Luxe', 'Porte-clés en cuir avec mousqueton métal, élégant et durable', 25000, 'https://images.unsplash.com/photo-1624695894515-abd928fdf7c0?w=800&q=80', 5),

-- ========================================
-- MAISON & DÉCORATION (10 produits)
-- ========================================
('Lampe Design LED', 'Lampe de bureau moderne avec variateur tactile, économique et stylée', 45000, 'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=800&q=80', 6),
('Coussin Velours 45x45', 'Housse de coussin en velours premium avec fermeture invisible, luxueux', 15000, 'https://images.unsplash.com/photo-1584100936595-c0654b55a2e2?w=800&q=80', 6),
('Vase Céramique', 'Vase décoratif fait main en céramique artisanale, pièce unique', 35000, 'https://images.unsplash.com/photo-1578500494198-246f612d3b3d?w=800&q=80', 6),
('Tapis Berbère 200x300', 'Tapis tissé main style berbère, laine naturelle, authentique', 195000, 'https://images.unsplash.com/photo-1600166898405-da9535204843?w=800&q=80', 6),
('Miroir Mural Doré', 'Miroir rond avec cadre en laiton doré, Ø60cm, élégant', 75000, 'https://images.unsplash.com/photo-1618220179428-22790b461013?w=800&q=80', 6),
('Cadre Photo Moderne', 'Set de 3 cadres photo en bois, verre anti-reflet, minimalistes', 25000, 'https://images.unsplash.com/photo-1513519245088-0e12902e35ca?w=800&q=80', 6),
('Plaid Polaire XXL', 'Couverture douce et chaude 200x220cm, ultra-confort, moelleux', 35000, 'https://images.unsplash.com/photo-1592220687108-540d8b7f8481?w=800&q=80', 6),
('Rideau Occultant', 'Paire de rideaux thermiques occultants 140x260cm, isolants', 45000, 'https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?w=800&q=80', 6),
('Horloge Murale Scandinave', 'Horloge murale silencieuse design nordique, Ø30cm, minimaliste', 35000, 'https://images.unsplash.com/photo-1563861826100-9cb868fdbe1c?w=800&q=80', 6),
('Bougie Parfumée Luxe', 'Bougie en cire végétale, 60h de combustion, verre réutilisable', 25000, 'https://images.unsplash.com/photo-1602874801006-e26d9ebbf576?w=800&q=80', 6),

-- ========================================
-- SPORTS & LOISIRS (10 produits)
-- ========================================
('Tapis Yoga Premium', 'Tapis de yoga antidérapant 6mm, sac de transport inclus, écologique', 35000, 'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=800&q=80', 7),
('Haltères Ajustables 20kg', 'Paire d\'haltères modulables de 2 à 20kg chacun, gain de place', 125000, 'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=800&q=80', 7),
('Vélo Électrique', 'VTT électrique 250W, autonomie 80km, batterie amovible, tout-terrain', 950000, 'https://images.unsplash.com/photo-1571333250630-f0230c320b6d?w=800&q=80', 7),
('Ballon Football Nike', 'Ballon officiel taille 5, parfait pour matchs et entraînements', 25000, 'https://images.unsplash.com/photo-1614632537423-1e6c2e7e0aae?w=800&q=80', 7),
('Raquette Tennis Wilson', 'Raquette de tennis pour joueurs intermédiaires, 300g, équilibrée', 85000, 'https://images.unsplash.com/photo-1622279457486-62dcc4a431d6?w=800&q=80', 7),
('Tente Camping 4 Places', 'Tente familiale imperméable avec double toit, facile à monter', 145000, 'https://images.unsplash.com/photo-1478131143081-80f7f84ca84d?w=800&q=80', 7),
('Sac de Frappe Boxe', 'Sac de boxe rempli 30kg avec chaîne de suspension, résistant', 95000, 'https://images.unsplash.com/photo-1549719386-74dfcbf7dbed?w=800&q=80', 7),
('Rollers Adulte', 'Patins à roulettes avec protections incluses, confortables', 75000, 'https://images.unsplash.com/photo-1564859228273-274232fdb516?w=800&q=80', 7),
('Corde à Sauter Pro', 'Corde de fitness avec poignées ergonomiques et compteur, réglable', 15000, 'https://images.unsplash.com/photo-1601422407692-ec4eeec1d9b3?w=800&q=80', 7),
('Table Tennis Cornilleau', 'Table de ping-pong pliable pour extérieur, résistante aux intempéries', 385000, 'https://images.unsplash.com/photo-1609710228159-0fa9bd7c0827?w=800&q=80', 7),

-- ========================================
-- LIVRES (5 produits)
-- ========================================
('L\'Alchimiste', 'Roman de Paulo Coelho, voyage initiatique inspirant, bestseller mondial', 12000, 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=800&q=80', 8),
('Le Petit Prince', 'Conte philosophique d\'Antoine de Saint-Exupéry, édition collector illustrée', 15000, 'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=800&q=80', 8),
('Sapiens', 'Yuval Noah Harari - Histoire de l\'humanité, essai captivant', 18000, 'https://images.unsplash.com/photo-1589998059171-988d887df646?w=800&q=80', 8),
('Harry Potter Intégrale', 'Coffret complet des 7 tomes de J.K. Rowling, édition collector', 95000, 'https://images.unsplash.com/photo-1600189261867-30e5ffe7b8da?w=800&q=80', 8),
('Cuisine du Monde', 'Livre de recettes illustré avec 500 plats internationaux', 35000, 'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=800&q=80', 8),

-- ========================================
-- BEAUTÉ & SANTÉ (10 produits)
-- ========================================
('Parfum Chanel N°5', 'Eau de parfum femme 100ml, fragrance iconique et intemporelle', 145000, 'https://images.unsplash.com/photo-1541643600914-78b084683601?w=800&q=80', 9),
('Crème Visage Anti-Âge', 'Soin régénérant avec acide hyaluronique et collagène, anti-rides', 55000, 'https://images.unsplash.com/photo-1556229010-aa3835e1ec53?w=800&q=80', 9),
('Brosse Cheveux Dyson', 'Sèche-cheveux et lisseur 2-en-1 intelligent, protection thermique', 385000, 'https://images.unsplash.com/photo-1522338242992-e1a54906a8da?w=800&q=80', 9),
('Palette Maquillage Pro', 'Palette 120 couleurs fards à paupières, poudres et blush, qualité pro', 45000, 'https://images.unsplash.com/photo-1512496015851-a90fb38ba796?w=800&q=80', 9),
('Huile d\'Argan Bio', 'Huile pure 100% naturelle pour cheveux et peau, 100ml, bio', 25000, 'https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?w=800&q=80', 9),
('Kit Manucure Complet', 'Set professionnel avec lampe UV et accessoires, qualité salon', 65000, 'https://images.unsplash.com/photo-1604654894610-df63bc536371?w=800&q=80', 9),
('Balance Connectée', 'Pèse-personne intelligent avec analyse composition corporelle, Bluetooth', 75000, 'https://images.unsplash.com/photo-1591710234855-2eb532be6c77?w=800&q=80', 9),
('Brosse à Dents Électrique', 'Sonic avec 5 modes et étui de voyage USB, rechargeable', 85000, 'https://images.unsplash.com/photo-1607613009820-a29f7bb81c04?w=800&q=80', 9),
('Masque LED Visage', 'Appareil luminothérapie 7 couleurs anti-âge, traitement professionnel', 125000, 'https://images.unsplash.com/photo-1570172619644-dfd03ed5d881?w=800&q=80', 9),
('Diffuseur Huiles Essentielles', 'Humidificateur ultrasonique avec LED multicolore, silencieux', 35000, 'https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?w=800&q=80', 9),

-- ========================================
-- JOUETS & ENFANTS (10 produits)
-- ========================================
('LEGO Star Wars Millennium', 'Set de construction 1351 pièces, dès 9 ans, collector', 145000, 'https://images.unsplash.com/photo-1587654780291-39c9404d746b?w=800&q=80', 10),
('Peluche Teddy Bear XXL', 'Ours en peluche géant 120cm, super doux, hypoallergénique', 55000, 'https://images.unsplash.com/photo-1560593025-afbb612fae00?w=800&q=80', 10),
('Trottinette Enfant', 'Trottinette 3 roues avec guidon ajustable, LED, stable', 45000, 'https://images.unsplash.com/photo-1547447134-cd3f5c716030?w=800&q=80', 10),
('Poupée Barbie Dreamhouse', 'Maison de rêve Barbie avec 8 pièces et accessoires, interactive', 95000, 'https://images.unsplash.com/photo-1563532655-68fe8a32a0be?w=800&q=80', 10),
('Circuit Voitures Hot Wheels', 'Piste de courses avec looping et lanceur, excitant', 65000, 'https://images.unsplash.com/photo-1558060370-d644479cb6f7?w=800&q=80', 10),
('Tableau Éducatif', 'Tableau magnétique double face avec lettres et chiffres, évolutif', 35000, 'https://images.unsplash.com/photo-1503676260728-1c00da094a0b?w=800&q=80', 10),
('Robot Programmable', 'Robot interactif pour apprendre le codage, dès 6 ans, STEM', 85000, 'https://images.unsplash.com/photo-1563207153-f403bf289096?w=800&q=80', 10),
('Cuisine Jouet Bois', 'Cuisinière en bois avec accessoires et ustensiles, jeu d\'imitation', 75000, 'https://images.unsplash.com/photo-1581896224671-a7ee6de67dc2?w=800&q=80', 10),
('Puzzle 1000 Pièces', 'Puzzle panoramique paysage magnifique, relaxant', 25000, 'https://images.unsplash.com/photo-1495364141860-b0d03eccd065?w=800&q=80', 10),
('Drône Caméra Enfant', 'Mini drone avec caméra HD, facilité de pilotage, sécurisé', 95000, 'https://images.unsplash.com/photo-1473968512647-3e447244af8f?w=800&q=80', 10);

-- ========================================
-- VÉRIFICATION
-- ========================================
SELECT 'Nombre de catégories:' AS Info, COUNT(*) AS Total FROM categories
UNION ALL
SELECT 'Nombre de produits:', COUNT(*) FROM products;

SELECT c.name AS Categorie, COUNT(p.id) AS 'Nombre de Produits'
FROM categories c
LEFT JOIN products p ON c.id = p.category_id
GROUP BY c.id, c.name
ORDER BY c.id