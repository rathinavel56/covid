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

class Document extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'documents';
    protected $fillable = array(
        'id',
        'name',
		'created_at',
		'updated_at'
    );
    public $rules = array(
        'id' => 'sometimes|required',
        'name' => 'sometimes|required'
    );
	public function document()
    {
		global $authUser;
        return $this->hasOne('Models\UserDocument', 'document_id', 'id')->with('attachment')->where('user_id', $authUser->id);
    }
}
