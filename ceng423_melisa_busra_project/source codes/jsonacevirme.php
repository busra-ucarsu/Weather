<?php
$handle = fopen("weather_14.json", "r");
$myfile = fopen("havadurumu.json", "w") or die("Unable to open file!");

if ($handle) {
    while (($line = fgets($handle)) !== false) { 
			$line =$line.',';
	
		fwrite($myfile, $line); 
		
    }

    fclose($handle);
} else {
    // error opening the file.
}  
	
fclose($myfile);
?>