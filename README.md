Error Handling
This program demonstarte the error handling in solidity programming language.

Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. In this program, we will show the error handling in solidity programming language. Error handling in Solidity involves techniques and constructs used to handle exceptional cases, validate inputs, and respond to errors or invalid conditions within smart contracts. We will show the error hadling using various statements like assert() , require() and revert(). We have taken an  error handling example problem in this program and handled it using error handling technique.

Getting Started
Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., errorHandling.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingexample {
    function checkValue(uint _value) public  returns (string memory) {
        require(_value > 0, "Value must be greater than zero");

        if (_value % 2 == 0) {
            return "Value is even";
        } else {
            assert(_value != 5);
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


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Author
Sumit raj

