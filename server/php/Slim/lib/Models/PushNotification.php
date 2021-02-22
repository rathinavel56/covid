<?php
/**
 * Advertisement
 */
namespace Models;

use Illuminate\Database\Eloquent\Relations\Relation;

class PushNotification extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'push_notifications';
    public $hidden = array(
        'created_at',
        'updated_at'
    );
    protected $fillable = array(
        'id',
		'created_at',
		'updated_at',
		'user_id',
		'title',
		'body',
		'is_read'
    );
    public $rules = array(
        'id' => 'sometimes|required',
		'created_at' => 'sometimes|required',
		'updated_at' => 'sometimes|required',
		'user_id' => 'sometimes|required',
		'title' => 'sometimes|required',
		'body' => 'sometimes|required',
		'is_read' => 'sometimes|required'
    );
}
