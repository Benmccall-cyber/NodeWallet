// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WalletAssets {
    // Address whose balance we want to display
    address public targetAddress = 0x066353c54F6fE8594A77Ce5F00c80EC273191Eae;

    // Function to get the Ether balance of the target address
    function getTargetAddressBalance() public view returns (uint256) {
        return targetAddress.balance;
    }

    // Function to update the target address (optional)
    function setTargetAddress(address newAddress) public {
        require(newAddress != address(0), "Invalid address");
        targetAddress = newAddress;
    }
}
