// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.2 < 0.9.0;

contract hello{
    string enter;

    function set(string memory value) public 
    {
        enter = value;
    }

    function get() public view returns(string memory)
    {
        return enter;
    }
}