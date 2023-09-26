// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Function{
    uint256 public favNumber; 

    function assign(uint256 _favNumber) public 
    {
        favNumber = _favNumber;
        uint256 testVar;
        testVar = 5;
    }

    function something() public 
    {
        // Undeclared Identifier
        // testVar = 6;
    }

}