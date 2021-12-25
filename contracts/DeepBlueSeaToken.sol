// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DeepBlueSeaToken is ERC20 {
    constructor(
        string memory name,   //name
        string memory symbol, //symbol
        uint8 decimals,       //decimal
        uint256 totalSupply   //total
    )ERC20(name, symbol) {
        _mint(msg.sender, totalSupply * (10**uint256(decimals)));
    }
}