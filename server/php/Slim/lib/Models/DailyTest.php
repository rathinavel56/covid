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

class DailyTest extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'daily_test';
    protected $fillable = array(
        'id',
        'user_id',
        'fill_date',
        'covid_contact',
		'result'
    );
    public $rules = array(
        'user_id' => 'sometimes|required',
        'fill_date' => 'sometimes|required',
        'covid_contact' => 'sometimes|required|email',
        'result' => 'sometimes|required'
    );
	public function symptoms()
    {
        return $this->hasMany('Models\DailyTestSymptom', 'daily_test_id', 'id')->with('symptom');
    }
	public function user()
    {
        return $this->belongsTo('Models\User', 'user_id', 'id')->with('attachment');
    }
	public function scopeFilter($query, $params = array())
    {
        global $authUser;
        parent::scopeFilter($query, $params);
        if (!empty($params['user_id'])) {
            $query->Where('user_id', $authUser->id);
        }
    }
}
