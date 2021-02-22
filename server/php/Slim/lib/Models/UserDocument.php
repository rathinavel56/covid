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

class UserDocument extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'user_documents';
    protected $fillable = array(
        'id',
        'user_id',
		'document_id',
		'created_at',
		'updated_at'
    );
    public $rules = array(
        'id' => 'sometimes|required',
        'user_id' => 'sometimes|required',
		'document_id' => 'sometimes|required'
    );
	public function attachment()
    {
        return $this->hasOne('Models\Attachment', 'foreign_id', 'id')->where('class', 'Document');
    }
}
