/// @desc Creates and returns a ds_list with the given items
/// @arg item

var _newList = ds_list_create();
var i = 0;
repeat (argument_count) {
	ds_list_add(_newList, argument[i++]);
}
return _newList;