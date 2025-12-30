// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract ExUint{

    uint256 public myUint; //0 -(2^256) -1

    uint8 public  myUint8 = 250; //0 - 255

    int public  myInt = -15; //-2^128 - 2^128 -1

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        myUint--;
    }
    function incrementMyUint8() public {
        myUint8++;
    }
     function incrementInt() public {
        myInt++;
    }
    }
