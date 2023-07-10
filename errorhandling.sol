//SPDX-License-Identifier: MIT
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

    uint public num=5;

    function testAssert() public view {
        assert(num == 0);
    }

    
}
