// SPDX-License-Identifier: MIT
pragma solidity 0.8.20; 

contract NewPetition{
    string[3] private names;

    uint256 public nameCount;

    mapping(uint256 => string) public status;  

    constructor(){
        nameCount = 0;
    }

    function registerName(string memory _name) public{
        if (nameCount<3){
            status[nameCount] = "undefined";
        names[nameCount] = _name;
        nameCount++;
        }
    }

    function getName( uint256 _id) public view returns (string memory){
        if (_id < 3){
        return names[_id];
        }
        return "Error: index out of bounds";
    }

    function isPetitionFull()public view returns (bool){
        return nameCount >= 3;
    }

    function changeStatus(uint256 _id, string memory _status) public {
        if(_id < nameCount){
                status[_id] = _status;
        }

    }


} 
