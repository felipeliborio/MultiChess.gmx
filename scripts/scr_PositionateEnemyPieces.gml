var buff = ds_map_find_value(async_load, "buffer");
for(var i = 0; i < 16; i++){
    global.enemy_pieces[i].x = room_width - buffer_read(buff, buffer_u16);
    global.enemy_pieces[i].y = room_height - buffer_read(buff, buffer_u16);
    global.enemy_pieces[i].moving = buffer_read(buff, buffer_bool);
    global.pieces[i].still = buffer_read(buff, buffer_bool);
}
