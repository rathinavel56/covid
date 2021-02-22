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

class RegisterTemp extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'register_temp';
    protected $fillable = array(
        'mobile',
        'code'
    );
    public $rules = array(
        'mobile' => 'sometimes|required',
        'code' => 'sometimes|required'
    );
}
