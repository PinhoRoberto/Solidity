// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract ExampleExceptionRequire{

mapping ( address => uint ) public balanceReceived;

function receiveMoney() public payable {
    balanceReceived[msg.sender] +=msg.value;
}

function withdrawMoney(address payable _to, uint _amount) public {
    if(_amount <= balanceReceived[msg.sender]){
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    } else {
        revert("Insufficient Balance");
    }
}
}