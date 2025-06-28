// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;
contract HelloWorld {
    string greeting = "Hello World!";

    function hello() public view returns (string memory) {
        return greeting;
    }

    function setHello(string memory _newGreeting  ) public {
        greeting = _newGreeting;
    }
}

