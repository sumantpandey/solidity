// SPDX-License-Identifier: GPL-1.0

pragma solidity ^0.8.15;
contract Greeter{

    string public message;

    constructor ()
    {
       message = "Greting!!"; 
    }

    function setMessage(string memory _msg) public {
        message = _msg;
    }

    function getMessage() public view returns(string memory)
    {
       return message;
    }

}