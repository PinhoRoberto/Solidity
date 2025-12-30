// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract sampleContract{
string public myString = "Payable Sample";

function updateString(string memory _newString) public payable{
    if (msg.value == 1 ether){
        myString = _newString;

    }else {
         payable(msg.sender).transfer (msg.value);
    }
    }
}
    
