// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CoinToss {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function for users to play the game
    // Player sends ETH and guesses "true" for heads, "false" for tails
    function tossCoin(bool _guess) external payable {
        require(msg.value > 0, "You must wager some ETH");

        // Generate a pseudo-random result (NOT secure for real money use!)
        bool coinResult = (block.timestamp + block.prevrandao) % 2 == 0;

        if (_guess == coinResult) {
            // Player wins — get double back
            uint256 prize = msg.value * 2;
            payable(msg.sender).transfer(prize);
        }
        // else: player loses; contract keeps the wager
    }

    // Allow owner to withdraw collected funds
    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }

    // Show contract balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
