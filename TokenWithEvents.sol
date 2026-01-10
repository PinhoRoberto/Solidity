// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract TokenWithEvents{
    string public name =  "EventToken";
    string public symbol = "EVT";
    uint256 public totalSupply = 1000000;

    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Mint (address indexed to, uint256 amount);

    constructor(){
        balances[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }
    function transfer(address to, uint256 amount) public{
        require(balances[msg.sender] >= amount, "Insuficient Balace");
        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
    }
     function mint(address to, uint256 amount) public{
        balances[to] += amount;
        totalSupply += amount;

        emit Mint(to, amount);
    }
 }
    


