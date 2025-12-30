// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract schoolhistory{
    string public gradeStatus;

    constructor () {    
        gradeStatus = "Empty";

    }
    function updategradeStatus(int _value) public{
    if (_value < 0 || _value > 10) {
            gradeStatus = "Invalid";
        }else{

            if (_value >= 7) {
                    gradeStatus  = "Aproved";
            }else {// value <7
                if (_value == 0){
                    gradeStatus = "Zero";
                    }else {// value <7
                        gradeStatus = "reproved";
                }
            }
        }
    }
}