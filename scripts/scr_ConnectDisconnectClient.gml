///Chamado quando um cliente tenta se conectar ou desconectar
//Verifica se está conectando ou desconectando (1 = conectando)
var t = ds_map_find_value(async_load, "type");

//Armazena o ID do novo socket, ou do socket que está desconectando
var sock = ds_map_find_value(async_load, "socket");
//Armazena o IP do socket
var ip = ds_map_find_value(async_load, "ip");
//Conectando
if (t == network_type_connect){
    //Adiciona cliente à lista de clientes conectados
    ds_list_add(global.socket_list, sock);
} else{
    //Desconecta um cliente
    ds_map_delete(global.clients, sock);
    var index = ds_list_find_index(global.socket_list, sock);
    ds_list_delete(global.socket_list, index);
}

