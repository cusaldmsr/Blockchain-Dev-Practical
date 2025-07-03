// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Bank {
    mapping (address => uint256) balances; 

    function addBalance(uint _toAdd) public returns (uint256){
        balances[msg.sender] += _toAdd;
        return balances[msg.sender];
    }
    function getBalance() public view returns (uint256 balance) {
            return balances[msg.sender];
        } 
}