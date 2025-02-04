<?php

    
    if(isset($_FILES['file'])){ // on vérifie la présence de 'file'
        
        //on récupère les valeurs
        $tempName= $_FILES['file']['tmp_name'];
        $name= $_FILES['file']['name'];
        $size= $_FILES['file']['size'];
        $error= $_FILES['file']['error'];
        $type= $_FILES['file']['type'];
        $tailleMaxi = 500000;

        //salon.jpg  récupere l'extension
        $tabExtension = explode('.',$name);

        $newName=strtolower($tabExtension[0]);
        
        

        $extension=strtolower(end($tabExtension));
        
        $extentionAutorisees=['jpg','jpeg','gif','png'];
    
        if(in_array($extension,$extentionAutorisees)){
            //$uniqueName=uniqid('',true);
            $uniqueName=substr(bin2hex(random_bytes(3)), 0, 4);

            $fileName=$newName.'_'.$uniqueName.".".$extension;
     


            move_uploaded_file($tempName,'./_assets/_imgs/'.$fileName);
        }else{

            echo 'erreur';
        }
      


    
    
    }




?>
