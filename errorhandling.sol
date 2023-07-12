// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ZeroDivisionErrorHandling{ 
    uint public result;
    function testRequire(uint numerator, uint denominator) public {
        // Using require() to handle zero division error
        require(denominator != 0, "Denominator must be non-zero.");

        // Performing division operation
        result = numerator / denominator;
    }

    function testAssert(uint numerator, uint denominator) public {
        // Using assert() to handle zero division error
        assert(denominator != 0);

        // Performing division operation
        result = numerator / denominator;
    }

    function testRevert(uint numerator, uint denominator) public {
        // Handling zero division error using revert()
        if (denominator == 0) {
            revert("Denominator must be non-zero.");
        }

        // Performing division operation
        result = numerator / denominator;
    }

}
