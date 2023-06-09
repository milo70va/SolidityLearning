pragma solidity ^0.8.0;

contract VariableTypes {

    uint256 favoriteNumber = 5; //Integer de 256 bits

    bool favoriteBool = true;

    string favoristeString = "String";

    int256 favoriteInt = -5;

    address favoriteAddress = 0xe3eb12cf4298D5A5A1DD82dB3727E865c48F1782;

    bytes32 favoriteBytes = "cat"; //32 bytes en la variable
    
    //Asi se define un objeto
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //Array dinamico [], Array especifico [X]
    //Se utiliza push y pop, tambien tiene length
    Person[] public people;

    //Busca cualquier otra variable de un objeto
    //Tiene que ser agregada a la función de add para Arrays
    mapping(string => uint256) public nameToFavoriteNumber;
}