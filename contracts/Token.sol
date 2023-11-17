// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Token {
    uint public totalSupply;
    string public name="alpha";
    string public symbol="abc";
    uint8 public decimals=18;

    mapping (address => uint256) balance;

    constructor(){

    }

    function balanceOf(address _a) external view returns (uint256) {
        return balance[_a];
    }
}
