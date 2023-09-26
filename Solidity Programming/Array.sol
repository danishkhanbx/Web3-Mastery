// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Function{
    uint256 favNumber; 

    struct People 
    {
       uint256 favNumber;
       string name;
    }

    // uint256[] public favNumberList;
    // People[] is Dynamic Array while People[3] is Static fixed at max 3
    People[] public people;

    function addPerson(string memory _name, uint256 _favNumber) public 
    {
        // People memory newPerson = People({favNumber: _favNumber, name: _name});
        People memory newPerson = People(_favNumber, _name);
        
        people.push(newPerson);
        // people.push(People(_favNumber, _name));

    }

}