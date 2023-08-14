<!-- produto -->
<div class="span6">
	<?php echo $this->Html->tag('h1', $Produto['Product']['name']) ?>
	
	<h3><?php echo $this->Number->currency($Produto['Product']['price'], null, array('before' => 'R$ ', 'decimals' => ',')) ?></h3>

	<?php if (!empty($Produto['Product']['picture'])) { ?>
	<?php echo $this->Html->image('/files/product/picture/' . $Produto['Product']['id'] . '/' . $Produto['Product']['picture'], array('class' => 'thumbnail', 'style' => 'margin-bottom: 20px')) ?>
	<?php } ?>
	
	<?php echo $this->Html->para(null, $Produto['Product']['description']) ?>

	<!-- pagamento -->
	<form target="pagseguro" method="post" action="https://pagseguro.uol.com.br/v2/checkout/cart.html?action=add" class="form-inline">
		<input type="hidden" name="receiverEmail" value="contato@thiagobelem.net" />
		<input type="hidden" name="currency" value="BRL" />

		<!-- dados do produto -->
		<input type="hidden" name="itemId" value="<?php echo $Produto['Product']['id'] ?>" />
		<input type="hidden" name="itemDescription" value="<?php echo $Produto['Product']['name'] ?>" />
		<input type="hidden" name="itemAmount" value="<?php echo $this->Number->currency($Produto['Product']['price'], null, array('before' => '')) ?>" />

		<!-- quantidade -->
		<div class="input-append">
			<input type="number" name="itemQuantity" id="itemQuantity" value="1" class="input-mini" />
			<span class="add-on"><label for="itemQuantity">unidades</label></span>
		</div>

		<input type="submit" value="Comprar &raquo;" class="btn btn-success" />
	</form>
	<!-- /pagamento -->
</div>
<!-- /produto -->

<!-- outros -->
<div class="span6">
	<h3>Veja outros produtos</h3>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	tempor incididunt ut labore et dolore magna aliqua</p>

	<ul class="thumbnails">
		<?php foreach ($OutrosProdutos AS $Produto) { ?>
		<li class="thumbnail span6">
			<img src="http://placekitten.com/g/360/200" />
			<?php echo $this->Html->tag('h2', $Produto['Product']['name']) ?>
			<?php echo $this->Html->para(null, $Produto['Product']['description']) ?>
			<p><?php echo $this->Html->link('Comprar', ['controller' => 'products', 'action' => 'detalhes', 'slug' => $Produto['Product']['slug']], ['class' => 'btn btn-success']) ?></p>
		</li>
		<?php } ?>
	</ul>
</div>
<!-- /outros -->