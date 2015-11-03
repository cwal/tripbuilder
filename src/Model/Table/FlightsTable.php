<?php
namespace App\Model\Table;

use App\Model\Entity\Flight;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Flights Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Trips
 * @property \Cake\ORM\Association\BelongsTo $FromAirports
 * @property \Cake\ORM\Association\BelongsTo $ToAirports
 */
class FlightsTable extends Table
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

        $this->table('flights');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->belongsTo('Trips', [
            'foreignKey' => 'trip_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('FromAirports', [
        	'className' => 'Airports',
            'foreignKey' => 'from_airport_id',
            'joinType' => 'INNER',
            'propertyName' => 'from_airport'
        ]);
        $this->belongsTo('ToAirports', [
        	'className' => 'Airports',
            'foreignKey' => 'to_airport_id',
            'joinType' => 'INNER',
            'propertyName' => 'to_airport'
        ]);
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

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['trip_id'], 'Trips'));
        $rules->add($rules->existsIn(['from_airport_id'], 'FromAirport'));
        $rules->add($rules->existsIn(['to_airport_id'], 'ToAirport'));
        return $rules;
    }
}
