-- ========================================
-- DATABASE ECOMMERCE - 100+ PRODUITS
-- ========================================

USE ecommerce;

-- Supprimer les anciennes données
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE cart_items;
TRUNCATE TABLE order_items;
TRUNCATE TABLE orders;
TRUNCATE TABLE products;
TRUNCATE TABLE categories;
SET FOREIGN_KEY_CHECKS = 1;

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
('iPhone 14 Pro Max', 'Smartphone Apple dernière génération avec puce A16 Bionic, écran Super Retina XDR 6.7"', 850000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=iPhone+14+Pro', 1),
('Samsung Galaxy S23 Ultra', 'Smartphone Android premium avec S Pen intégré et appareil photo 200MP', 750000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Galaxy+S23', 1),
('MacBook Air M2', 'Ordinateur portable ultra-fin avec puce M2, 13.6 pouces, 8GB RAM', 950000, 'https://via.placeholder.com/500x500/14b8a6/ffffff?text=MacBook+Air', 1),
('iPad Pro 12.9"', 'Tablette professionnelle avec écran Liquid Retina XDR et puce M2', 680000, 'https://via.placeholder.com/500x500/8b5cf6/ffffff?text=iPad+Pro', 1),
('Sony WH-1000XM5', 'Casque sans fil à réduction de bruit active, autonomie 30h', 285000, 'https://via.placeholder.com/500x500/f97316/ffffff?text=Sony+WH1000XM5', 1),
('AirPods Pro 2', 'Écouteurs sans fil avec réduction de bruit active et son spatial', 185000, 'https://via.placeholder.com/500x500/06b6d4/ffffff?text=AirPods+Pro', 1),
('Dell XPS 15', 'PC portable professionnel, Intel i7, 16GB RAM, écran 4K OLED', 1250000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Dell+XPS+15', 1),
('PS5 Console', 'Console de jeux PlayStation 5 avec lecteur Blu-ray Ultra HD', 425000, 'https://via.placeholder.com/500x500/7c3aed/ffffff?text=PlayStation+5', 1),
('Nintendo Switch OLED', 'Console portable avec écran OLED 7 pouces et Joy-Con', 245000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Switch+OLED', 1),
('Canon EOS R6', 'Appareil photo hybride plein format 20MP, vidéo 4K 60fps', 1850000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Canon+EOS+R6', 1),
('Samsung TV 65" QLED', 'Smart TV 4K QLED 65 pouces avec Quantum HDR', 775000, 'https://via.placeholder.com/500x500/f59e0b/ffffff?text=Samsung+TV', 1),
('Apple Watch Series 9', 'Montre connectée avec Always-On Display et GPS', 325000, 'https://via.placeholder.com/500x500/14b8a6/ffffff?text=Apple+Watch', 1),
('GoPro Hero 12', 'Caméra d\'action 5.3K avec stabilisation HyperSmooth 6.0', 385000, 'https://via.placeholder.com/500x500/8b5cf6/ffffff?text=GoPro+Hero12', 1),
('Bose SoundLink Revolve+', 'Enceinte Bluetooth portable 360° étanche', 195000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Bose+Speaker', 1),
('Kindle Paperwhite', 'Liseuse électronique avec écran 6.8" antireflet et étanche', 95000, 'https://via.placeholder.com/500x500/06b6d4/ffffff?text=Kindle', 1),

-- ========================================
-- VÊTEMENTS HOMME (15 produits)
-- ========================================
('Costume Homme Slim Fit', 'Costume 2 pièces élégant en laine mélangée, coupe ajustée moderne', 125000, 'https://via.placeholder.com/500x500/1e293b/ffffff?text=Costume+Homme', 2),
('Chemise Blanche Business', 'Chemise classique en coton égyptien, col italien', 35000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Chemise+Blanche', 2),
('Jean Denim Brut', 'Jean coupe droite en denim japonais selvedge', 75000, 'https://via.placeholder.com/500x500/1e40af/ffffff?text=Jean+Homme', 2),
('Polo Lacoste', 'Polo classique en petit piqué de coton avec crocodile brodé', 65000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Polo+Lacoste', 2),
('Blouson Cuir Vintage', 'Veste en cuir véritable style aviateur, doublure matelassée', 285000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Blouson+Cuir', 2),
('Pull Cachemire Col V', 'Pull luxueux en cachemire 100% avec finitions précises', 145000, 'https://via.placeholder.com/500x500/7c3aed/ffffff?text=Pull+Cachemire', 2),
('T-Shirt Premium Cotton', 'Pack de 3 t-shirts basiques en coton peigné, coupe confortable', 45000, 'https://via.placeholder.com/500x500/64748b/ffffff?text=T-Shirts+x3', 2),
('Pardessus Laine', 'Manteau long en laine vierge, style trench coat élégant', 195000, 'https://via.placeholder.com/500x500/374151/ffffff?text=Pardessus', 2),
('Chino Beige Stretch', 'Pantalon chino avec stretch confort, coupe slim', 55000, 'https://via.placeholder.com/500x500/d97706/ffffff?text=Chino+Beige', 2),
('Cravate Soie Italienne', 'Cravate en soie pure tissée main, motif jacquard', 45000, 'https://via.placeholder.com/500x500/dc2626/ffffff?text=Cravate+Soie', 2),
('Gilet Sans Manches', 'Gilet de costume coordonné, 5 boutons, dos satin', 55000, 'https://via.placeholder.com/500x500/1f2937/ffffff?text=Gilet', 2),
('Short Sport Technique', 'Short running avec technologie Dri-FIT, poches zippées', 35000, 'https://via.placeholder.com/500x500/0ea5e9/ffffff?text=Short+Sport', 2),
('Sweat Capuche Premium', 'Hoodie en molleton gratté, broderie logo poitrine', 75000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Hoodie', 2),
('Pyjama Satin', 'Ensemble pyjama col châle en satin de coton', 65000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Pyjama', 2),
('Maillot de Bain', 'Short de bain séchage rapide avec filet intérieur', 25000, 'https://via.placeholder.com/500x500/06b6d4/ffffff?text=Maillot+Bain', 2),

-- ========================================
-- VÊTEMENTS FEMME (15 produits)
-- ========================================
('Robe Cocktail Noire', 'Robe élégante mi-longue avec dentelle, parfaite pour soirées', 95000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Robe+Cocktail', 3),
('Jupe Plissée Midi', 'Jupe plissée longueur midi, taille haute élastiquée', 45000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Jupe+Plissee', 3),
('Blouse Soie Écrue', 'Chemisier fluide en soie naturelle, col lavallière', 75000, 'https://via.placeholder.com/500x500/fef3c7/000000?text=Blouse+Soie', 3),
('Tailleur Pantalon Femme', 'Ensemble veste + pantalon cigarette, coupe moderne', 145000, 'https://via.placeholder.com/500x500/475569/ffffff?text=Tailleur', 3),
('Robe Bohème Fleurie', 'Robe longue imprimé fleuri, manches volantées', 65000, 'https://via.placeholder.com/500x500/f97316/ffffff?text=Robe+Boheme', 3),
('Jean Skinny Taille Haute', 'Jean stretch 5 poches, délavage moderne', 55000, 'https://via.placeholder.com/500x500/3b82f6/ffffff?text=Jean+Skinny', 3),
('Cardigan Long Maille', 'Gilet long en maille fine avec poches plaquées', 65000, 'https://via.placeholder.com/500x500/a855f7/ffffff?text=Cardigan', 3),
('Top Dentelle Blanc', 'Haut sans manches en dentelle doublée, fermeture dos', 45000, 'https://via.placeholder.com/500x500/f8fafc/000000?text=Top+Dentelle', 3),
('Pantalon Palazzo Fluide', 'Pantalon large fluide, taille élastique confort', 55000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Palazzo', 3),
('Robe Pull Col Roulé', 'Robe-pull midi en maille fine, ceinture incluse', 75000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Robe+Pull', 3),
('Blazer Oversize', 'Veste blazer tendance, épaulettes structurées', 95000, 'https://via.placeholder.com/500x500/1e293b/ffffff?text=Blazer', 3),
('Combinaison Élégante', 'Combinaison pantalon avec ceinture, parfaite pour événements', 85000, 'https://via.placeholder.com/500x500/dc2626/ffffff?text=Combinaison', 3),
('Legging Sport Gainant', 'Legging taille haute compression douce, anti-transpiration', 35000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Legging+Sport', 3),
('Robe Chemise Lin', 'Robe chemise en lin naturel, ceinture nouée', 65000, 'https://via.placeholder.com/500x500/f59e0b/ffffff?text=Robe+Lin', 3),
('Gilet Sans Manches Fausse Fourrure', 'Gilet chaud et tendance en fausse fourrure douce', 75000, 'https://via.placeholder.com/500x500/f3f4f6/000000?text=Gilet+Fourrure', 3),

-- ========================================
-- CHAUSSURES (15 produits)
-- ========================================
('Nike Air Max 270', 'Baskets running avec amorti Air Max visible, mesh respirant', 125000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Nike+Air+Max', 4),
('Adidas Ultraboost', 'Chaussures running avec technologie Boost, très confortables', 145000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Ultraboost', 4),
('Converse Chuck Taylor', 'Baskets montantes iconiques en toile, semelle vulcanisée', 55000, 'https://via.placeholder.com/500x500/dc2626/ffffff?text=Converse', 4),
('Timberland Boots', 'Boots imperméables en cuir nubuck, semelle antidérapante', 175000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Timberland', 4),
('Mocassins Cuir Homme', 'Mocassins classiques en cuir véritable, semelle cuir', 85000, 'https://via.placeholder.com/500x500/1e293b/ffffff?text=Mocassins', 4),
('Escarpins Daim Noir', 'Talons hauts 8cm en daim, bout pointu élégant', 75000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Escarpins', 4),
('Sandales Compensées', 'Sandales d\'été avec semelle compensée en corde', 55000, 'https://via.placeholder.com/500x500/f97316/ffffff?text=Sandales', 4),
('Ballerines Ballerina', 'Ballerines en cuir souple, nœud décoratif', 45000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Ballerines', 4),
('Bottines Chelsea', 'Boots Chelsea élastiques latéraux, cuir pleine fleur', 95000, 'https://via.placeholder.com/500x500/374151/ffffff?text=Chelsea+Boots', 4),
('Baskets Montantes Blanches', 'Sneakers high-top en cuir blanc, style streetwear', 85000, 'https://via.placeholder.com/500x500/f8fafc/000000?text=Sneakers+White', 4),
('Chaussures Bateau Sebago', 'Boat shoes en cuir avec lacets 360°, semelle antidérapante', 95000, 'https://via.placeholder.com/500x500/1e40af/ffffff?text=Boat+Shoes', 4),
('Bottes Cavalières', 'Bottes hautes en cuir, boucle décorative', 145000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Bottes', 4),
('Chaussures Randonnée', 'Chaussures de trail imperméables, membrane Gore-Tex', 125000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Trail+Shoes', 4),
('Tongs Havaianas', 'Sandales brésiliennes en caoutchouc naturel, légères', 15000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=Havaianas', 4),
('Crocs Classic', 'Sabots légers et confortables, respirants', 35000, 'https://via.placeholder.com/500x500/06b6d4/ffffff?text=Crocs', 4),

-- ========================================
-- ACCESSOIRES (15 produits)
-- ========================================
('Sac à Main Cuir Luxe', 'Sac porté épaule en cuir italien, fermeture aimantée', 195000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Sac+Cuir', 5),
('Montre Automatique Homme', 'Montre mécanique avec mouvement visible, bracelet cuir', 385000, 'https://via.placeholder.com/500x500/1e293b/ffffff?text=Montre+Auto', 5),
('Lunettes Soleil Ray-Ban', 'Lunettes de soleil polarisées, protection UV 100%', 145000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Ray-Ban', 5),
('Ceinture Cuir Réversible', 'Ceinture 2-en-1 noir/marron avec boucle argentée', 45000, 'https://via.placeholder.com/500x500/374151/ffffff?text=Ceinture', 5),
('Portefeuille RFID', 'Porte-cartes minimaliste avec protection anti-piratage', 35000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Portefeuille', 5),
('Écharpe Cachemire', 'Écharpe douce et chaude en cachemire, 200x70cm', 85000, 'https://via.placeholder.com/500x500/7c3aed/ffffff?text=Echarpe', 5),
('Casquette Baseball', 'Casquette ajustable avec broderie logo, 100% coton', 25000, 'https://via.placeholder.com/500x500/1e40af/ffffff?text=Casquette', 5),
('Bonnet Laine Mérinos', 'Bonnet chaud tricoté, laine mérinos extra-fine', 35000, 'https://via.placeholder.com/500x500/dc2626/ffffff?text=Bonnet', 5),
('Gants Cuir Tactiles', 'Gants en cuir avec doigts tactiles pour smartphone', 55000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Gants+Cuir', 5),
('Sac à Dos Business', 'Sac à dos ordinateur 15", compartiment USB, anti-vol', 75000, 'https://via.placeholder.com/500x500/374151/ffffff?text=Sac+Dos', 5),
('Parapluie Automatique', 'Parapluie pliable ouverture/fermeture auto, anti-vent', 35000, 'https://via.placeholder.com/500x500/1e293b/ffffff?text=Parapluie', 5),
('Bijoux Collier Or', 'Collier chaîne fine en or 18K, longueur 45cm', 285000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=Collier+Or', 5),
('Boucles d\'Oreilles Perles', 'Boucles en argent 925 avec perles de culture', 95000, 'https://via.placeholder.com/500x500/f3f4f6/000000?text=Boucles', 5),
('Bracelet Connecté Fitbit', 'Tracker d\'activité avec suivi sommeil et fréquence cardiaque', 125000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Fitbit', 5),
('Porte-Clés Luxe', 'Porte-clés en cuir avec mousqueton métal', 25000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Porte-cles', 5),

-- ========================================
-- MAISON & DÉCORATION (10 produits)
-- ========================================
('Lampe Design LED', 'Lampe de bureau moderne avec variateur tactile, économique', 45000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=Lampe+LED', 6),
('Coussin Velours 45x45', 'Housse de coussin en velours premium avec fermeture invisible', 15000, 'https://via.placeholder.com/500x500/7c3aed/ffffff?text=Coussin', 6),
('Vase Céramique', 'Vase décoratif fait main en céramique artisanale', 35000, 'https://via.placeholder.com/500x500/06b6d4/ffffff?text=Vase', 6),
('Tapis Berbère 200x300', 'Tapis tissé main style berbère, laine naturelle', 195000, 'https://via.placeholder.com/500x500/f3f4f6/000000?text=Tapis', 6),
('Miroir Mural Doré', 'Miroir rond avec cadre en laiton doré, Ø60cm', 75000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=Miroir', 6),
('Cadre Photo Moderne', 'Set de 3 cadres photo en bois, verre anti-reflet', 25000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Cadres+x3', 6),
('Plaid Polaire XXL', 'Couverture douce et chaude 200x220cm, ultra-confort', 35000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Plaid', 6),
('Rideau Occultant', 'Paire de rideaux thermiques occultants 140x260cm', 45000, 'https://via.placeholder.com/500x500/1e293b/ffffff?text=Rideaux', 6),
('Horloge Murale Scandinave', 'Horloge murale silencieuse design nordique, Ø30cm', 35000, 'https://via.placeholder.com/500x500/f8fafc/000000?text=Horloge', 6),
('Bougie Parfumée Luxe', 'Bougie en cire végétale, 60h de combustion, verre réutilisable', 25000, 'https://via.placeholder.com/500x500/f97316/ffffff?text=Bougie', 6),

-- ========================================
-- SPORTS & LOISIRS (10 produits)
-- ========================================
('Tapis Yoga Premium', 'Tapis de yoga antidérapant 6mm, sac de transport inclus', 35000, 'https://via.placeholder.com/500x500/14b8a6/ffffff?text=Tapis+Yoga', 7),
('Haltères Ajustables 20kg', 'Paire d\'haltères modulables de 2 à 20kg chacun', 125000, 'https://via.placeholder.com/500x500/1e293b/ffffff?text=Halteres', 7),
('Vélo Électrique', 'VTT électrique 250W, autonomie 80km, batterie amovible', 950000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Velo+Elec', 7),
('Ballon Football Nike', 'Ballon officiel taille 5, parfait pour matchs et entraînements', 25000, 'https://via.placeholder.com/500x500/f8fafc/000000?text=Ballon+Nike', 7),
('Raquette Tennis Wilson', 'Raquette de tennis pour joueurs intermédiaires, 300g', 85000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=Raquette', 7),
('Tente Camping 4 Places', 'Tente familiale imperméable avec double toit', 145000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Tente+4P', 7),
('Sac de Frappe Boxe', 'Sac de boxe rempli 30kg avec chaîne de suspension', 95000, 'https://via.placeholder.com/500x500/dc2626/ffffff?text=Sac+Boxe', 7),
('Rollers Adulte', 'Patins à roulettes avec protections incluses', 75000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Rollers', 7),
('Corde à Sauter Pro', 'Corde de fitness avec poignées ergonomiques et compteur', 15000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Corde+Sauter', 7),
('Table Tennis Cornilleau', 'Table de ping-pong pliable pour extérieur, résistante', 385000, 'https://via.placeholder.com/500x500/0ea5e9/ffffff?text=Table+Tennis', 7),

-- ========================================
-- LIVRES (5 produits)
-- ========================================
('L\'Alchimiste', 'Roman de Paulo Coelho, voyage initiatique inspirant', 12000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=Alchimiste', 8),
('Le Petit Prince', 'Conte philosophique d\'Antoine de Saint-Exupéry, édition collector', 15000, 'https://via.placeholder.com/500x500/06b6d4/ffffff?text=Petit+Prince', 8),
('Sapiens', 'Yuval Noah Harari - Histoire de l\'humanité', 18000, 'https://via.placeholder.com/500x500/7c3aed/ffffff?text=Sapiens', 8),
('Harry Potter Intégrale', 'Coffret complet des 7 tomes de J.K. Rowling', 95000, 'https://via.placeholder.com/500x500/dc2626/ffffff?text=Harry+Potter', 8),
('Cuisine du Monde', 'Livre de recettes illustré avec 500 plats internationaux', 35000, 'https://via.placeholder.com/500x500/f97316/ffffff?text=Cuisine+Monde', 8),

-- ========================================
-- BEAUTÉ & SANTÉ (10 produits)
-- ========================================
('Parfum Chanel N°5', 'Eau de parfum femme 100ml, fragrance iconique', 145000, 'https://via.placeholder.com/500x500/0f172a/ffffff?text=Chanel+No5', 9),
('Crème Visage Anti-Âge', 'Soin régénérant avec acide hyaluronique et collagène', 55000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Creme+Visage', 9),
('Brosse Cheveux Dyson', 'Sèche-cheveux et lisseur 2-en-1 intelligent', 385000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Dyson+Hair', 9),
('Palette Maquillage Pro', 'Palette 120 couleurs fards à paupières, poudres et blush', 45000, 'https://via.placeholder.com/500x500/f97316/ffffff?text=Palette+Makeup', 9),
('Huile d\'Argan Bio', 'Huile pure 100% naturelle pour cheveux et peau, 100ml', 25000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=Huile+Argan', 9),
('Kit Manucure Complet', 'Set professionnel avec lampe UV et accessoires', 65000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Kit+Manucure', 9),
('Balance Connectée', 'Pèse-personne intelligent avec analyse composition corporelle', 75000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Balance', 9),
('Brosse à Dents Électrique', 'Sonic avec 5 modes et étui de voyage USB', 85000, 'https://via.placeholder.com/500x500/06b6d4/ffffff?text=Brosse+Elec', 9),
('Masque LED Visage', 'Appareil luminothérapie 7 couleurs anti-âge', 125000, 'https://via.placeholder.com/500x500/7c3aed/ffffff?text=Masque+LED', 9),
('Diffuseur Huiles Essentielles', 'Humidificateur ultrasonique avec LED multicolore', 35000, 'https://via.placeholder.com/500x500/14b8a6/ffffff?text=Diffuseur', 9),

-- ========================================
-- JOUETS & ENFANTS (10 produits)
-- ========================================
('LEGO Star Wars Millennium', 'Set de construction 1351 pièces, dès 9 ans', 145000, 'https://via.placeholder.com/500x500/fbbf24/000000?text=LEGO+SW', 10),
('Peluche Teddy Bear XXL', 'Ours en peluche géant 120cm, super doux', 55000, 'https://via.placeholder.com/500x500/78350f/ffffff?text=Teddy+Bear', 10),
('Trottinette Enfant', 'Trottinette 3 roues avec guidon ajustable, LED', 45000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Trottinette', 10),
('Poupée Barbie Dreamhouse', 'Maison de rêve Barbie avec 8 pièces et accessoires', 95000, 'https://via.placeholder.com/500x500/ec4899/ffffff?text=Barbie+House', 10),
('Circuit Voitures Hot Wheels', 'Piste de courses avec looping et lanceur', 65000, 'https://via.placeholder.com/500x500/f97316/ffffff?text=Hot+Wheels', 10),
('Tableau Éducatif', 'Tableau magnétique double face avec lettres et chiffres', 35000, 'https://via.placeholder.com/500x500/10b981/ffffff?text=Tableau+Educ', 10),
('Robot Programmable', 'Robot interactif pour apprendre le codage, dès 6 ans', 85000, 'https://via.placeholder.com/500x500/6366f1/ffffff?text=Robot+Code', 10),
('Cuisine Jouet Bois', 'Cuisinière en bois avec accessoires et ustensiles', 75000, 'https://via.placeholder.com/500x500/f59e0b/ffffff?text=Cuisine+Bois', 10),
('Puzzle 1000 Pièces', 'Puzzle panoramique paysage magnifique', 25000, 'https://via.placeholder.com/500x500/14b8a6/ffffff?text=Puzzle+1000', 10),
('Drône Caméra Enfant', 'Mini drone avec caméra HD, facilité de pilotage', 95000, 'https://via.placeholder.com/500x500/0ea5e9/ffffff?text=Drone+Kids', 10);

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
ORDER BY c.id;
