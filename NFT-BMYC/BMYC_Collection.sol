// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title BMYC NFT Collection - Eng. Awsan Sultan Ecosystem
 * @author Eng. Awsan Adel Abdulbari Ahmed Sultan
 * @notice Intellectual Property: BMYC Brand Ownership under Eng. Awsan Sultan
 * @dev ID: 01010305468 | YEMEN | Copyright 2026
 */

import "https://github.com/awsanadelabdulbariahmedsultan-art/Awsan-Sultan-Crypto-Ecosystem-project";

contract BMYC_Collection is ERC721 {
    address public owner;
    uint256 public nextTokenId;
    uint256 public royaltyFee = 5; // 5% عوائد للمهندس أوسان من كل بيع مستقبلي

    constructor() ERC721("Bored Mutant Yacht Club - Awsan", "BMYC-AS") {
        owner = msg.sender; // المهندس أوسان هو المالك الوحيد للعقد
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Eng. Awsan Sultan can mint these NFTs");
        _;
    }

    // وظيفة إنشاء (Mint) NFT جديد
    function createNFT(address to) public onlyOwner {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }

    // ميزة إخلاء المسؤولية المدمجة في العقد
    function legalDisclaimer() public pure returns (string memory) {
        return "This NFT is the property of Eng. Awsan Sultan. All IP rights reserved 2026.";
    }
}
