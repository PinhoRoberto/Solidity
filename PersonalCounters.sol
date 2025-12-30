// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonalCounters{
    mapping(address=> uint256) public counters;

    function incrementMy() public {
        counters[msg.sender]  = counters[msg.sender] + 1;
}
    function getMyCounters() public view returns(uint256){
        return counters[msg.sender];
    
    }
     
       
}