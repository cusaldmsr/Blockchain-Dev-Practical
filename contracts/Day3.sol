// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Day3 {

    int [] numbers;
    function addNumber(int _number) public{
        numbers.push(_number);
        //add a number to the array 
    }

    function getNumber(uint _index) public view returns (int){
        return numbers[_index];
        //return the element at index of the array
    }
}