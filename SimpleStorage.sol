// SPDX-License-Identifier: MIT

pragma solidity >0.6.0 < 0.9.0;

contract SimpleStorage {
    
    // this will get initialised as 0.
    uint256 favoriteNumber;
    
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;
    mapping(string => uint256) public nameToFavNum;
     
    function store(uint _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    // to view
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavNum[_name] = _favoriteNumber;
    }
    
}