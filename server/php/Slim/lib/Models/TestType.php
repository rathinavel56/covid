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

class TestType extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'test_types';
    protected $fillable = array(
        'id',
        'name',
		'is_active'
    );
    public $rules = array(
        'name' => 'sometimes|required',
        'is_active' => 'sometimes|required'
    );
}
