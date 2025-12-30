// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Addresstype{
    address public someAddress;

    function setSomeaddress (address _someAddress) public{
        someAddress = _someAddress;
    }
    function getSomeBalace() public view returns (uint) {
        return someAddress.balance;
    }
}