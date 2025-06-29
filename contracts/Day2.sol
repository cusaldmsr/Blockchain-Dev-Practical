// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Session02 {
    string message;

    constructor(string memory _message) {
        message = _message;
    }

    function checkMessage(int _number) public view returns (string memory) {
        //key=1234
        if (_number == 1234) {
            return message;
        }else {
            return "Not allowed"; 
        }
    }
    function count(int _number) public pure returns (int){
        int i = 0;
        while (i < 10 ){
            _number++;
            i++;
        }
        return (_number);
    }
}
