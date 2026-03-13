// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MyToken
 * @dev implementation of a standard ERC20 token with Burnable and Ownable features.
 */
contract MyToken is ERC20, ERC20Burnable, Ownable {
    
    /**
     * @dev Constructor that gives the msg.sender all of existing tokens.
     * @param initialSupply The amount of tokens to mint upon creation.
     */
    constructor(uint256 initialSupply) 
        ERC20("MyToken", "MTK") 
        Ownable(msg.sender) 
    {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    /**
     * @dev Function to mint tokens, restricted to the contract owner.
     * @param to The address that will receive the minted tokens.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
