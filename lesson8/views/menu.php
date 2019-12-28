<? if (!$auth): ?>
    <form action="/login/" method="post">
        <input type='text' name='login' placeholder='Логин'>
        <input type='password' name='pass' placeholder='Пароль'>
        Save? <input type='checkbox' name='save'>
        <input type='submit' name='send' value="Войти">
    </form>
    <p>Еще не зарегистрированы? <a href="/registration/">Зарегистрироваться</a></p>
<? else: ?>
    Добро пожаловать, <?= $user ?> <a href='/logout/'>выход</a><br>
<? endif; ?>
    <br>
<div class="topmenu">
    <a href="/">Главная</a>
    <a href="/news/">Новости</a>
    <a href="/catalog/">Каталог</a>
    <a href="/feedback/">Отзывы</a>
    <a href="/basket/" class="menu-link__basket">Корзина <span id="counter"><?= $count ?></span></a>

<? if (is_admin()): ?>
    <a href="/orders/">Оформленные заказы</a>
<? endif; ?>
</div>
