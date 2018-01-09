<?php
error_reporting(E_ERROR | E_PARSE);
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
$Ilderece="";
function replace_tr($text) {
	$text = trim($text);
	$search = array('Ç','ç','Ğ','ğ','ı','İ','Ö','ö','Ş','ş','Ü','ü',' ');
	$replace = array('c','c','g','g','i','i','o','o','s','s','u','u','-');
	$new_text = str_replace($search,$replace,$text);
	return $new_text;
}  

if(isset($_POST['il'])){
	if($_POST['il'] != ""){
		try{
			include("simple_html_dom.php");
		}catch(Exception $e){
			echo "daasd";
			exit();
		}
		$serviceUrl = "http://havadurumu.milliyet.com.tr";
		$sehir = $_POST['il'];
		$trsiz_kelime = replace_tr($sehir); 
		$html = file_get_html($serviceUrl.'/'.$trsiz_kelime.'/');
		$text = "";
		if($html != false){
			foreach($html->find('.hava2') as $element) {
				$text .= $element->plaintext ; 
			}	  
			
			$dereceler = explode(" ", $text);
			$Ilderece= $dereceler[0]; // gunduz 
			
			$text = str_replace(' ', '', $text);  
			 // Cevap  Gelmeyince
			if (!preg_match('/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/', $text)) // en az bir sayı ve harf içermiyorsa
			{  
				 $sql = "SELECT * FROM havadurumu WHERE adi =:adi";
				 $statement= $db->prepare($sql);
				 $statement->execute(array(':adi'=> $_POST['il']));
				 $hava =  $statement->fetch();
				 $Ilderece = number_format((float)$hava['derece'], 2, '.', '').'°C'; 
			}
		}else{
			 $sql = "SELECT * FROM havadurumu WHERE adi =:adi";
				 $statement= $db->prepare($sql);
				 $statement->execute(array(':adi'=> $_POST['il']));
				 $hava =  $statement->fetch();
				 $Ilderece = number_format((float)$hava['derece'], 2, '.', '').'°C'; 
		}
	} 
}  
	$sql = "SELECT * FROM iller";
	 $statement= $db->prepare($sql);
	 $statement->execute();
	 $iller =  $statement->fetchAll(); 	
?>
<form method="post" action="" id="havadurumu">
<select name="il" onchange="myFunction()">
<option value="" selected>İl seçiniz</option>
<?php   foreach($iller as $il)
		 { if($_POST['il'] == $il['adi'] ){ 
		 ?>
			<option value="<?=$il['adi']?>" selected><?=$il['adi']?></option>
		 <?php }else { ?>
		 			<option value="<?=$il['adi']?>"><?=$il['adi']?></option>
		 <?php } } ?>
</select>
  <?=$Ilderece;?>
<form>
<script>
function myFunction() {
	document.getElementById("havadurumu").submit();
}
</script>