// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

// Inherit from ERC20 and Ownable
contract UniqueToken is ERC20, Ownable {
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) ERC20(_name, _symbol) {
        // Mint initial supply to the owner
        _mint(_msgSender(), _initialSupply);
    }

    // Custom function to mint new tokens
    function issueTokens(address _to, uint256 _amount) public onlyOwner {
        // Mint tokens to the recipient
        _mint(_to, _amount);
    }

    // Custom function to burn existing tokens
    function destroyTokens(uint256 _amount) public {
        // Burn tokens from the sender's account
        _burn(_msgSender(), _amount);
    }

    function transfer(address _to, uint256 _value) public override returns (bool success) {
        // Transfer tokens from sender to recipient
        _transfer(_msgSender(), _to, _value);
        return true;
    }
}
