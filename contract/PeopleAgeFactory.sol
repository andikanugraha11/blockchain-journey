// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 <0.9.0;

import "./PeopleAge.sol";

// you can use inheritance with [contract PeopleAgeFactory is PeopleAge] so all your function and variable can be acessed here
contract PeopleAgeFactory {
    PeopleAge[] public peopleAgeArray;

    // createPeopleAgeFactoryContract is creating new object and will return address
    function createPeopleAgeFactoryContract() public {
        PeopleAge peopleAge = new PeopleAge();
        peopleAgeArray.push(peopleAge);
    }

    function paStore(uint256 _peopleAgeIndex, uint256 _peopleAge) public {
        PeopleAge(address(peopleAgeArray[_peopleAgeIndex])).store(_peopleAge);
    }

    function paRetrieve(uint256 _peopleAgeIndex) public view returns(uint256) {
        return PeopleAge(address(peopleAgeArray[_peopleAgeIndex])).retrieve();
    }
}