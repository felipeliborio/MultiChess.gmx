/// Testa o servidor de vez em quando pra ver se ainda tá conectado
var buff = buffer_create(2, buffer_grow, 2);
buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff, buffer_s16, PING_CMD);
var size = network_send_packet(global.client, buff, buffer_tell(buff));
buffer_delete(buff);
if (size <= 0){
    network_destroy(global.client);
    game_restart();
}

