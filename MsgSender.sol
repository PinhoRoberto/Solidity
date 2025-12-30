// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract updateMsgSender{
    address public SomeAddress;

function updateSomeAdress() public {
    SomeAddress = msg.sender;
}
}

