// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Function{
    uint256 public favNumber; // Point 7

    function assign(uint256 _favNumber) public 
    {
        favNumber = _favNumber;
        // retrieve();  // Point 5
    }

/*** View and Pure Functions:
1. When called alone don't spend any Gas.
2. Disallow modification of state.
3. Additionally disallow you to read from blockchain state.
4. Clicking Blue buttons does not make any change, we are just reading chain.
5. If a gas calling function calls a view or pure function then only gas cost will apply. 
6. Returns is what a function will give us. For e.g.: retreive() will give us uint256 
7. Public variable is counted as function that returns uint256 
***/ 

    function retrieve() public view returns(uint256)
    {
        return favNumber;
    }

    function add() public pure returns(uint256)
    {
        return(1 + 1);
    }

}