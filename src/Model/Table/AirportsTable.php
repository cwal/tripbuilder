<?php
namespace App\Model\Table;

use App\Model\Entity\Airport;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Airports Model
 *
 */
class AirportsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('airports');
        $this->displayField('id');
        $this->primaryKey('id');

    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->add('id', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('id', 'create');

        $validator
            ->requirePresence('code', 'create')
            ->notEmpty('code');

        $validator
            ->requirePresence('name_en', 'create')
            ->notEmpty('name_en');

        $validator
            ->requirePresence('name_fr', 'create')
            ->notEmpty('name_fr');

        $validator
            ->add('lat', 'valid', ['rule' => 'decimal'])
            ->requirePresence('lat', 'create')
            ->notEmpty('lat');

        $validator
            ->add('lon', 'valid', ['rule' => 'decimal'])
            ->requirePresence('lon', 'create')
            ->notEmpty('lon');

        return $validator;
    }
}
