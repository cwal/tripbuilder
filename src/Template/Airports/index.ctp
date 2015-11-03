<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Airport'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="airports index large-9 medium-8 columns content">
    <h3><?= __('Airports') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th><?= $this->Paginator->sort('id') ?></th>
                <th><?= $this->Paginator->sort('code') ?></th>
                <th><?= $this->Paginator->sort('name_en') ?></th>
                <th><?= $this->Paginator->sort('name_fr') ?></th>
                <th><?= $this->Paginator->sort('lat') ?></th>
                <th><?= $this->Paginator->sort('lon') ?></th>
                <th class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($airports as $airport): ?>
            <tr>
                <td><?= $this->Number->format($airport->id) ?></td>
                <td><?= h($airport->code) ?></td>
                <td><?= h($airport->name_en) ?></td>
                <td><?= h($airport->name_fr) ?></td>
                <td><?= $this->Number->format($airport->lat) ?></td>
                <td><?= $this->Number->format($airport->lon) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $airport->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $airport->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $airport->id], ['confirm' => __('Are you sure you want to delete # {0}?', $airport->id)]) ?>
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
