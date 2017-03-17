var buff = buffer_create(112, buffer_fixed, 1);
buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff, buffer_s16, ENEMY_PIECES_POSITION);
for (var i = 0; i < 16; i++){
    buffer_write(buff, buffer_u16, global.pieces[i].x);
    buffer_write(buff, buffer_u16, global.pieces[i].y);
    buffer_write(buff, buffer_bool, global.pieces[i].moving);
    buffer_write(buff, buffer_bool, global.pieces[i].still);
}
if(!global.have_server){
    network_send_packet(global.client, buff, buffer_tell(buff));
} else{
    for (var i = 0; i < ds_list_size(global.socket_list); i++){
        var sock = ds_list_find_value(global.socket_list, i);
        network_send_packet(sock, buff, buffer_tell(buff));
    }
}
buffer_delete(buff);
