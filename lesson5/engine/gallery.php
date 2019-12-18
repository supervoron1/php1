<?php
function getGallery()
{
	$img = getAssocResult("SELECT * FROM gallery ORDER BY views DESC");
	return $img;
}

function getGalleryImg($id)
{
	$id = (int)$id;
	$sql = "SELECT * FROM gallery WHERE id = {$id}";
	$img = getAssocResult($sql);
	return $img[0];
}

function viewsUpdate($id) {
	$id = (int)$id;
	$db = getDb("gallery");
	mysqli_query($db, "UPDATE gallery SET views = views + 1 WHERE id = {$id}");
}
