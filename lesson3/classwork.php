<table border="1" cellspacing="0" cellpadding="3">
	<?php for ($i = 1; $i <= $n; $i++): ?>
      <tr><td><?= $i ?></td><td>Данные</td></tr>
	<? endfor; ?>
</table>

<table border="1" cellspacing="0" cellpadding="3">
	<?php for ($i = 1;$i <= $n;	$i++) { ?>
    <tr><td><?= $i ?></td><td>Данные</td></tr>
    <?} ?>  // не красиво, не понятно что закрывается
</table>
