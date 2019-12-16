<h2>Галерея</h2>
<div style="display: flex; justify-content: space-between; flex-wrap: wrap">
	<? foreach ($img as $item): ?>
      <p><a href="/image/?id=<?= $item['id'] ?>"><img
                  src="/gallery_img/small/<?= $item['img_name'] ?>"></a></p>
	<? endforeach; ?>
</div>
