// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./Export.sol";

// ExtraStorgae will Inherit all the functionalities of SimpleStorage
contract ExtraStorage is SimpleStorage {

    // For overriding the function we will two keywords: virtual & override
    // Add Override in the new overriding function & virtual in the original function
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }

}