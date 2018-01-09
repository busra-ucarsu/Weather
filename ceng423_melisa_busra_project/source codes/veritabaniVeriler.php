<?php
try {
	
    $db_ad='havadurumu';
    $db_kullanici='root';
    $db_sifre='';
    $db = new PDO('mysql:host=localhost;dbname='.$db_ad, $db_kullanici, $db_sifre);
    $db->exec("set names utf8");
 
} 
catch (PDOException $e)
{
    print "Bağantı Hatası!: " . $e->getMessage() . "<br/>";
    die();
}
 
	$sql = "SELECT * FROM iller";
	 $statement= $db->prepare($sql);
	 $statement->execute();
	 $iller =  $statement->fetchAll(); 	
	 // Read JSON file
	$json = file_get_contents('./havadurumu.json'); 
	//Decode JSON
	 $json_data = json_decode($json,true); 
	 //print_r($json_data[0]["main"]["temp"]);
	 
	 $elementCount  = count($json_data); 
	 $sql=$db->prepare("DELETE FROM havadurumu ");
 	$sql->execute();
	
	for($i=0;$i<$elementCount;$i++){
		 foreach($iller as $il)
		 {
			if($il["adi"]==$json_data[$i]["city"]["name"]) {
					$sql = "INSERT INTO havadurumu (adi , derece) VALUES (:adi,:derece )";
					$statement= $db->prepare($sql);
					$statement->execute(array(
											"adi" => $il["adi"],  
											"derece" => ($json_data[$i]["main"]["temp"]-273.15) 
										)	
									);  
					$hava_durumu_ekle =  $statement->fetch();
			}
		 }
	 } 
	 
	 echo "tamamlandı";
	 //var_dump($elementCount);
	 //for($i=0;$i<$elementCount)
?>