// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Awsan Sultan NFT Marketplace
 * @author Eng. Awsan Adel Abdulbari Ahmed Sultan
 * @notice Intellectual Property Owner: Eng. Awsan Sultan
 * @dev ID: 01010305468 | Copyright 2026
 */

contract AwsanMarketplace {
    struct Listing {
        address seller;
        uint256 price;
        bool isActive;
    }

    // ربط الـ NFT بالعرض المالي
    mapping(uint256 => Listing) public listings;
    address public founder;

    constructor() {
        founder = msg.sender; // المهندس أوسان هو صاحب المنصة
    }

    function listNFT(uint256 nftId, uint256 price) public {
        listings[nftId] = Listing(msg.sender, price, true);
    }

    function getPlatformFees() public pure returns (string memory) {
        return "Standard 2.5% fee goes to Eng. Awsan Sultan Development Fund";
    }
}
