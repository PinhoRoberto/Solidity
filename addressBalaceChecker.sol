// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
contract AddressBalanceChecker{

    address private storedAddress;

    address public owner;

    event AddressUpdated(address indexed oldAddress, address indexed newAddress);

    modifier onlyOwner(){
        require(msg.sender == owner, "Only owner calls this function");
        _;
    }

    constructor(address _initialAddress){
        require(_initialAddress != address(0), "Invalid address");
        owner = msg.sender;
        storedAddress = _initialAddress;

    }
    function setStoredAddress(address _newAddress) external onlyOwner {
        require(_newAddress != address(0), "Endereco invalido");

        address old = storedAddress;
        storedAddress = _newAddress;

        emit AddressUpdated(old, _newAddress);
    }
    function getStoredAddress() external view returns (address){
        return storedAddress;

    }
    function getStoredAddressBalance() external view returns (uint256){
        return storedAddress.balance;
    }
 
}