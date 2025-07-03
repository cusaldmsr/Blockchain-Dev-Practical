// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Day3 {

    struct Person{
        uint age;
        string name;
    }
    
    Person[] people;

    function addPerson(uint _age,string memory _name) public {
        Person memory newPerson = Person(_age,_name);
        people.push(newPerson);
    }

    function getPerson(uint _index) public view returns (uint , string memory ) {
        Person memory newPerson = people[_index];
        return (newPerson.age, newPerson.name);
    }
}