// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {

    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS  = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint    public constant MY_UINT     = 123;

    // immutables
    address public immutable MY_ADDRESS2;
    uint    public immutable MY_UINT2;

    // state variables
    string  public text = "Hello";
    uint    public num  = 123;

    constructor(uint _myUint) {
        MY_ADDRESS2  = msg.sender;
        MY_UINT2     = _myUint;
    }

    function doSomething() public view {

        // local variables
        uint i = 456;
        
        // global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}