///@param x
///@param y
///@param poly
function point_in_poly(argument0, argument1, argument2) {

	gml_pragma("forceinline");

	var _pX = argument0;
	var _pY = argument1;
	var _poly = argument2;
	var _polyLength = array_length_1d(_poly)
	var _collision = false;

	//Check if we're inside the poly
	for (var i=0; i<_polyLength; i++) {
    
    
	    var _vecHere = _poly[i];
	    var _vecNext = _poly[(i+1) mod _polyLength];
    
	    var _cX = _vecHere[0];
	    var _cY = _vecHere[1];
	    var _nX = _vecNext[0];
	    var _nY = _vecNext[1];

	    if (((_cY > _pY && _nY < _pY) || (_cY < _pY && _nY > _pY)) &&
	        (_pX < (_nX-_cX)*(_pY-_cY) / (_nY-_cY)+_cX)) {
	        _collision = !_collision;
	    }
	}

	return _collision;


}
