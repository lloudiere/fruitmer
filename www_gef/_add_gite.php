<?php
    include './_hosts.php'
?>
<?php

include '_download.php'
?>

<?php
    
    if(isset($_POST['gite_nom'])){
        $giteNom=$_POST['gite_nom'];
        $giteAdresse=$_POST['gite_adresse'];
        $giteCp=$_POST['gite_cp'];
        $giteVille=$_POST['gite_ville'];
        $gitePays=$_POST['gite_pays'];
        $idType=$_POST['id_type'];
        $giteLien=$_POST['gite_lien'];
        
     

        $addGite = $db->prepare('
            INSERT INTO gef_gites set 
        
            gite_nom=?,
            gite_adresse=?,
            gite_cp=?,
            gite_ville=?,
            gite_pays=?,
            id_type=?,
            gite_lien=?,
            gite_photo=?
            
        ');

        $addGite->execute([
            $giteNom,
            $giteAdresse,
            $giteCp,
            $giteVille,
            $gitePays,
            $idType,
            $giteLien,
            $fileName
        ]);
       

    }
    echo "<script language='javascript'>
          document.location.replace('./_admin.php')
          </script>";
  
  
    

    


?>
