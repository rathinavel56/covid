<?php
$menus = $subArray = array();

// Dashboard
$subArray = array();
$subArray['title'] = 'Dashboard';
$subArray['role_id'] = [1,3, 4];
$subArray['api'] = 'dashboard';
$subArray['route'] = '/admin/dashboard';
$subArray['icon_class'] = 'fa fa-fw fa-dashboard';
$menus[] = $subArray;
																												
$fieldList = array();
$subArray = array();
$subArray['title'] = 'Manage Users';
$subArray['role_id'] = [1];
$subArray['icon_class'] = 'fa fa-users';
$subArray['listview']['fields'] = array();

$fieldList = array();
$childMenu = array();
$childMenu['title'] = 'Company';
$childMenu['role_id'] = [1];
$childMenu['query'] = 'employer';
$childMenu['copyFields'] = true;
$childMenu['route'] = '/admin/actions/company';
$childMenu['api'] = '/admin/users';
$childMenu['icon_class'] = 'fa fa-users';
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'mobile';
$field['label'] = 'Mobile Number';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'username';
$field['label'] = 'Username';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'email';
$field['label'] = 'Email';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'lat';
$field['label'] = 'Latitude';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'lon';
$field['label'] = 'Longitude';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/company/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/company/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;

$field['list'] = true;
$fieldList[] = $field;
$childMenu['listview']['fields'] = $fieldList;

$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;
$childMenu['add'] = [];
$childMenu['add']['url'] = '/admin/company/add';
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$childMenu = array();
$childMenu['title'] = 'Testing Centers';
$childMenu['role_id'] = [1];
$childMenu['query'] = 'testing_centers';
$childMenu['copyFields'] = false;
$childMenu['route'] = '/admin/actions/testing_centers';
$childMenu['api'] = '/admin/users';
$childMenu['icon_class'] = 'fa fa-users';
$fieldList = array();
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'island_id';
$field['label'] = 'Island';
$field['type'] = 'select';
$field['id_fill'] = true;
$field['is_required'] = true;
$field['reference'] = '/admin/island';
$field['value'] = array();
$field['options'] = array();
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'username';
$field['label'] = 'Username';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'mobile';
$field['label'] = 'Mobile Number';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'email';
$field['label'] = 'Email';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'lat';
$field['label'] = 'Latitude';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'lon';
$field['label'] = 'Longitude';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/testing_centers/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/testing_centers/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$field['list'] = true;
$fieldList[] = $field;
$childMenu['listview']['fields'] = $fieldList;

