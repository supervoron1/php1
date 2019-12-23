<h2>Наш каталог</h2>
<div class="catalog">
	<? foreach ($goods as $item): ?>
      <div class="catalog_item">
          <a href="/item/?id=<?= $item['id'] ?>">
              <img src="/catalog_img/<?= $item['image'] ?>" id="<?= $item['id'] ?>">
          </a>
          <h3><?= $item['name'] ?></h3>
          <p><?= $item['short_desc'] ?></p>
          <p><?= $item['price'] ?> $</p>
          <button>Купить</button>
      </div>
	<? endforeach; ?>
</div>
