// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "./MyToken.sol";

contract MyTokenTest is Test {
    MyToken public token;
    address public owner = address(1);
    address public user = address(2);
    uint256 public initialSupply = 1000;

    function setUp() public {
        vm.prank(owner);
        token = new MyToken(initialSupply);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), initialSupply * 10 ** token.decimals());
        assertEq(token.balanceOf(owner), initialSupply * 10 ** token.decimals());
    }

    function testTransfer() public {
        uint256 amount = 100 * 10 ** token.decimals();
        vm.prank(owner);
        token.transfer(user, amount);
        assertEq(token.balanceOf(user), amount);
    }

    function testMintingFailIfNotOwner() public {
        vm.prank(user);
        vm.expectRevert(); // Standard Ownable error
        token.mint(user, 100);
    }
}
