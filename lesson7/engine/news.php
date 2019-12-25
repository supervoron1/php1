<?php
function getNews()
{
	return getAssocResult("SELECT * FROM news");
}

function getNewsContent(int $id)
{
	$sql = "SELECT * FROM news WHERE id = {$id}";
	$news = getAssocResult($sql);
	return $news[0];
}
