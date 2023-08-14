<ul class="thumbnails">

	<?php foreach ($produtos AS $produto) { ?>
	<li class="span4">
		<div class="thumbnail">
			<?php echo $this->Html->image('/files/product/picture/' . $produto['Product']['id'] . '/avatar_' . $produto['Product']['picture']) ?>

			<h2><?php echo $produto['Product']['name'] ?></h2>
			<p><?php echo $produto['Product']['description'] ?></p>

			<p><?php echo $this->Html->link('Comprar', ['controller' => 'products', 'action' => 'detalhes', 'slug' => $produto['Product']['slug']], ['class' => 'btn btn-success']) ?></p>
		</div>
	</li>
	<?php } ?>

</ul>