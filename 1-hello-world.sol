
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    string private greet = "Hello World!";

    function get() public view returns (string memory) {
        return greet;
    }
}