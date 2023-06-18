// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

// Solidity contract that utilizes modifiers to restrict access to certain functions. Include functions that can only be called by specific addresses or under certain conditions.

contract firstAss{
    
    address private owner;
    uint private price;
    string  private name;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }
    
    modifier onlyIfConditionMet(string memory _data) {
        require(keccak256(abi.encode(name)) == keccak256(abi.encode(_data)), "This function can only be called if the condition is met.");
        _;
    }
    
    constructor() {
        owner = msg.sender;
        price = 0;
        name = "solidity";
    }
    
    function setPrice(uint _newprice) public onlyOwner {
        price = _newprice;
    }
    
    function setName(string memory _newname) public onlyOwner {
        name = _newname;
    }
    
    function getPrice() public view onlyIfConditionMet("solidity") returns (uint) {
        return price;
    }
}
