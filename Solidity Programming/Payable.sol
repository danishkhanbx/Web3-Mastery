// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract FundMe{

/*** Payable & msg:
1. Smart contracts can hold funds just like a wallet
2. Payable makes Fund Function Red
3. Can access Value attribute using global keyword: msg.value
4. Money math is done in terms of WEI i.e. 1 ETH = 1e18 WEI
***/
    function fund() public payable {
        require(msg.value >= 1e18, "Didn't send enough ETH");  // 1e18 == 1 * 10 ** 18 = 10000000000000000
    }
}