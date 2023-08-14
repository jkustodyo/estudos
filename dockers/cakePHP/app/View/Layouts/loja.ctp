<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="utf-8" />
	<title><?php echo $title_for_layout ?></title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- CSS -->
	<?php echo $this->Html->css(array('bootstrap.min', 'style', 'bootstrap-responsive.min')) ?>

	<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>

				<?php echo $this->Html->link('Loja Virtual', '/', array('class' => 'brand')) ?>

				<div class="nav-collapse collapse">
					<ul class="nav">
						<li><?php echo $this->Html->link('Home', '/') ?></li>
						<li><?php echo $this->Html->link('Produtos', array('controller' => 'products', 'action' => 'index')) ?></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row-fluid">

			<?php echo $this->fetch('content') ?>

		</div>

		<hr>

		<footer>
			<p>Criado por <a href="http://thiagobelem.net/">Thiago Belem</a> no <a href="http://phpnrio.com.br/">PHP'n Rio 2012</a></p>
		</footer>

	</div>

	<?php echo $this->Html->script(array('jquery-1.8.2.min.js', 'bootstrap.min.js')) ?>

	<?php echo $this->element('sql_dump') ?>

</body>
</html>