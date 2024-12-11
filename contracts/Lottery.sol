// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
    address[] public players;

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable {
        require(msg.value > .01 ether, "Minimum ether required is 0.01");

        players.push(msg.sender);
    }

    function pickWinner() public restricted {
        uint index = random() % players.length;
        address winner = players[index];

        payable(winner).transfer(address(this).balance);

        // Очистка массива
        delete players;
    }

    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, players)));  // Используем prevrandao вместо block.difficulty
    }

    modifier restricted() {
        require(msg.sender == manager, "Only the manager can pick a winner");
        _;
    }
}
