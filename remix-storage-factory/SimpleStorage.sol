// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // declarative to specify the solidity version

contract SimpleStorage {
    
    uint256 public  favouriteNumber; //0

    struct Person {
        uint256 myFavouriteNumber;
        string name;
    }

    // Person public  pat = Person(2,"pat");
    // Person public  pat = Person({myFavouriteNumber: 3, name: "Pat"});

    // dyanamic array

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavouriteNumberMap;

    function store(uint256 _favouriteNumber) public  virtual{
        favouriteNumber = _favouriteNumber;
    }

    function retreive() public view returns (uint256){
        return favouriteNumber;

    }

    function addPerson(string memory _name, uint256 _myFavouriteNumber) public {
        // Person memory newPerson =  Person(_myFavouriteNumber, _name);
        listOfPeople.push(Person(_myFavouriteNumber, _name));
        nameToFavouriteNumberMap[_name] = _myFavouriteNumber;
    }

    

    //0xd9145CCE52D386f254917e481eB44e9943F39138

    // 0x6080604052348015600f57600080fd5b50603f80601d6000396000f3fe6080604052600080fdfea26469706673582212203c6302ffe988a2f475e579434bfdbb6dbd69ca846dda501bf13a409f3d0e617664736f6c63430008130033

}