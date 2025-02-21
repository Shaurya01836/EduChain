
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationPool {
    address public owner;

    // Set the deployer as the owner
    function setOwner() internal {
        if (owner == address(0)) {
            owner = msg.sender;
        }
    }

    // Function to donate to the pool
    receive() external payable {
        setOwner();
    }

    // Withdraw all funds for charity (only owner)
    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }

    // Check contract balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}


