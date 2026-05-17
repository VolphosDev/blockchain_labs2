pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Ferreteria000256897 {

    address public dirContrato = 0x7b96aF9Bd211cBf6BA5b0dd53aa61Dc5806b6AcE;

    modifier firmaAuditoria() {
        console.log("Ejecutado por: 000256897 - Morales Benites Charlie");
        _;
    }

    constructor() firmaAuditoria{
    }

    struct Herramienta {
        uint256 id;
        string nombre;
        uint256 cantidad;
        bool estado;
    }
    Herramienta[] public inventario;

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _cantidad,bool _estado) public firmaAuditoria{

        for(uint i = 0; i < inventario.length; i++) {
            require(inventario[i].id != _id, "Error: El ID de la herramienta ya existe");
        }

        require(_cantidad > 0, "Error: La cantidad no puede ser cero");

        inventario.push(Herramienta(_id, _nombre, _cantidad, _estado));
    }

    function contarElementos() public view firmaAuditoria returns (uint256) {
        return inventario.length;
    }
}