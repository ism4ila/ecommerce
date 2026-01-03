-- Mise à jour des URLs d'images pour utiliser le placeholder local
USE ecommerce;

-- Catégorie Électronique
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=iPhone+14+Pro' WHERE name LIKE '%iPhone 14%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Galaxy+S23' WHERE name LIKE '%Samsung Galaxy%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=14b8a6&text=MacBook+Air' WHERE name LIKE '%MacBook Air%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=8b5cf6&text=iPad+Pro' WHERE name LIKE '%iPad Pro%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f97316&text=Sony+WH1000XM5' WHERE name LIKE '%Sony WH%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=06b6d4&text=AirPods+Pro' WHERE name LIKE '%AirPods%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Dell+XPS+15' WHERE name LIKE '%Dell XPS%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=7c3aed&text=PlayStation+5' WHERE name LIKE '%PS5%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Switch+OLED' WHERE name LIKE '%Nintendo Switch%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Canon+EOS' WHERE name LIKE '%Canon EOS%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f59e0b&text=Samsung+TV' WHERE name LIKE '%Samsung TV%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=14b8a6&text=Apple+Watch' WHERE name LIKE '%Apple Watch%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=8b5cf6&text=GoPro+Hero' WHERE name LIKE '%GoPro%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Bose+Speaker' WHERE name LIKE '%Bose%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=06b6d4&text=Kindle' WHERE name LIKE '%Kindle%';

-- Catégorie Vêtements Homme
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e293b&text=Costume+Homme' WHERE name LIKE '%Costume Homme%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Chemise' WHERE name LIKE '%Chemise Blanche%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e40af&text=Jean' WHERE name LIKE '%Jean Denim%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Polo' WHERE name LIKE '%Polo%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Blouson+Cuir' WHERE name LIKE '%Blouson Cuir%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=7c3aed&text=Pull+Cachemire' WHERE name LIKE '%Pull Cachemire%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=64748b&text=T-Shirts' WHERE name LIKE '%T-Shirt Premium%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=374151&text=Pardessus' WHERE name LIKE '%Pardessus%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=d97706&text=Chino' WHERE name LIKE '%Chino%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=dc2626&text=Cravate+Soie' WHERE name LIKE '%Cravate%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1f2937&text=Gilet' WHERE name LIKE '%Gilet Sans Manches%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0ea5e9&text=Short+Sport' WHERE name LIKE '%Short Sport%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Hoodie' WHERE name LIKE '%Sweat Capuche%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Pyjama' WHERE name LIKE '%Pyjama%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=06b6d4&text=Maillot+Bain' WHERE name LIKE '%Maillot de Bain%';

-- Catégorie Vêtements Femme
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Robe+Cocktail' WHERE name LIKE '%Robe Cocktail%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Jupe' WHERE name LIKE '%Jupe Plissée%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fef3c7&text=Blouse+Soie&color=000000' WHERE name LIKE '%Blouse Soie%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=475569&text=Tailleur' WHERE name LIKE '%Tailleur%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f97316&text=Robe+Boheme' WHERE name LIKE '%Robe Bohème%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=3b82f6&text=Jean+Skinny' WHERE name LIKE '%Jean Skinny%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=a855f7&text=Cardigan' WHERE name LIKE '%Cardigan%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f8fafc&text=Top+Dentelle&color=000000' WHERE name LIKE '%Top Dentelle%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Palazzo' WHERE name LIKE '%Pantalon Palazzo%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Robe+Pull' WHERE name LIKE '%Robe Pull%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e293b&text=Blazer' WHERE name LIKE '%Blazer%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=dc2626&text=Combinaison' WHERE name LIKE '%Combinaison%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Legging+Sport' WHERE name LIKE '%Legging Sport%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f59e0b&text=Robe+Lin' WHERE name LIKE '%Robe Chemise Lin%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f3f4f6&text=Gilet+Fourrure&color=000000' WHERE name LIKE '%Gilet Sans Manches Fausse%';

-- Catégorie Chaussures
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Nike+Air+Max' WHERE name LIKE '%Nike Air Max%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Ultraboost' WHERE name LIKE '%Ultraboost%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=dc2626&text=Converse' WHERE name LIKE '%Converse%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Timberland' WHERE name LIKE '%Timberland%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e293b&text=Mocassins' WHERE name LIKE '%Mocassins%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Escarpins' WHERE name LIKE '%Escarpins%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f97316&text=Sandales' WHERE name LIKE '%Sandales%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Ballerines' WHERE name LIKE '%Ballerines%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=374151&text=Chelsea+Boots' WHERE name LIKE '%Bottines Chelsea%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f8fafc&text=Sneakers&color=000000' WHERE name LIKE '%Baskets Montantes%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e40af&text=Boat+Shoes' WHERE name LIKE '%Chaussures Bateau%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Bottes' WHERE name LIKE '%Bottes Cavalières%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Trail+Shoes' WHERE name LIKE '%Chaussures Randonnée%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=Havaianas&color=000000' WHERE name LIKE '%Tongs Havaianas%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=06b6d4&text=Crocs' WHERE name LIKE '%Crocs%';

