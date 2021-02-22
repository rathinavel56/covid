<?php
/**
 * Contact
 *
 * PHP version 5
 *
 * @category   PHP
 * @package    Base
 * @subpackage Model
 */
namespace Models;

class DailyTestSymptom extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'daily_test_symptoms';
    protected $fillable = array(
        'id',
        'daily_test_id',
        'symptom_id'
    );
    public $rules = array(
        'id' => 'sometimes|required',
        'daily_test_id' => 'sometimes|required',
        'symptom_id' => 'sometimes|required|email'
    );
	public function symptom()
	{
		return $this->belongsTo('Models\Symptom', 'symptom_id', 'id');
	}
}
