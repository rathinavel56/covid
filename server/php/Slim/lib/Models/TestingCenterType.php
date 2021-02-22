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

class TestingCenterType extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'testing_center_types';
    protected $fillable = array(
        'test_type_id',
        'center_id'
    );
    public $rules = array(
        'test_type_id' => 'sometimes|required',
        'center_id' => 'sometimes|required'
    );
	
	public function detail()
    {
        return $this->belongsTo('Models\TestType', 'test_type_id', 'id');
    }
}
