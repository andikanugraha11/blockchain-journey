// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 <0.9.0;

contract SimpleStorage {

    // Initialize deafault value of int 0, default visibility is internal
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // People public person = People(
    //     {
    //         favoriteNumber: 11,
    //         name: "Andika"
    //     }
    // );

    People[] public person;
    mapping(string => uint256) public personFavoriterNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        person.push(People(
            {
                favoriteNumber: _favoriteNumber,
                name: _name
            }
        ));

        personFavoriterNumber[_name] = _favoriteNumber;
    }
}