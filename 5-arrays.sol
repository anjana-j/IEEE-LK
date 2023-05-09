// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr1() public view returns (uint[] memory) {
        return arr;
    }

    // Solidity can return the entire array but should avoid
    function getArr2() public view returns (uint[] memory) {
        return arr2;
    }

    function getLength() public view returns (uint) {
        return arr2.length;
    }

}