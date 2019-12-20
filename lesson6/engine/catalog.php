<?php
function getCatalog()
{
	$sql = "SELECT * FROM catalog";
	return getAssocResult($sql);
}

function getCatalogItem($id)
{
	$sql = "SELECT * FROM catalog WHERE id = {$id}";
	$goods = getAssocResult($sql);
	return $goods[0]['description'];
}
