// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Primitives {

    bool    public defaultBoo; 
    uint    public defaultUint; 
    int     public defaultInt; 
    address public defaultAddr;


    uint8   public u8   = 1;
    uint256 public u256 = 456;
    uint    public u    = 123; // uint is an alias for uint256

    int8    public i8   = -1;
    int256  public i256 = 456;
    int     public i    = -123; // int is same as int256

    // minimum and maximum of int
    int     public minInt = type(int).min;
    int     public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    
}
