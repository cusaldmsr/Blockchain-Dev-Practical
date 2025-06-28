// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;
contract HelloWorld {
    string public greeting = "Hello World!";

    function hello() public view returns (string memory) {
        return greeting;
    }
}

