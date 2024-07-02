// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultipleOfThreeChecker {

    // Function to check if a number is a multiple of 3
    function isMultipleOfThree(uint256 number) public pure returns (bool) {
        require(number >= 0, "Number must be non-negative"); // Validate input
        return (number % 3 == 0); // Check if multiple of 3
    }

    // Function to check if a number is not a multiple of 3
    function isNotMultipleOfThree(uint256 number) public pure returns (bool) {
        assert(number >= 0); // Assert non-negative input (no error message)
        return !isMultipleOfThree(number); // Check if not multiple of 3
    }

    // Function to demonstrate revert() usage
    function checkMultipleOfThreeWithRevert(uint256 number) public pure {
        if (number % 3 != 0) {
            revert("Number is not a multiple of 3"); // Revert if not a multiple of 3
        }
    }
}

