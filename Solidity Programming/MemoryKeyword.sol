// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Function{
    uint256 favNumber; 

    struct People 
    {
       uint256 favNumber;
       string name;
    }

    People[] public people;
    
/*** Calldata, Memory, Storage:
1. Calldata and Memory only exists temporarily.
2. Storage exist even outside the function for e.g. favNumber variable is implicitly a Storage
3. EVM can access & store info in 6 places: Stack, Memory, Storage, Calldata, Code & Logs
4. Variable cannot be Stack, Code or Logs.
5. Data location can only be specified for Array, Struct or Mapping types.
6. String is an Array of Bytes, so it needs memory to define it and uint, int, & similar don't need it.
***/
    
    // function addPerson(string memory _name, uint256 _favNumber) public 
    function addPerson(string calldata _name, uint256 _favNumber) public 
    {
        people.push(People(_favNumber, _name));

    }

}