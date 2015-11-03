<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Flight'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Trips'), ['controller' => 'Trips', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Trip'), ['controller' => 'Trips', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List From Airport'), ['controller' => 'Airports', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New From Airport'), ['controller' => 'Airports', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="flights index large-9 medium-8 columns content">
    <h3><?= __('Flights') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th><?= $this->Paginator->sort('id') ?></th>
                <th><?= $this->Paginator->sort('trip_id') ?></th>
                <th><?= $this->Paginator->sort('from_airport_id') ?></th>
                <th><?= $this->Paginator->sort('to_airport_id') ?></th>
                <th class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($flights as $flight): ?>
            <tr>
                <td><?= $this->Number->format($flight->id) ?></td>
                <td><?= $flight->has('trip') ? $this->Html->link($flight->trip->name, ['controller' => 'Trips', 'action' => 'view', $flight->trip->id]) : '' ?></td>
                <td><?= $flight->has('from_airport') ? $this->Html->link($flight->from_airport->id, ['controller' => 'Airports', 'action' => 'view', $flight->from_airport->id]) : '' ?></td>
                <td><?= $flight->has('to_airport') ? $this->Html->link($flight->to_airport->id, ['controller' => 'Airports', 'action' => 'view', $flight->to_airport->id]) : '' ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $flight->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $flight->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $flight->id], ['confirm' => __('Are you sure you want to delete # {0}?', $flight->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        <p><?= $this->Paginator->counter() ?></p>
    </div>
</div>
