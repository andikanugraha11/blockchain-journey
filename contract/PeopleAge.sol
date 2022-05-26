// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 <0.9.0;

contract PeopleAge {

    // Initialize deafault value of int 0, default visibility is internal
    uint256 age;

    struct People {
        uint256 age;
        string name;
    }


    People[] public person;
    mapping(string => uint256) public personAge;

    function store(uint256 _age) public {
        age = _age;
    }

    function retrieve() public view returns(uint256) {
        return age;
    }

    function addPerson(string memory _name, uint256 _age) public {
        person.push(People(
            {
                age: _age,
                name: _name
            }
        ));

        personAge[_name] = _age;
    }
}