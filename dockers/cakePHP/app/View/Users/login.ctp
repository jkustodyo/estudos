<?php echo $this->Session->flash() ?>
<?php echo $this->Session->flash('auth') ?>

<?php echo $this->Form->create('User') . PHP_EOL ?>
<?php echo $this->Form->input('email') . PHP_EOL ?>
<?php echo $this->Form->input('password', array('label' => 'Senha')) . PHP_EOL ?>
<?php echo $this->Form->end('Login') . PHP_EOL ?>