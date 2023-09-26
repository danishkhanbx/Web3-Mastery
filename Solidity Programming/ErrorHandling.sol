// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

/* Require, Assert, and Revert:
1. The require function should be used to validate user input or contract state before executing the rest of the contract code.
2. The assert function should be used to check for internal errors in the contract code that should never occur.
3. The revert function should be used to revert a transaction if a condition is not met and provides more flexibility in error handling.
Reference: https://metana.io/blog/require-assert-revert-solidity/
*/

contract ErrorHandling {
    mapping(address => uint) public balances;

    // The transfer function ensures that the amount being transferred is greater than zero before executing the rest of the function code. 
    function transfer(address recipient, uint amount) public {
        // If the amount is not greater than zero, the function throws an exception and reverts the transaction.
        require(amount > 0, "Amount must be greater than 0");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    // The withdraw function checks if the user’s balance is greater than or equal to the withdrawal amount.
    function withdraw(uint amount) public {
        // If it’s not, the function throws an exception and reverts the transaction.
        // However, since this should never occur if the contract code is working correctly, the assert function is used instead of the require function.
        assert(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    // The buyTokens function checks if there are enough tokens available for purchase before executing the rest of the function code.
    function withdrawWithRevert(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        
        // If there are not enough tokens, the function reverts the transaction and provides a reason string to explain why it was reverted.
        if (!payable(msg.sender).send(amount)) {
            revert("Failed to send funds");
        }
    }
}
