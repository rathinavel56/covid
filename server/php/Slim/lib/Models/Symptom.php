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

class Symptom extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'symptoms';
    protected $fillable = array(
        'id',
        'name',
    );
    public $rules = array(
        'id' => 'sometimes|required',
        'name' => 'sometimes|required'
    );
}
