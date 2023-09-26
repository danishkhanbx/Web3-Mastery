// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array{
    uint[10] public arr;
    uint public count = 0;

    function loop() public{

        /*
        for(uint i=count; i<arr.length; i++){
            arr[count] = count;
            count++;
        }
        */

        /*
        while(count<arr.length){
            arr[count] = count;
            count++;
        }
        */

        //
        do{
            arr[count] = count;
            count++;
        }while(count<arr.length);
        //
    }
}