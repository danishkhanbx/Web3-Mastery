// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

/* Enums:
1. Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.
2. They allow you to define a set of named values, and variables of the enum type can only take on one of those named values.
3. Enums are often used to represent states or categories in a contract, making the code more readable and self-explanatory.
4. Each named value in an enum is associated with an integer value starting from 0 for the first element and incrementing by 1 for each subsequent element.
*/

contract Enums{
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}