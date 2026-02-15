// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract BlockChainMessengerFile {
    string public myString;
    address owner;
    
    constructor() {
        owner = msg.sender;
    }

    function updateMyString (string memory _myString) public {
        if (owner == msg.sender) {
            myString = _myString;
        }
    }
}