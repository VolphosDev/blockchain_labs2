pragma solidity >=0.8.2 <0.9.0;

contract Ferreteria000256897 {

    struct Herramienta {
        uint256 id;
        string nombre;
        uint256 cantidad;
    }
    Herramienta[] public inventario;

    function agregarHerramienta(uint256 _id, string memory _nombre, uint256 _cantidad) public {
        inventario.push(Herramienta(_id, _nombre, _cantidad));
    }
}