// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Sum {
    uint256 a;
    uint256 b;

    function sum() public view returns (uint256) {
        return a + b;
    }
    function setSum(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
    }
}
