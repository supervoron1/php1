<h2>Галерея</h2>
<div class="gallery">
	<? foreach ($img as $item): ?>
      <p class="gallery-item">
          <a href="/image/?id=<?= $item['id'] ?>"><img
                  src="/gallery_img/small/<?= $item['img_name'] ?>"></a>
          <span class="views-counter"><?= $item['views'] ?></span>
      </p>
	<? endforeach; ?>
</div>
