// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Mensajeria {

    // Struct del mensaje
    struct Mensaje {
        address from;
        address to;
        string contenido;
        uint timestamp;
    }

    // Array para guardar mensajes
    Mensaje[] public mensajes;

    // Evento
    event MensajeEnviado(
        address indexed from,
        address indexed to,
        string contenido,
        uint timestamp
    );

    // Función para enviar mensaje
    function enviarMensaje(
        address _to,
        string memory _contenido
    ) public {

        // Crear mensaje
        Mensaje memory nuevoMensaje = Mensaje(
            msg.sender,
            _to,
            _contenido,
            block.timestamp
        );

        // Guardar mensaje
        mensajes.push(nuevoMensaje);

        // Emitir evento
        emit MensajeEnviado(
            msg.sender,
            _to,
            _contenido,
            block.timestamp
        );
    }

    // Ver cantidad de mensajes
    function totalMensajes() public view returns(uint) {
        return mensajes.length;
    }

    // Obtener mensaje por índice
    function obtenerMensaje(uint index)
        public
        view
        returns(
            address,
            address,
            string memory,
            uint
        )
    {
        Mensaje memory m = mensajes[index];

        return (
            m.from,
            m.to,
            m.contenido,
            m.timestamp
        );
    }
}