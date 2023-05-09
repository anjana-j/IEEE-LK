// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ModifierDemo {

    address public owner;
    uint public value;
    
    // Modifier that restricts access to the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    // Function that can only be called by the owner of the contract
    function setValue(uint _value) public onlyOwner {
        value = _value;
    }

    // Constructor that sets the owner of the contract
    constructor() {
        owner = msg.sender;
    }
}