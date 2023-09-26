// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./Export.sol";
import "./Library.sol";
// Import from GitHub an NPM package
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // Interact with the contract

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address of the contract: Is stored in simpleStorageArray
        // ABI - Application Binary Interface: From Import Export.sol, comes with prepackaged ABI  
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
        // OR: simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
        // OR: return simpleStorageArray[_simpleStorageIndex].retrieve(;
    }
}