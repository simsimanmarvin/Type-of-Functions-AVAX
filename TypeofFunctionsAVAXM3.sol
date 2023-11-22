// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract FixedToken is ERC20 {
    address public owner; 
    constructor() ERC20("FixedToken", "FTK") {
        owner = msg.sender;
        _mint(msg.sender, 100000 * (10 ** uint(decimals())));
    }

    function mint(address account, uint256 amount) public {
        require(msg.sender == owner, "You are not the owner of the contract.");
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}
