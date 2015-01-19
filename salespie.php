<!--
	Taylor Morrow
	300189738
	Sales pie exercise
-->

<?php

	$mysqli = mysqli_connect("localhost","cs213user","letmein","testDB");

	$year= $_POST['year'];

	$taryear= filter_input(INPUT_POST, 'year');
	$yearsql= "SELECT * FROM sales WHERE year = '".$taryear."'";
	$result= mysqli_query($mysqli, $yearsql) or die(mysql_error($mysqli));

	$row = mysqli_fetch_array($result);

	$image = imagecreate(300, 500);
	$white = imagecolorallocate($image, 255, 255, 255);
	$black = imagecolorallocate($image, 0, 0, 0);
	$red = imagecolorallocate($image, 255, 0, 0);
	$green = imagecolorallocate($image, 0, 255, 0);
	$blue = imagecolorallocate($image, 0, 0, 255);

	$totalprofit = $row['q1'] + $row['q2'] + $row['q3'] + $row['q4'];

	$q1Per = $row['q1'] / $totalprofit;
	$q2Per = $row['q2'] / $totalprofit;
	$q3Per = $row['q3'] / $totalprofit;
	$q4Per = $row['q4'] / $totalprofit;

	$q1Deg = $q1Per * 360;
	$q2Deg = $q2Per * 360 + $q1Deg;
	$q3Deg = $q3Per * 360 + $q2Deg;
	$q4Deg = $q4Per * 360 + $q3Deg;

	imagefill($image, 0, 0, $white);
	imagefilledarc($image, 100, 100, 200, 150, 0, $q1Deg, $black, IMG_ARC_PIE);
	imagefilledarc($image, 100, 100, 200, 150, $q1Deg, $q2Deg, $red, IMG_ARC_PIE);
	imagefilledarc($image, 100, 100, 200, 150, $q2Deg, $q3Deg, $green, IMG_ARC_PIE);
	imagefilledarc($image, 100, 100, 200, 150, $q3Deg, $q4Deg, $blue, IMG_ARC_PIE);

	imagestring($image, 25, 0, 0, "Quarterly sales for Year: ".$year, $black);

	imagefilledrectangle($image, 20, 200, 40, 220, $black);
	imagestring($image, 12, 50, 200, "- Q1 ".$q1Per * 100, $black);

	imagefilledrectangle($image, 20, 240, 40, 260, $red);
	imagestring($image, 12, 50, 240, "- Q2 ".$q2Per * 100, $red);

	imagefilledrectangle($image, 20, 280, 40, 300, $green);
	imagestring($image, 12, 50, 280, "- Q3 ".$q3Per * 100, $green);

	imagefilledrectangle($image, 20, 320, 40, 340, $blue);
	imagestring($image, 12, 50, 320, "- Q4 ".$q4Per * 100, $blue);


	header("Content-type: image/png");
	imagepng($image);

?>
