// SPDX-License-Identifier: MIT
pragma solidity 0.8.20; 

contract Petition{
    string[3] private names;
    string [] private extraNames;

    uint256 public nameCount;

    mapping(uint256 => string) public status;  

    constructor(){
        nameCount = 0;
    }

    function registerName(string memory _name) public{
        if (nameCount<3){
        names[nameCount] = _name;
        }else{
            extraNames.push(_name);
            
       }
       status[nameCount] = "undefined";
       nameCount++;
    }

    function getName( uint256 _id) public view returns (string memory){
        if (_id < 3){
        return names[_id];
        }else{
        return  extraNames[_id-3];
        }
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
