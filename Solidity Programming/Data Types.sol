// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Types{

    bool hasFavoriteNumber = true;
    // OR bool hasFavoriteNumber;

    // uint8 to uint256 (Default)
    // uint FavoriteNumber = 5;
    uint FavoriteNumber; //Gets intialized to Zero! 

    // int8 to int256 (Default)
    int FavNumber = -5;

    // Strings are bytes just for Text
    string FavoriteNumberinText = "Five";

    // bytes2 to bytes32, Default is any size
    bytes FavoriteBytes = "Cat";

    // public or private 
    address myAddress = 0x1066618d0973e44EfD2Fe5114fD18b64c6420AbB;
}