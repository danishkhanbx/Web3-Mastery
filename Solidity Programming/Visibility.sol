// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Visibility{
    function Public() public pure returns(uint){
        return 1;
    }

    function Private() private  pure returns(uint){
        return 2;
    }

    function Internal() internal  pure returns(uint){
        return 3;
    }

    function External() external pure returns(uint){
        return 4;
    }

    function Within() public pure {
        uint a = Public();
        uint b = Private();
        uint c = Internal();
        // uint d = External();
    }
}

contract Derived is Visibility{
    uint public l = Public();
    // uint public m = Private();
    uint public n = Internal();
    // uint public o = External();
}

contract Outside{
    Visibility obj = new Visibility();
    uint public w = obj.Public();
    // uint public x = obj.Private();
    // uint public y = obj.Internal();
    uint public z = obj.External();
}