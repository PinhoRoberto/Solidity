// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract WillThrow{
function aFunction() public pure{
    require(false, "Error message");

}
}
contract ErrorHandling{
    event ErrorLogging(string reason);
    function catchTheErrror()public {
        WillThrow will = new WillThrow();
        try will.aFunction(){
            
        }catch Error(string memory reason){
            emit ErrorLogging(reason);
        }
    }
}