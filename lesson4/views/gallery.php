<?php /** @var $images */ ?>

Галерея<br>
<div class="gallery">
	<? foreach ($images as $image): ?>
      <img src="<?= $address . $image ?>" id="<?= $image ?>">
	<? endforeach; ?>
</div>
<div class="modalWindow"></div>
