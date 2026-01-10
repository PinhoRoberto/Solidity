// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract SecureToken{
    string public name = "SecureToken";
    string public symbol = "STK";
    uint256 public totalSupply = 1000000;

    address public owner;
    mapping (address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Mint(address indexed to , uint256 amount);
    event ownerShipTransferred(address indexed previousOwner,address indexed newowner);

    modifier onlyowner(){
        require(msg.sender == owner, "Only owner can use");
        _;
    }

    constructor(){
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);

}
    function transfer(address to, uint256 amount) public{
        require(balances[msg.sender] >= amount, "Insuficient Balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
}
    }


