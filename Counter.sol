// SPDX-License-Identifier: GPL-1.0
pragma solidity ^0.8.15;

contract Counter{

    uint256 counter;

    constructor()
    {
        counter = 1;
    }

    function increment() public{
        counter++;
    }

    function add(uint num) public{
        counter += num;
    }

    function getCounter() public view returns (uint){
       
        return counter;
    }

}