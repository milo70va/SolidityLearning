// SPDX-License_Identifier: MIT

pragma solidity ^0.8.0;

contract Copyright {

    uint256 contadorCopy;

    struct Copy {
        address autor;
        string titular;
        string obra;
        uint256 fechaCreacion;
        uint256 fechaPublicacion;
        bool registro;
        string licencia;
    }

    Copy[] public copy;
    mapping (uint256 => Copy) public copys;

    function retrieveCont() public view returns(uint256){
        return contadorCopy;
    }

    function addCopy(string memory _titular, string memory _obra, uint256 _fechaCreacion, bool _registro, string memory _licencia) public {
        uint256 id = contadorCopy;
        copys[id] = Copy(msg.sender, _titular, _obra, _fechaCreacion, block.timestamp, _registro, _licencia);
        contadorCopy++;
    }

    function getCopy(uint256 _id) public view returns(address, string memory, string memory, uint256, uint256, bool, string memory){
        Copy memory c = copys[_id];
        return(c.autor, c.titular, c.obra, c.fechaCreacion, c.fechaPublicacion, c.registro, c.licencia);
    }

    function changeRegister(uint256 _id, bool status) public {
        copys[_id].registro = status;
    }




}