// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract ExampleMapping{

    mapping (uint => bool) public myMapping;
    mapping (address => bool) public myAddressMapping;
    mapping (uint => mapping (uint => bool)) public uintUintBoolMapping;

    function setValue(uint _index)public {

    }
    function setMyAdressToTrue()public {
        myAddressMapping[msg.sender] = true;
    }
    function setuintUintBoolMapping(uint _key1, uint _key2, bool _value)public {
        uintUintBoolMapping [_key1][_key2] = _value;
    }
}