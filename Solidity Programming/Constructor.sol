// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

/* Constructor:
1. A constructor is an optional function that is executed upon contract creation, declared using constructor keyword.
2. Constructor is used to initialize state variables of a contract.
3. A contract can have only one constructor.
4. A constructor code is executed once when a contract is created and it is used to initialize contract state.
5. After a constructor code executed, the final code is deployed to blockchain.
6. Constructor code or any internal method used only by constructor are not included in final code.
7. A constructor can be either public or internal.
8. A internal constructor marks the contract as abstract.
9. In case, no constructor is defined, a default constructor is present in the contract.
*/

contract Constructor{
    address public owner;
    uint public x;

    constructor(uint _x){
        owner = msg.sender;
        x = _x;
    }
}