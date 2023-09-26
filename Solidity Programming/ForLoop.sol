// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Loop{

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function widthdraw() public 
    {
        /* starting index, ending index, step amount */
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }

        // reset the array
        // funders = new address[](0);
    }

}