$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;
$childMenu['add'] = [];
$childMenu['add']['url'] = '/admin/testing_centers/add';
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$fieldList = array();
$childMenu = array();
$childMenu['title'] = 'Employees';
$childMenu['role_id'] = [1,3];
$childMenu['query'] = 'users';
$childMenu['route'] = '/admin/actions/users';
$childMenu['api'] = '/admin/users';
$childMenu['icon_class'] = 'fa fa-users';
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'username';
$field['label'] = 'Username';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'mobile';
$field['label'] = 'Mobile Number';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'email';
$field['label'] = 'Email';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'address.addressline1';
$field['label'] = 'Address 1';
$field['type'] = 'text';
$field['placeholder'] = 'Enter here....';
$field['is_required'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$field['value'] = '';
$fieldList[] = $field;

$field = array();
$field['name'] = 'address.addressline2';
$field['label'] = 'Address 2';
$field['type'] = 'text';
$field['placeholder'] = 'Enter here....';
$field['is_required'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$field['value'] = '';
$fieldList[] = $field;

$field = array();
$field['name'] = 'address.city';
$field['label'] = 'City';
$field['type'] = 'text';
$field['placeholder'] = 'Enter here....';
$field['is_required'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$field['value'] = '';
$fieldList[] = $field;

$field = array();
$field['name'] = 'address.state';
$field['label'] = 'State';
$field['type'] = 'text';
$field['placeholder'] = 'Enter here....';
$field['is_required'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$field['value'] = '';
$fieldList[] = $field;

$field = array();
$field['name'] = 'address.country';
$field['label'] = 'Country';
$field['type'] = 'text';
$field['placeholder'] = 'Enter here....';
$field['is_required'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$field['value'] = '';
$fieldList[] = $field;

$field = array();
$field['name'] = 'address.zipcode';
$field['label'] = 'Zipcode';
$field['type'] = 'text';
$field['placeholder'] = 'Enter here....';
$field['is_required'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$field['value'] = '';
$fieldList[] = $field;


//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/users/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/users/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$field['list'] = true;
$fieldList[] = $field;
$childMenu['listview']['fields'] = $fieldList;

$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;
$childMenu['add'] = [];
$childMenu['add']['url'] = '/admin/users/add';
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;
$menus[] = $subArray;


$subArray = array();
$fieldList = array();
$subArray['title'] = 'Time Slot';
$subArray['role_id'] = [4];
$subArray['route'] = '/admin/time_slot';
$subArray['icon_class'] = 'fa fa-users';
$menus[] = $subArray;

$subArray = array();
$fieldList = array();
$subArray['title'] = 'Custom Time Slot';
$subArray['role_id'] = [4];
$subArray['route'] = '/admin/custom_time_slot';
$subArray['icon_class'] = 'fa fa-users';
$menus[] = $subArray;

// Transactions
$fieldList = array();
$subArray = array();
$subArray['title'] = 'Transactions';
$subArray['role_id'] = [1];
$subArray['icon_class'] = 'fa fa-users';
$subArray['route'] = '/admin/actions/transactions';
//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['view'] = false;
$field['listActions'] = array();

$action = array();
$action['api'] = '/users/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-approval-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;
$field['list'] = true;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'created_at';
$field['label'] = 'Created';
$field['list'] = true;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'user.first_name';
$field['label'] = 'From User';
$field['list'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'amount';
$field['label'] = 'amount';
$field['list'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'payment_gateway.name';
$field['label'] = 'Payment Gateway';
$fieldList[] = $field;

$subArray['listview']['fields'] = $fieldList;											

$fieldList = array();
$subArray = array();
$subArray['title'] = 'Employees';
$subArray['role_id'] = [1,3, 4];
$subArray['icon_class'] = 'fa fa-users';
$subArray['listview']['fields'] = array();

$childMenu = array();
$childMenu['title'] = 'Check ups';
$childMenu['role_id'] = [1,4,3];
$childMenu['api'] = '/users/checkup';
$childMenu['route'] = '/admin/checkup';
$childMenu['icon_class'] = 'fa fa-fw fa-dashboard';
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$childMenu = array();
$childMenu['title'] = 'Test';
$childMenu['role_id'] = [1,4];
$childMenu['api'] = '/users/test';
$childMenu['route'] = '/admin/test';
$childMenu['icon_class'] = 'fa fa-fw fa-dashboard';
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$childMenu = array();
$childMenu['title'] = 'Tested';
$childMenu['role_id'] = [1,3];
$childMenu['api'] = '/users/test';
$childMenu['route'] = '/admin/tested';
$childMenu['icon_class'] = 'fa fa-fw fa-dashboard';
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$childMenu = array();
$childMenu['title'] = 'Quarantine';
$childMenu['role_id'] = [1,4,3];
$childMenu['api'] = '/users/quarantine';
$childMenu['route'] = '/admin/quarantine';
$childMenu['icon_class'] = 'fa fa-fw fa-dashboard';
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;
$menus[] = $subArray;

$fieldList = array();
$subArray = array();
$subArray['title'] = 'Book Test';
$subArray['role_id'] = [1, 3, 4];
$subArray['copyFields'] = false;
$subArray['route'] = '/admin/actions/booking';
//$subArray['api'] = '/admin/actions/booking';
$subArray['api'] = '/admin/booking';
$subArray['icon_class'] = 'fa fa-users';
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'test_type.name';
$field['label'] = 'Test Type';
$field['type'] = 'text';
$field['is_required'] = true;
$field['add'] = false;
$field['list'] = true;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'center_id';
$field['label'] = 'Center';
$field['type'] = 'select';
$field['is_required'] = true;
$field['reference'] = '/admin/centers';
$field['value'] = array();
$field['options'] = array();
$field['id_fill'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'test_type_id';
$field['label'] = 'Test Type';
$field['type'] = 'select';
$field['is_required'] = true;
$field['reference'] = '/admin/test_types';
$field['value'] = array();
$field['options'] = array();
$field['id_fill'] = true;
$field['name_fill'] = 'name';
$field['add'] = true;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'user.first_name';
$field['label'] = 'Employee Name';
$field['add'] = false;
$field['list'] = true;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'user_id';
$field['label'] = 'Employee Name';
$field['type'] = 'select';
$field['is_required'] = true;
$field['reference'] = '/admin/users/list';
$field['value'] = array();
$field['options'] = array();
$field['id_fill'] = true;
$field['name_fill'] = 'first_name';
$field['add'] = true;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'reg_date';
$field['label'] = 'Date';
$field['type'] = 'date';
$field['is_required'] = true;
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'from_timeslot';
$field['label'] = 'Slot';
$field['type'] = 'select';
$field['option'] = true;
$field['is_required'] = true;
$field['reference'] = '/admin/slots';
$field['value'] = array();
$field['options'] = array();
$field['id_fill'] = true;
$field['add'] = true;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = true;
$fieldList[] = $field;

//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/appointments/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/appointments/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$field['list'] = true;
$fieldList[] = $field;
$subArray['listview']['fields'] = $fieldList;

$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$subArray['filters'][] = $filter;
$subArray['add'] = [];
$subArray['add']['url'] = '/admin/appointments/add';
$menus[] = $subArray;

// Master
$fieldList = array();
$subArray = array();
$subArray['title'] = 'Master';
$subArray['role_id'] = [1];
$subArray['icon_class'] = 'fa fa-users';
$subArray['listview']['fields'] = array();

$childMenu = array();
$childMenu['role_id'] = [1];
$childMenu['title'] = 'Island';
$childMenu['copyFields'] = true;
$childMenu['route'] = '/admin/actions/island';
$childMenu['api'] = '/admin/island';
$childMenu['icon_class'] = 'fa fa-users';
$fieldList = array();
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/island/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/island/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$field['list'] = true;
$fieldList[] = $field;
$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;
$childMenu['add'] = [];
$childMenu['add']['url'] = '/admin/island/add';
$childMenu['listview']['fields'] = $fieldList;
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$childMenu = array();
$childMenu['role_id'] = [1];
$childMenu['title'] = 'Test Type';
$childMenu['copyFields'] = true;
$childMenu['route'] = '/admin/actions/test_types';
$childMenu['api'] = '/admin/test_types';
$childMenu['icon_class'] = 'fa fa-users';
$fieldList = array();
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/test_types/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/test_types/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$field['list'] = true;
$fieldList[] = $field;
$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;
$childMenu['add'] = [];
$childMenu['add']['url'] = '/admin/test_types/add';
$childMenu['listview']['fields'] = $fieldList;
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$childMenu = array();
$childMenu['role_id'] = [1];
$childMenu['title'] = 'Symptoms';
$childMenu['route'] = '/admin/actions/symptom';
$childMenu['api'] = '/admin/symptom';
$childMenu['icon_class'] = 'fa fa-users';
$fieldList = array();
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'level';
$field['label'] = 'Level';
$field['type'] = 'select';
$field['id_fill'] = true;
$field['is_required'] = true;
$field['reference'] = '/admin/levels';
$field['value'] = array();
$field['options'] = array();
$field['add'] = true;
$field['list'] = false;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/symptom/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/symptom/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$field['list'] = true;
$fieldList[] = $field;
$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;
$childMenu['add'] = [];
$childMenu['add']['url'] = '/admin/symptom/add';
$childMenu['listview']['fields'] = $fieldList;
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$childMenu = array();
$childMenu['role_id'] = [1];
$childMenu['title'] = 'Documents';
$childMenu['route'] = '/admin/actions/document';
$childMenu['api'] = '/admin/document';
$childMenu['icon_class'] = 'fa fa-users';
$fieldList = array();
$field = array();
$field['name'] = 'id';
$field['label'] = 'ID';
$field['add'] = false;
$field['list'] = false;
$field['edit'] = false;
$field['view'] = false;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'is_required';
$field['label'] = 'Required';
$field['type'] = 'checkbox';
$field['add'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/document/edit';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;

$action = array();
$action['api'] = '/document/view';
$action['label'] = 'view';
$action['class'] = 'btn crud-action btn-info';
$action['icon'] = 'fa fa-eye';
$field['listActions'][] = $action;

$field['list'] = true;
$fieldList[] = $field;
$filter = array();
$filter['name'] = 'q';
$filter['label'] = 'Search';
$childMenu['filters'][] = $filter;
$childMenu['add'] = [];
$childMenu['add']['url'] = '/admin/document/add';
$childMenu['listview']['fields'] = $fieldList;
$childMenu['child_sub_menu'][] = $childMenu;
$subArray['child_sub_menu'][] = $childMenu;

$fieldList = array();
$childMenu = array();
$childMenu['role_id'] = [1];
$childMenu['title'] = 'Email Templates';
$childMenu['api'] = '/admin/email_templates';
$childMenu['route'] = '/admin/actions/email_templates';
$childMenu['icon_class'] = 'fa fa-users';
//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/admin/email_templates';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;
$field['list'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'display_name';
$field['label'] = 'Name';
$field['type'] = 'text';
$field['is_required'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'subject';
$field['label'] = 'Subject';
$field['type'] = 'text';
$field['is_required'] = true;
$field['edit'] = true;
$field['list'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'description';
$field['label'] = 'Description';
$field['type'] = 'text';
$field['is_required'] = true;
$field['edit'] = true;
$field['list'] = false;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'html_email_content';
$field['label'] = 'Content';
$field['type'] = 'smart_editor';
$field['is_required'] = true;
$field['edit'] = true;
$field['list'] = false;
$field['view'] = false;
$fieldList[] = $field;

$childMenu['listview']['fields'] = $fieldList;
$subArray['child_sub_menu'][] = $childMenu;

$fieldList = array();
$childMenu = array();
$childMenu['title'] = 'Pages';
$childMenu['role_id'] = [1];
$childMenu['api'] = '/admin/pages';
$childMenu['route'] = '/admin/actions/pages';
$childMenu['icon_class'] = 'fa fa-users';
//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/admin/pages';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['list'] = true;
$field['edit'] = false;
$field['listActions'][] = $action;
$field['list'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'title';
$field['label'] = 'Title';
$field['type'] = 'text';
$field['is_required'] = true;
$field['list'] = true;
$field['edit'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'dispaly_url';
$field['label'] = 'Url';
$field['type'] = 'text';
$field['is_required'] = true;
$field['list'] = false;
$field['edit'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'content';
$field['label'] = 'Content';
$field['type'] = 'smart_editor';
$field['is_required'] = true;
$field['list'] = false;
$field['edit'] = true;
$fieldList[] = $field;

$childMenu['listview']['fields'] = $fieldList;
$subArray['child_sub_menu'][] = $childMenu;
$menus[] = $subArray;
      
// Payments
$fieldList = array();
$subArray = array();
$subArray['title'] = 'Payment Gateways';
$subArray['role_id'] = [1];
$subArray['icon_class'] = 'fa fa-users';
$subArray['api'] = '/admin/payment_gateways';
$subArray['route'] = '/admin/actions/payment_gateways';
//actions
$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/admin/pages';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;
$field['list'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['list'] = true;
$field['view'] = true;
$fieldList[] = $field;

$subArray['listview']['fields'] = $fieldList;
$menus[] = $subArray;

// Settings
$fieldList = array();
$subArray = array();
$subArray['title'] = 'Settings';
$subArray['role_id'] = [1];
$subArray['api'] = '/admin/settings';
$subArray['route'] = '/admin/actions/settings';
$subArray['icon_class'] = 'fa fa-users';

$field = array();
$field['name'] = 'actions';
$field['label'] = 'Actions';
$field['listActions'] = array();

$action = array();
$action['api'] = '/admin/settings';
$action['label'] = 'Edit';
$action['class'] = 'btn crud-action btn-primary';
$action['icon'] = 'fa fa-pencil';
$field['listActions'][] = $action;
$field['list'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'name';
$field['label'] = 'Name';
$field['list'] = true;
$field['view'] = true;
$fieldList[] = $field;

$field = array();
$field['name'] = 'description';
$field['label'] = 'Description';
$field['list'] = true;
$field['view'] = true;
$fieldList[] = $field;

$subArray['listview']['fields'] = $fieldList;
$menus[] = $subArray;

$subArray = array();
$subArray['title'] = 'Employee';
$subArray['role_id'] = [1];
$subArray['api'] = '/users/employee';
$subArray['route'] = '/admin/employee';
$subArray['icon_class'] = 'fa fa-fw fa-dashboard';
$menus[] = $subArray;

$subArray = array();
$subArray['title'] = 'Employee History';
$subArray['role_id'] = [1];
$subArray['api'] = '/users/employeehistory';
$subArray['route'] = '/admin/employeehistory';
$subArray['icon_class'] = 'fa fa-fw fa-dashboard';
$menus[] = $subArray;

// $subArray = array();
// $subArray['title'] = 'Book';
// $subArray['role_id'] = [1,4,3];
// $subArray['api'] = '/users/book';
// $subArray['route'] = '/admin/book';
// $subArray['icon_class'] = 'fa fa-fw fa-dashboard';
// $menus[] = $subArray;

$subArray = array();
$subArray['title'] = 'Messages';
$subArray['role_id'] = [1,4,3];
$subArray['api'] = '/users/messages';
$subArray['route'] = '/admin/messages';
$subArray['icon_class'] = 'fa fa-fw fa-dashboard';
$menus[] = $subArray;

$subArray = array();
$subArray['title'] = 'Change Password';
$subArray['role_id'] = [1,4,3];
$subArray['api'] = '/users/change_password';
$subArray['route'] = '/admin/change_password';
$subArray['icon_class'] = 'fa fa-fw fa-dashboard';
$menus[] = $subArray;

// $subArray = array();
// $subArray['title'] = 'feedback';
// $subArray['role_id'] = [1,4,3];
// $subArray['api'] = '/users/feedback';
// $subArray['route'] = '/admin/feedback';
// $subArray['icon_class'] = 'fa fa-fw fa-dashboard';
// $menus[] = $subArray;

// Logout
$subArray = array();
$subArray['title'] = 'Logout';
$subArray['api'] = '/logout';
$subArray['route'] = '/admin/actions/logout';
$subArray['icon_class'] = 'fa fa-users';
$menus[] = $subArray;
