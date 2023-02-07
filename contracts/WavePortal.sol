// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    uint104 totalMoney;

    constructor() {
        console.log("Selena's first smart contract is being made today!");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function sayHi() public {
        totalMoney += 100000;
        console.log("%s you said hi to Selena Wang, and you gave me $ %s", msg.sender, totalMoney);
    }

    function pay() payable public {
        // I don't know what does this do.
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getTotalMoney() public view returns (uint256) {
        console.log("I wish they are real money! $", totalMoney);
        return totalMoney;
    }
}