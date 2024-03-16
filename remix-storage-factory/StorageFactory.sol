// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory {

    SimpleStorage[] public  listOfSimpleStorage;

    function createSimpleStorageContract() public {
        listOfSimpleStorage.push(new SimpleStorage());
    }

    function sfStore(uint256 _newSimpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_newSimpleStorageIndex];

        mySimpleStorage.store(_newSimpleStorageNumber);

    }

    function sfGet(uint256 _newSimpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_newSimpleStorageIndex];
        return  mySimpleStorage.retreive();
    }
}