-- Catégorie Accessoires  
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Sac+Cuir' WHERE name LIKE '%Sac à Main Cuir%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e293b&text=Montre+Auto' WHERE name LIKE '%Montre Automatique%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Ray-Ban' WHERE name LIKE '%Lunettes Soleil%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=374151&text=Ceinture' WHERE name LIKE '%Ceinture Cuir%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Portefeuille' WHERE name LIKE '%Portefeuille RFID%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=7c3aed&text=Echarpe' WHERE name LIKE '%Écharpe Cachemire%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e40af&text=Casquette' WHERE name LIKE '%Casquette Baseball%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=dc2626&text=Bonnet' WHERE name LIKE '%Bonnet Laine%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Gants+Cuir' WHERE name LIKE '%Gants Cuir%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=374151&text=Sac+Dos' WHERE name LIKE '%Sac à Dos Business%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e293b&text=Parapluie' WHERE name LIKE '%Parapluie%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=Collier+Or&color=000000' WHERE name LIKE '%Bijoux Collier Or%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f3f4f6&text=Boucles&color=000000' WHERE name LIKE '%Boucles d\'Oreilles%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Fitbit' WHERE name LIKE '%Bracelet Connecté%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Porte-cles' WHERE name LIKE '%Porte-Clés%';

-- Catégorie Maison & Décoration
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=Lampe+LED&color=000000' WHERE name LIKE '%Lampe Design%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=7c3aed&text=Coussin' WHERE name LIKE '%Coussin Velours%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=06b6d4&text=Vase' WHERE name LIKE '%Vase%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f3f4f6&text=Tapis&color=000000' WHERE name LIKE '%Tapis Berbère%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=Miroir&color=000000' WHERE name LIKE '%Miroir Mural%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Cadres' WHERE name LIKE '%Cadre Photo%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Plaid' WHERE name LIKE '%Plaid%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e293b&text=Rideaux' WHERE name LIKE '%Rideau%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f8fafc&text=Horloge&color=000000' WHERE name LIKE '%Horloge%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f97316&text=Bougie' WHERE name LIKE '%Bougie%';

-- Catégorie Sports & Loisirs
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=14b8a6&text=Tapis+Yoga' WHERE name LIKE '%Tapis Yoga%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=1e293b&text=Halteres' WHERE name LIKE '%Haltères%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Velo+Elec' WHERE name LIKE '%Vélo Électrique%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f8fafc&text=Ballon+Nike&color=000000' WHERE name LIKE '%Ballon Football%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=Raquette&color=000000' WHERE name LIKE '%Raquette Tennis%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Tente+4P' WHERE name LIKE '%Tente Camping%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=dc2626&text=Sac+Boxe' WHERE name LIKE '%Sac de Frappe%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Rollers' WHERE name LIKE '%Rollers%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Corde+Sauter' WHERE name LIKE '%Corde à Sauter%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0ea5e9&text=Table+Tennis' WHERE name LIKE '%Table Tennis%';

-- Catégorie Livres
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=Alchimiste&color=000000' WHERE name LIKE '%Alchimiste%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=06b6d4&text=Petit+Prince' WHERE name LIKE '%Le Petit Prince%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=7c3aed&text=Sapiens' WHERE name LIKE '%Sapiens%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=dc2626&text=Harry+Potter' WHERE name LIKE '%Harry Potter%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f97316&text=Cuisine+Monde' WHERE name LIKE '%Cuisine du Monde%';

-- Catégorie Beauté & Santé
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0f172a&text=Chanel+No5' WHERE name LIKE '%Parfum Chanel%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Creme+Visage' WHERE name LIKE '%Crème Visage%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Dyson+Hair' WHERE name LIKE '%Brosse Cheveux Dyson%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f97316&text=Palette+Makeup' WHERE name LIKE '%Palette Maquillage%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=Huile+Argan&color=000000' WHERE name LIKE '%Huile d\'Argan%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Kit+Manucure' WHERE name LIKE '%Kit Manucure%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Balance' WHERE name LIKE '%Balance Connectée%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=06b6d4&text=Brosse+Elec' WHERE name LIKE '%Brosse à Dents%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=7c3aed&text=Masque+LED' WHERE name LIKE '%Masque LED%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=14b8a6&text=Diffuseur' WHERE name LIKE '%Diffuseur Huiles%';

-- Catégorie Jouets & Enfants
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=fbbf24&text=LEGO+SW&color=000000' WHERE name LIKE '%LEGO Star Wars%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=78350f&text=Teddy+Bear' WHERE name LIKE '%Peluche Teddy%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Trottinette' WHERE name LIKE '%Trottinette%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=ec4899&text=Barbie+House' WHERE name LIKE '%Poupée Barbie%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f97316&text=Hot+Wheels' WHERE name LIKE '%Circuit Voitures%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=10b981&text=Tableau+Educ' WHERE name LIKE '%Tableau Éducatif%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=6366f1&text=Robot+Code' WHERE name LIKE '%Robot Programmable%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=f59e0b&text=Cuisine+Bois' WHERE name LIKE '%Cuisine Jouet%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=14b8a6&text=Puzzle+1000' WHERE name LIKE '%Puzzle%';
UPDATE products SET image = 'placeholder.php?w=500&h=500&bg=0ea5e9&text=Drone+Kids' WHERE name LIKE '%Drône Caméra%';

SELECT 'Images mises à jour' AS Statut, COUNT(*) AS Total FROM products WHERE image LIKE 'placeholder.php%';
