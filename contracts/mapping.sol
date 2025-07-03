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
        require(balances[msg.sender] >= _amount,"Insufficient Balance");
        require(_amount >= 10,"Transfers must be greater than or equal to 10");
        require(msg.sender != _recipient);

        uint preBalance = balances[msg.sender];
        
        _transfer(msg.sender , _recipient, _amount);

        assert(balances[msg.sender] == preBalance - _amount);
    }
    
}
