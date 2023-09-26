// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Function{
    uint256 favNumber; 

/*** Mapping:
1. A mapping is a data structure where a key is "mapped" to a single value.
2. It is like a Dictionary 
3. A Dictionary where a name will map to a FavNumber.
***/

    mapping(string => uint256) public nameToFavNumber;  // Declaring Dict{ Key(string): Value(uint)}
    
    
    function addPerson(string memory _name, uint256 _favNumber) public 
    {
        nameToFavNumber[_name] = _favNumber;  // Storing Dict{ Key(name): Value(number)}

    }

}