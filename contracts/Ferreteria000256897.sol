pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Ferreteria000256897 {

    address public dirContrato = 0x7b96aF9Bd211cBf6BA5b0dd53aa61Dc5806b6AcE;

    constructor() {
        console.log("Ejecutado por: 000256897 - Morales Benites Charlie");
    }

    struct Herramienta {
        uint256 id;
        string nombre;
        uint256 cantidad;
    }
    Herramienta[] public inventario;

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _cantidad) public {
        inventario.push(Herramienta(_id, _nombre, _cantidad));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 000256897 - Morales Benites Charlie");
        return inventario.length;
    }
}