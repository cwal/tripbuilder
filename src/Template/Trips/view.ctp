<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Trip'), ['action' => 'edit', $trip->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Trip'), ['action' => 'delete', $trip->id], ['confirm' => __('Are you sure you want to delete # {0}?', $trip->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Trips'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Trip'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Flights'), ['controller' => 'Flights', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Flight'), ['controller' => 'Flights', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="trips view large-9 medium-8 columns content">
    <h3><?= h($trip->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th><?= __('Name') ?></th>
            <td><?= h($trip->name) ?></td>
        </tr>
        <tr>
            <th><?= __('Id') ?></th>
            <td><?= $this->Number->format($trip->id) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Flights') ?></h4>
        <?php if (!empty($trip->flights)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th><?= __('Id') ?></th>
                <th><?= __('Trip Id') ?></th>
                <th><?= __('From Airport Id') ?></th>
                <th><?= __('To Airport Id') ?></th>
                <th class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($trip->flights as $flights): ?>
            <tr>
                <td><?= h($flights->id) ?></td>
                <td><?= h($flights->trip_id) ?></td>
                <td><?= h($flights->from_airport_id) ?></td>
                <td><?= h($flights->to_airport_id) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'Flights', 'action' => 'view', $flights->id]) ?>

                    <?= $this->Html->link(__('Edit'), ['controller' => 'Flights', 'action' => 'edit', $flights->id]) ?>

                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Flights', 'action' => 'delete', $flights->id], ['confirm' => __('Are you sure you want to delete # {0}?', $flights->id)]) ?>

                </td>
            </tr>
            <?php endforeach; ?>
        </table>
    <?php endif; ?>
    </div>
</div>
