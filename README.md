*MyToken Solidity Smart Contract

A Comprehensive Overview
This Solidity smart contract seamlessly integrates the ERC-20 token standard with enhanced minting and burning capabilities. Designed for single-owner management, it empowers the owner to mint new tokens and allows token holders to burn their own holdings.

#Key Features:

ERC-20 Standard Adherence: Conforms to the ERC-20 standard, ensuring fungible token functionality.

Minting Authority: Empowers the contract owner to mint new tokens, expanding the token supply.

Burning Mechanism: Grants token holders the ability to burn their tokens, reducing the overall supply.

Transfer: Untilization of function of standard ERC-20 so there is no need self-defined fucntion.

#Deployment and Interaction

Deploy the contract utilizing Remix or your preferred Ethereum development environment.
Leverage the provided functions to interact with the contract's functionalities.

#Detailed Function Descriptions:

mint(address _to, uint256 _value)
Exclusively accessible to the contract owner, this function mints new tokens and transfers them to the specified address. The _value parameter dictates the number of tokens to be minted.

burn(uint256 _value)
This function enables any token holder to burn a specified quantity of their tokens, effectively reducing the total token supply. The _value parameter indicates the number of tokens to be burned.

transfer(address _to, uint256 _value)
This function overrides the ERC-20 standard's transfer function, introducing custom behavior. It allows token holders to transfer tokens to other addresses, maintaining the ERC-20 standard's core functionalities.
