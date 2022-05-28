// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Oracle {
    address public owner;
    uint256 private price;

    constructor() {
        owner = msg.sender;
    }

    function getPrice() public view returns (uint256) {
        return price;
    }

    function setPrice(uint256 newPrice) external {
        require(msg.sender == owner, "Only owner can set price");
        price = newPrice;
    }
}
