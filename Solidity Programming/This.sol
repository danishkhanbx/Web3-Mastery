// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
1. this is the term used for the smart contract when the solidity version is below 0.5.0 .
2. address(this) is the term used in the latest versions of the solidity to refer to the smart contract.
3. This represents the current contract instance.
4. this: the current contract, explicitly convertible to address
*/

contract myContract {

    function example() public view returns (address) {
        return address(this);
    }   
    
}