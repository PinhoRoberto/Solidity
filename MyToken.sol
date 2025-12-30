// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyTokenSol{
    
    string public name = "MyToken";
    string public symbol = "MKT";
    uint256 public totalSupply = 100000000;

    mapping (address => uint256) public balances;

    constructor (){
        balances[msg.sender] = totalSupply;
    }
    function transfer (address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances [to] += amount;


    }
    }
