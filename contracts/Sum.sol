// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Sum {
    uint256 a;
    uint256 b;

    function sum(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a + _b;
    }
    function setSum(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
    }
}
