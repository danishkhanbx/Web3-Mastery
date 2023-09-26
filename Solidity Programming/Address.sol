// In Solidity, address and address payable are two distinct data types used to handle Ethereum addresses. 
// Both data types represent Ethereum addresses, but they have different capabilities and purposes.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

/* Address:
1. The address data type is a 20-byte (160-bit) hexadecimal Ethereum address.
2. It can be used to store addresses of other contracts or externally-owned accounts (EOAs).
3. `address` variables can receive and send Ether.
4. They can be used for sending Ether and interacting with other smart contracts.
*/

contract Address{
    address public owner;
    address public contractAddress;

    function setOwner(address _newOwner) public {
        owner =_newOwner;
    }

}

/* Address Payable:
1. The address payable data type is a more specialized version of address.
2. It can do everything that an address can do, but it can also send Ether and receive Ether directly.
3. It is typically used for variables and function parameters that are intended to send or receive Ether.
4. It is necessary when you want to use functions like .transfer() or .send() to send Ether to an address.
*/

contract AddressPayable{
    address payable public recipient;

    function sendEtherToRecipient() public payable {
        recipient.transfer(msg.value);
    }

}