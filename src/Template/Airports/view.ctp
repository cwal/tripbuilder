<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Airport'), ['action' => 'edit', $airport->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Airport'), ['action' => 'delete', $airport->id], ['confirm' => __('Are you sure you want to delete # {0}?', $airport->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Airports'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Airport'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="airports view large-9 medium-8 columns content">
    <h3><?= h($airport->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th><?= __('Code') ?></th>
            <td><?= h($airport->code) ?></td>
        </tr>
        <tr>
            <th><?= __('Name En') ?></th>
            <td><?= h($airport->name_en) ?></td>
        </tr>
        <tr>
            <th><?= __('Name Fr') ?></th>
            <td><?= h($airport->name_fr) ?></td>
        </tr>
        <tr>
            <th><?= __('Id') ?></th>
            <td><?= $this->Number->format($airport->id) ?></td>
        </tr>
        <tr>
            <th><?= __('Lat') ?></th>
            <td><?= $this->Number->format($airport->lat) ?></td>
        </tr>
        <tr>
            <th><?= __('Lon') ?></th>
            <td><?= $this->Number->format($airport->lon) ?></td>
        </tr>
    </table>
</div>
