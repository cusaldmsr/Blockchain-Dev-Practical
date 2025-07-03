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

    function _transfer(address _from, address _to , uint _amount) private {
        balances[_from] -= _amount; //subtract the amount from the sender
        balances[_to] += _amount;  //add the amount to the receiver's account
    }

    function transfer(address _recipient , uint _amount) public{
        _transfer(msg.sender , _recipient, _amount);
    }
    
}
