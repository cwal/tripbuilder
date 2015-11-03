<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Airports'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="airports form large-9 medium-8 columns content">
    <?= $this->Form->create($airport) ?>
    <fieldset>
        <legend><?= __('Add Airport') ?></legend>
        <?php
            echo $this->Form->input('code');
            echo $this->Form->input('name_en');
            echo $this->Form->input('name_fr');
            echo $this->Form->input('lat');
            echo $this->Form->input('lon');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
