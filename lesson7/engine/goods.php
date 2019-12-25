<?php
function getAllGoods()
{
	return getAssocResult("SELECT * FROM catalog");
}

function getOneGood(int $id)
{
	$sql = "SELECT * FROM catalog WHERE id = {$id}";
	$result = getAssocResult($sql)[0];
	return $result;
}
