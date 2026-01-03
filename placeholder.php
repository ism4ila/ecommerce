<?php
/**
 * Générateur d'images placeholder SVG dynamiques
 * Utilisé pour créer des images colorées avec texte pour les produits
 */

// Récupérer les paramètres
$width = isset($_GET['w']) ? intval($_GET['w']) : 500;
$height = isset($_GET['h']) ? intval($_GET['h']) : 500;
$bg = isset($_GET['bg']) ? $_GET['bg'] : '6366f1';
$text = isset($_GET['text']) ? urldecode($_GET['text']) : 'Produit';
$textColor = isset($_GET['color']) ? $_GET['color'] : 'ffffff';

// Nettoyer les entrées
$bg = preg_replace('/[^0-9A-Fa-f]/', '', $bg);
$textColor = preg_replace('/[^0-9A-Fa-f]/', '', $textColor);
$text = htmlspecialchars($text, ENT_QUOTES, 'UTF-8');

// Calculer la taille de police
$fontSize = min($width, $height) / 10;

// Créer le SVG
header('Content-Type: image/svg+xml; charset=UTF-8');
header('Cache-Control: public, max-age=86400'); // Cache 24h

echo '<?xml version="1.0" encoding="UTF-8"?>';
?>
<svg width="<?php echo $width; ?>" height="<?php echo $height; ?>" xmlns="http://www.w3.org/2000/svg">
    <defs>
        <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="100%">
            <stop offset="0%" style="stop-color:#<?php echo $bg; ?>;stop-opacity:1" />
            <stop offset="100%" style="stop-color:#<?php echo $bg; ?>bb;stop-opacity:1" />
        </linearGradient>
    </defs>
    <rect width="100%" height="100%" fill="url(#grad1)"/>
    <text x="50%" y="50%" 
          font-family="Arial, sans-serif" 
          font-size="<?php echo $fontSize; ?>" 
          fill="#<?php echo $textColor; ?>" 
          text-anchor="middle" 
          dominant-baseline="middle"
          opacity="0.9">
        <?php echo $text; ?>
    </text>
</svg>
