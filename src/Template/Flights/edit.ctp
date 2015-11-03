<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $flight->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $flight->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Flights'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Trips'), ['controller' => 'Trips', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Trip'), ['controller' => 'Trips', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List From Airport'), ['controller' => 'Airports', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New From Airport'), ['controller' => 'Airports', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="flights form large-9 medium-8 columns content">
    <?= $this->Form->create($flight) ?>
    <fieldset>
        <legend><?= __('Edit Flight') ?></legend>
        <?php
            echo $this->Form->input('trip_id', ['options' => $trips]);
            echo $this->Form->input('from_airport_id', ['options' => $airports]);
            echo $this->Form->input('to_airport_id', ['options' => $airports]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
