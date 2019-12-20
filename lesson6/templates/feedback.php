<h2>Отзывы</h2>

<?= $error ?>

<form action="/feedback/<?= $action ?>" method="post">
    Оставьте отзыв: <br>
    <input type="text" name="name" placeholder="Ваше имя" value="<?= $name ?>"><br>
    <input type="text" name="message" placeholder="Ваш отзыв" value="<?= $feedtext ?>"><br>
    <input type="submit" name="OK" value="<?= $buttontext ?>">
</form>

<? foreach ($feedback as $value): ?>
    <p>
        <b><?= $value['name'] ?>:</b> <?= $value['feedback'] ?>
        <a href="/feedback/edit/<?= $value['id'] ?>">[править]</a>
        <a href="/feedback/delete/<?= $value['id'] ?>">[x]</a><br>
    </p>
<? endforeach; ?>
