// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

/* Modifier:
1. A modifier is a special type of function that you use to modify the behavior of other functions. 
2. Modifiers allow you to add extra conditions or functionality to a function without having to rewrite the entire function.
3. The _; symbol is a special symbol that is used in Solidity modifiers to indicate the end of the modifier and the beginning of the function that the modifier is modifying.
4. Without the _; symbol, the compiler would not know where to insert the code from the modifier into the function.
*/

contract Modifier{
    address owner;

    // The order you place your modifiers in doesn’t matter.
    modifier ownerChanges {
        _;
        require(msg.sender == owner);
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
 
    // When you call the changeOwner function, the virtual machine executes both onlyOwner and ownerChanges.
    function changeOwner(address newOwner) onlyOwner ownerChanges public {
        owner = newOwner;
    }
}