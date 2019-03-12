/// @desc Draws a meter-like bar as a circle
/// @arg x
/// @arg y
/// @arg value
/// @arg max
/// @arg colour 
/// @arg radius 
/// @arg transparency
/// @arg width

if (argument2 > 0) {
  var _len, _tx, _ty, _val;
  var _sections = 60;
  var _section_size = 360 / _sections;
  var _val = (argument2 / argument3) * _sections 
  if (_val > 1) {
    var _surf = surface_create(argument5 * 2, argument5 * 2);
    draw_set_colour(argument4);
    draw_set_alpha(argument6);
		
    surface_set_target(_surf);
		
    draw_clear_alpha(c_blue, 0.7);
    draw_clear_alpha(c_black, 0);
		
    draw_primitive_begin(pr_trianglefan);
    draw_vertex(argument5, argument5);
    for(var i = 0; i <= _val; i++) {
        _len = (i * _section_size) + 90;
        _tx = lengthdir_x(argument5, _len);
        _ty = lengthdir_y(argument5, _len);
        draw_vertex(argument5 + _tx, argument5 + _ty);
    }
    draw_primitive_end();
        
    draw_set_alpha(1);
    gpu_set_blendmode(bm_subtract);
    draw_set_colour(c_black);
    draw_circle(argument5 - 1, argument5 - 1, argument5 - argument7, false);
    gpu_set_blendmode(bm_normal);

    surface_reset_target();
     
    draw_surface(_surf, argument0 - argument5, argument1 - argument5)
        
    surface_free(_surf)
  }
}