// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract  Paypal {

// Define owner of the smart contract

address public owner;

constructor(){
        owner= msg.sender;
}

//create struct and mapping 

struct request{
        address requestor;
        uint256 amount;
        string message;
        string name;
}

struct sendReceive{
        string action;
        uint256 amount;
        string message;
        address otherPartyAddress;
        string otherPartyName;
}

struct userName{
        string name;
        bool hasName;
}

mapping(address =>userName) names;
mapping(address => request[])requests;
mapping(address => sendReceive[]) history;


}