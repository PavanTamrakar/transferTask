// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Test{

    function transferFunds(address _address, bytes calldata _payload) external{
        (bool status,) = _address.delegatecall(_payload);
        require(status, "Forwarded call failed.");
    }
}

contract send{
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    function sendFunds() external {
        payable(owner).transfer(address(this).balance);
    }
}