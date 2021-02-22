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

class ScheduleTest extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'schedule_test';
    protected $fillable = array(
        'user_id',
		'card_id',
        'center_id',
        'reg_date',
        'qr_code',
		'from_timeslot',
		'test_type_id',
		'amount',
		'is_paid'
    );
    public $rules = array(
        'user_id' => 'sometimes|required',
		'card_id' => 'sometimes|required',
        'center_id' => 'sometimes|required',
        'reg_date' => 'sometimes|required|email',
        'qr_code' => 'sometimes|required',
		'from_timeslot' => 'sometimes|required',
		'test_type_id' => 'sometimes|required'
    );
	public function center()
    {
        return $this->belongsTo('Models\User', 'center_id', 'id')->select('id', 'island_id', 'name', 'lat', 'lon')->with('island');
    }
	public function user()
    {
        return $this->belongsTo('Models\User', 'user_id', 'id')->with('attachment');
    }
	public function test_type()
    {
        return $this->belongsTo('Models\TestType', 'test_type_id', 'id');
    }
	public function scopeFilter($query, $params = array())
    {
        global $authUser;
        parent::scopeFilter($query, $params);
        if (!empty($params['q'])) {
            $query->where(function ($q1) use ($params) {
                $search = $params['q'];                
            });
        }
		if (!empty($params['center_id'])) {
            $query->Where('center_id', $params['center_id']);
        }
		if (!empty($params['qr_code'])) {
			$qrCode = $params['qr_code'];
			$query->where('qr_code', 'like', "%$qrCode%");
        }
    }
}
