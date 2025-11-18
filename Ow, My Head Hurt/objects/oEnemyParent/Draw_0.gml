draw_self();

draw_text( x, y, string(hp)  );

//check the sixe of dmg list
draw_text( x, y -32, string( ds_list_size( damageList) ) );