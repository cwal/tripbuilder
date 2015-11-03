<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Flight'), ['action' => 'edit', $flight->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Flight'), ['action' => 'delete', $flight->id], ['confirm' => __('Are you sure you want to delete # {0}?', $flight->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Flights'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Flight'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Trips'), ['controller' => 'Trips', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Trip'), ['controller' => 'Trips', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List From Airport'), ['controller' => 'Airports', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New From Airport'), ['controller' => 'Airports', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="flights view large-9 medium-8 columns content">
    <h3><?= h($flight->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th><?= __('Id') ?></th>
            <td><?= $this->Number->format($flight->id) ?></td>
        </tr>
        <tr>
            <th><?= __('Trip') ?></th>
            <td><?= $flight->has('trip') ? $this->Html->link($flight->trip->name, ['controller' => 'Trips', 'action' => 'view', $flight->trip->id]) : '' ?></td>
        </tr>
        <tr>
            <th><?= __('From Airport') ?></th>
            <td><?= $flight->has('from_airport') ? $this->Html->link($flight->from_airport->id, ['controller' => 'Airports', 'action' => 'view', $flight->from_airport->id]) : '' ?></td>
        </tr>
        <tr>
            <th><?= __('To Airport') ?></th>
            <td><?= $flight->has('to_airport') ? $this->Html->link($flight->to_airport->id, ['controller' => 'Airports', 'action' => 'view', $flight->to_airport->id]) : '' ?></td>
        </tr>
    </table>
</div>
