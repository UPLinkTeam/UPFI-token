// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract UpfiToken is ERC20, ERC20Permit {
    uint256 private constant INITIAL_SUPPLY = 1_000_000_000;
    constructor() ERC20Permit("Upfi") ERC20("Upfi", "UPFI") {
        _mint(msg.sender, INITIAL_SUPPLY * 10 ** 18);
    }
}