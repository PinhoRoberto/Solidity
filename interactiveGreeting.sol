
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract InteractiGreeting{

    string public greet = "Blocktest";

    function setGreeting(string memory newGreeting) public {
        greet = newGreeting;
    }
    
}