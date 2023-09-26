// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Function{
    uint256 public favNumber; 

    People public person1 = People({favNumber: 2, name: "Danish"});
    People public person2 = People({favNumber: 3, name: "Khan"});
    People public person3 = People({favNumber: 4, name: "Mohd"});


    struct People 
    {
       uint256 favNumber;
       string name;
    }

}