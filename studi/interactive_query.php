<?php
// Connexion à la base de données
$servername = "localhost";
$username = "root"; // Votre nom d'utilisateur MySQL
$password = "MO3848seven_36"; // Remplacez par votre mot de passe (ou laissez vide si aucun mot de passe)
$dbname = "studi"; // Votre nom de base de données

// Créer la connexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifiez la connexion
if ($conn->connect_error) {
    die("Échec de la connexion : " . $conn->connect_error);
}

// Demander des paramètres à l'utilisateur
echo "Entrez le nom de l'utilisateur : ";
$handle = fopen("php://stdin", "r");
$nom = trim(fgets($handle));

echo "Entrez l'email de l'utilisateur : ";
$email = trim(fgets($handle));

// Préparer et exécuter la requête SQL
$stmt = $conn->prepare("INSERT INTO utilisateurs (nom, email) VALUES (?, ?)");
$stmt->bind_param("ss", $nom, $email); // "ss" signifie que nous attendons deux chaînes (string)

if ($stmt->execute()) {
    echo "Nouvel utilisateur ajouté avec succès.\n";
} else {
    echo "Erreur : " . $stmt->error . "\n";
}

// Fermer la connexion
$stmt->close();
$conn->close();
?>
