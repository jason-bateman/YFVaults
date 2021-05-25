// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IFarmPool {
    // Booster
    function userInfo(uint256 pid, address user) external view returns (uint256, uint256, uint256);

    function pendingRewards(uint256 pid, address user) external view returns (uint256);

    function pending(uint256 pid, address user) external view returns (uint256, uint256);

    function claim(uint256 pid) external returns (uint256);

    function deposit(uint256 pid, uint256 amount) external;

    function withdraw(uint256 pid, uint256 amount) external;

    function emergencyWithdraw(uint256 pid) external;
}
