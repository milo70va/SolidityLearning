// SPDX-License_Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    //Esto se inicializa en 0
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //Array dinamico [], Array especifico [X]
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        
    }
    //view= solo para ver un dato, pure= para cosas matematicas
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    //memory= solo se guarda durante la ejecución
    //storage= la información se mantendra despues de ejecutar
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}