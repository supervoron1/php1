<?php
function getGallery()
{
	$img = getAssocResult("SELECT * FROM gallery", "gallery");
	return $img;
}

function getGalleryImg($id)
{
	$id = (int)$id;
	viewsUpdate($id);
	$sql = "SELECT * FROM gallery WHERE id = {$id}";
	$img = getAssocResult($sql, "gallery");


	$result = [];
	if (isset($img[0]))
		$result = $img[0];
	return $result;
}

function viewsUpdate($id) {
	$id = (int)$id;
	$db = getDb("gallery");
	mysqli_query($db, "UPDATE gallery SET views = views + 1 WHERE id = {$id}");
}
