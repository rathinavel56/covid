<?php
/**
 * User
 *
 * PHP version 5
 *
 * @category   PHP
 * @package    Base
 * @subpackage Model
 */
namespace Models;

class User extends AppModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'users';
    protected $fillable = array(
		'created_at',
		'updated_at',
		'company_id',
		'role_id',
		'username',
		'is_archive',
		'password',
		'user_login_count',
		'available_wallet_amount',
		'ip_id',
		'last_login_ip_id',
		'last_logged_in_time',
		'is_active',
		'first_name',
		'is_email_confirmed',
		'last_name',
		'view_count',
		'flag_count',
		'total_votes',
		'votes',
		'instagram_url',
		'tiktok_url',
		'youtube_url',
		'twitter_url',
		'facebook_url',
		'available_credit_count',
		'vote_pay_key',
		'vote_to_purchase',
		'subscription_pay_key',
		'fund_pay_key',
		'donated',
		'subscription_id',
		'paypal_email',
		'is_paypal_connect',
		'is_stripe_connect',
		'subscription_end_date',
		'device_details',
		'instant_vote_pay_key',
		'slug',
		'name',
		'lat',
		'lon',
		'device_token',
		'device_id',
		'latitude',
		'longitude',
		'model',
		'os',
		'platform',
		'version',
		'account_update_action',
		'detail_shared',
		'account_update_finished',
		'dob',
		'gender',
		'country_id',
		'checkups',
		'untested',
		'quarantined',
		'quarantined_days',
		'reinstated',
		'symptom'
    );	
    public $qSearchFields = array(
        'first_name',
        'last_name',
        'username',
        'email',
    );
    public $hidden = array(
		'created_at',
		'updated_at',
		'email',
		'password',
		'user_login_count',
		'available_wallet_amount',
		'ip_id',
		'last_login_ip_id',
		'last_logged_in_time',
		'is_active',
		'is_email_confirmed',
		'view_count',
		'flag_count',
		'available_credit_count',
		'vote_pay_key',
		'vote_to_purchase',
		'subscription_pay_key',
		'fund_pay_key',
		'donated',
		'subscription_id',
		'paypal_email',
		'total_votes',
		'display_name',
		'instant_vote_pay_key',
		'instant_vote_to_purchase',
		'is_paypal_connect',
		'is_stripe_connect',
		'subscription_end_date'
    );
    public $rules = array(
       'mobile' => 'sometimes|required',
        'password' => [
                'sometimes',
                'required',
                'min:3',
                'max:15'
            ]
    );
    protected $scopes_1 = array(
		'canAdmin',
		'canUser',
        'canContestantUser'
	);
    // User scope
    protected $scopes_2 = array(
        'canUser'
    );
	protected $scopes_3 = array(
        'canUser',
        'canContestantUser'
    );
    /**
     * To check if username already exist in user table, if so generate new username with append number
     *
     * @param string $username User name which want to check if already exsist
     *
     * @return mixed
     */
    public function checkUserName($username)
    {
        $userExist = User::where('username', $username)->first();
        if (count($userExist) > 0) {
            $org_username = $username;
            $i = 1;
            do {
                $username = $org_username . $i;
                $userExist = User::where('username', $username)->first();
                if (count($userExist) < 0) {
                    break;
                }
                $i++;
            } while ($i < 1000);
        }
        return $username;
    }
	public function daily_test()
    {
        return $this->hasOne('Models\DailyTest', 'user_id', 'id')->with('symptoms');
    }
    public function attachment()
    {
        return $this->hasOne('Models\Attachment', 'foreign_id', 'id')->where('class', 'UserAvatar');
    }
    public function foreign_attachment()
    {
        return $this->hasOne('Models\Attachment', 'foreign_id', 'id')->select('id', 'filename', 'class', 'foreign_id')->where('class', 'UserAvatar');
    }
    public function cover_photo()
    {
        return $this->hasOne('Models\Attachment', 'foreign_id', 'id')->where('class', 'CoverPhoto');
    }
    public function role()
    {
        return $this->belongsTo('Models\Role', 'role_id', 'id');
    }
	public function country()
    {
        return $this->belongsTo('Models\Country', 'country_id', 'id');
    }
	public function company()
    {
        return $this->belongsTo('Models\User', 'company_id', 'id');
    }
	public function company_user()
    {
        return $this->belongsTo('Models\User', 'company_id', 'id')->select('id');
    }
	public function address()
    {
        return $this->hasOne('Models\UserAddress', 'user_id', 'id')->where('is_default', true)->where('is_active', true);
    }
    public function foreign()
    {
        return $this->morphTo(null, 'class', 'foreign_id');
    }
	public function island()
    {
        return $this->belongsTo('Models\Island', 'island_id', 'id');
    }
	public function test_type()
    {
		return $this->belongsTo('Models\TestType', 'last_test_type', 'id');
    }
	public function test_types()
    {
		return $this->hasMany('Models\TestingCenterType', 'center_id', 'id')->with('detail');
    }
    public function scopeFilter($query, $params = array())
    {
        global $authUser;
        parent::scopeFilter($query, $params);
        if (!empty($params['is_email_confirmed'])) {
            $query->where('is_email_confirmed', $params['is_email_confirmed']);
        }
        if (!empty($params['role_id'])) {
            $query->Where('role_id', $params['role_id']);
        }
		if (!empty($params['is_active'])) {
            $query->Where('is_active', $params['is_active']);
        }
		if (!empty($params['company_id'])) {
            $query->Where('company_id', $params['company_id']);
        }
		if (!empty($params['search'])) {
			$search = $params['search'];
			$query->orWhere('username', 'like', "%$search%");
			$query->orWhere('first_name', 'like', "%$search%");
			$query->orWhere('last_name', 'like', "%$search%");
        }
		if (!empty($params['type'])) {
			if ($params['type'] == 'Positive') {
				$query->where('last_test_status', 1);
			} else if ($params['type'] == 'Negative') {
				$query->where('last_test_status', 0);
			}
        }
		if (!empty($params['status'])) {
			if ($params['status'] == 'Untested') {
				$query->where('untested', 0);
			} else if ($params['status'] == 'Quarantined') {
				$query->where('quarantined', 1);
			} else if ($params['status'] == 'Reinstated') {
				$query->where('reinstated', 1);
			} else if ($params['status'] == 'Symptom') {
				$query->where('symptom', 1);
			} else if ($params['status'] == 'Nonsymptom') {
				$query->where('symptom', 0);
			}
        }
		if (!empty($params['history'])) {
			$query->where('untested', '>=', 0);
		}
        if (!empty($authUser) && !empty($authUser['role_id'])) {
            if ($authUser['role_id'] != \Constants\ConstUserTypes::Admin) {
                $query->where('role_id', '!=', \Constants\ConstUserTypes::Admin);
            }
            if (!empty($params['role']) && $params['role'] == 'company') {
                $query->whereIn('role_id', array(
                    \Constants\ConstUserTypes::Company
                ));
            } elseif (!empty($params['role']) && $params['role'] == 'employer') {
                $query->whereIn('role_id', array(
                    \Constants\ConstUserTypes::Employer
                ));
            } elseif (!empty($params['role']) && $params['role'] == 'admin') {
                if ($authUser['role_id'] == \Constants\ConstUserTypes::Admin) {
                    $query->where('role_id', \Constants\ConstUserTypes::Admin);
                }
            }
        } else {
            $query->where('role_id', '!=', \Constants\ConstUserTypes::Admin);
        }
    }
}
