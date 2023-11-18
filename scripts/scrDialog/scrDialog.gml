// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dialog() constructor{
		_dialogs = [];
		
		/// @function add(_sprite, _message); Add dialog to list of dialogs
		/// @param {Asset.GMSprite} _sprite The sprite of character speaking
		/// @param {String} _message The sprite of character speaking
		add = function(_sprite, _message) {
			array_push(_dialogs, {
				sprite: _sprite,
				message: _message
			});
		}
		
		/// @function pop(); Remove the first top most dialog
		pop = function() {
			var _t = array_first(_dialogs);
			array_delete(_dialogs, 0, 1);
			
			return _t;
		}
		
		/// @function count(); Return number of dialog in the list
		count = function() {
			return array_length(_dialogs)	
		}
}