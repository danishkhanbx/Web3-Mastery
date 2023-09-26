// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

/* Bytes:
1. The `bytes` data type is used to store dynamic binary data, similar to a byte array.
2. It can have a variable length, which means it can store different amounts of binary data.
3. You can use `bytes` for various purposes, such as storing raw data, parsing binary data, or handling dynamic-length data like variable-length strings.
4. You can access and manipulate individual bytes within a bytes variable using array-like syntax.
*/

contract Bytes{
    bytes public data;

    function setData(bytes memory _data) public {
        data = _data;
    }

    function getDataLength() public view returns (uint) {
        return data.length;
    }

    function getByte(uint index) public view returns (bytes1) {
        require(index < data.length, "Index out of range");
        return data[index];
    }

}

// Test 1: Hexadecimal data: 0x12345678
// Test 2: Empty data: 0x