// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Session02{
    string message;

    function setMessage(string memory _newMsg) public {
        message = _newMsg;
    }

    function getMessage() public view returns(string memory){
        return message;
    }
}