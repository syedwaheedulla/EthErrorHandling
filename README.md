# Error Handling Contract

This Solidity contract showcases different error handling mechanisms, including `require()`, `revert()`, and `assert()`. The contract provides functions to test these error handling mechanisms based on specific conditions. This README provides an overview of the contract and instructions on how to execute and test the functions.

## Description

The `Error` contract demonstrates the usage of error handling mechanisms in Solidity. It includes the following functions:

- `testRequire(uint _i)`: This function uses the `require()` statement to check if the input `_i` is greater than 20. If the condition fails, the function reverts the transaction with the specified error message: "Input must be greater than 20".

- `testRevert(uint _i)`: Similar to `testRequire`, this function uses an `if` statement to check if the input `_i` is less than or equal to 20. If the condition fails, the function reverts the transaction with the specified error message.

- `testAssert()`: This function uses the `assert()` statement to check if the public variable `num` is equal to 0. However, the initial value of `num` is 5, so the condition will always fail, triggering an error.

## Getting Started

### Executing the Contract

To run this contract and test the error handling mechanisms, follow these steps:

1. Use a Solidity development environment or an online IDE such as Remix.

2. Create a new Solidity file and save it with a .sol extension (e.g., ErrorHandling.sol).

3. Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error {
    function testRequire(uint _i) public pure {
        require(_i > 20, "Input must be greater than 20");
    }

    function testRevert(uint _i) public pure {
        if (_i <= 20) {
            revert("Input must be greater than 20");
        }
    }

    uint public num = 5;

    function testAssert() public view {
        assert(num == 0);
    }
}
```

4. Compile the code using your Solidity development environment or the Remix IDE.

5. Deploy the contract to an Ethereum network or a local blockchain.

### Testing the Functions

To test the error handling mechanisms of the contract, follow these steps:

1. Deploy the contract to an Ethereum network or a local blockchain.

2. Use a tool such as Remix to interact with the deployed contract.

3. Call the different functions of the contract to observe the error handling mechanisms:

   - Call the `testRequire` function with an input value greater than 20 and observe that the transaction is successful.

   - Call the `testRequire` function with an input value less than or equal to 20 and observe that the transaction reverts with the specified error message.

   - Call the `testRevert` function with an input value greater than 20 and observe that the transaction is successful.

   - Call the `testRevert` function with an input value less than or equal to 20 and observe that the transaction reverts with the specified error message.

   - Call the `testAssert` function and observe that the transaction reverts with an error since the condition `num == 0` always fails.

## Author

Syed Waheedulla
