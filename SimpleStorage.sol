// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public myFavoriteNumber; // 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public peopleList; // []

    mapping (string => uint256) public nameToFavoriteNumber;

    function Store( uint256 _favoriteNumber) public {
         myFavoriteNumber = _favoriteNumber ;//1
    } 
    function retrive() public view returns (uint256){
        return  myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        peopleList.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
