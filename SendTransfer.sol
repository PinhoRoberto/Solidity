// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract sender{
     receive() external payable { } // fallback function)
     
     function withdrawTransfer(address payable _to) public{
        _to.transfer(10);

     }

      function withdrawSend(address payable _to) public{
         _to.send(10);
      }
}

contract ReceivedNoAction{
    function balance() public view returns (uint) {
        return address(this).balance;
    }
    receive() external payable {} 

}

contract ReceiverAction {
    uint public  balanceReceived;

    receive() external payable {
        balanceReceived += msg.value;
    }
}