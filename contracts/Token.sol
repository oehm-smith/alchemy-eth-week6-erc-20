// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Token {
    uint public totalSupply;
    string public name = "alpha";
    string public symbol = "abc";
    uint8 public decimals = 18;

    mapping(address => uint256) balance;

    constructor(){
        totalSupply = 1000 * 10 ** 18;
        balance[msg.sender] = totalSupply;
    }

    function balanceOf(address _a) external view returns (uint256) {
        return balance[_a];
    }

    function transfer(address _a, uint _amount) external returns(bool) {
        balance[msg.sender] -= _amount;
        balance[_a] += _amount;
        return true;
    }
}
