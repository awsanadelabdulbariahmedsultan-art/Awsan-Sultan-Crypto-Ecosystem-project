// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Awsan Sultan Crypto Ecosystem - Master Token
 * @author Eng. Awsan Adel Abdulbari Ahmed Sultan
 * @notice Intellectual Property Owner: Eng. Awsan Sultan
 * @dev ID: 01010305468 | YEMEN | Phone: 00967777852433
 * @dev LinkedIn: https://www.linkedin.com/in/awsan-adel-abdulbari-ahmed-sultan-8aa5a1a9?utm_source=share_via&utm_content=profile&utm_medium=member
 * @copyright 2026 Eng. Awsan Sultan. All Rights Reserved.
 */

contract AwsanSultanToken {
    string public name = "Awsan Sultan Token"; // اسم العملة
    string public symbol = "AST";             // رمز العملة
    uint8 public decimals = 18;
    uint256 public totalSupply;
    address public owner;0x79fd74ae9cd16838fd2bf61274cda5c37da1f714

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor(uint256 initialSupply) {
        owner = msg.sender; // محفظة المهندس أوسان هي المالك الوحيد
        totalSupply = initialSupply * 10 ** uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Unauthorized: Only Eng. Awsan Sultan can execute this");
        _;
    }

    // وظيفة التحويل الأساسية
    function transfer(address to, uint256 value) public returns (bool success) {
        require(balanceOf[msg.sender] >= value);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    // وظيفة حرق العملات لزيادة القيمة (Token Burn)
    function burn(uint256 value) public onlyOwner {
        require(balanceOf[msg.sender] >= value);
        balanceOf[msg.sender] -= value;
        totalSupply -= value;
        emit Burn(msg.sender, value);
    }
}
