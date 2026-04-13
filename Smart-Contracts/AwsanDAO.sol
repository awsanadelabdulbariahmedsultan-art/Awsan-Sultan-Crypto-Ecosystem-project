// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Awsan Sultan DAO - Governance System
 * @author Eng. Awsan Adel Abdulbari Ahmed Sultan
 * @notice Intellectual Property Ownership: Eng. Awsan Sultan
 * @dev National ID: 01010305468 | YEMEN | 2026
 */

contract AwsanDAO {
    struct Proposal {
        string description;
        uint256 voteCount;
        bool executed;
    }

    address public owner;
    mapping(uint256 => Proposal) public proposals;
    uint256 public proposalCount;

    constructor() {
        owner = msg.sender; // المهندس أوسان هو مؤسس المنظمة
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Eng. Awsan Sultan can finalize proposals");
        _;
    }

    // إنشاء مقترح جديد للمشروع
    def createProposal(string memory _description) public onlyOwner {
        proposals[proposalCount] = Proposal(_description, 0, false);
        proposalCount++;
    }

    // بيان رسمي للملكية داخل العقد
    function getFounderInfo() public pure returns (string memory) {
        return "Founder: Eng. Awsan Sultan | Project: 2026 Crypto Ecosystem";
    }
}
