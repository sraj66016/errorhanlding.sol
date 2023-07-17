// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingexample {
    function checkValue(uint _value) public returns (string memory) {
        require(_value > 0, "Value must be greater than zero");

        if (value % 2 == 0) {
            return "Value is even";
        } else {
            assert(value != 5);
            return "Value is odd";
        }
    }

    function sendether(address payable _recipient) public payable {
        require(msg.value > 0, "Sent value must be greater than zero");

        if (msg.value >= 1 ether) {
            _recipient.transfer(msg.value);
        } else {
            revert("Insufficient amount sent");
        }
    }
}
