# 🎨 مجموعة BMYC NFT | Bored Mutant Yacht Club - AS
> ### **Project: Awsan Sultan Crypto Ecosystem (ASICE)**
> **Component: BMYC NFT Collection & Royalty Protocol**

---

### 👤 المالك والمطور المسؤول | Collection Architect
*   **Founder:** Eng. Awsan Adel Abdulbari Ahmed Sultan
*   **National ID:** `01010305468` | 🇾🇪 **YEMEN**
*   **Official Wallet:** `0x79fd74ae9cd16838fd2bf61274cda5c37da1f714`

---

### 📜 العقد الذكي للمجموعة (Smart Contract)
يمثل هذا العقد حجر الأساس لمجموعة **BMYC**، مع دمج "حقوق المؤلف" (Royalties) لضمان استدامة عوائد الملكية الفكرية:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title BMYC NFT Collection - Eng. Awsan Sultan Ecosystem
 * @author Eng. Awsan Adel Abdulbari Ahmed Sultan
 * @notice Intellectual Property: BMYC Brand Ownership under Eng. Awsan Sultan
 * @dev ID: 01010305468 | YEMEN | Copyright 2026
 */

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BMYC_Collection is ERC721 {
    address public owner;
    uint256 public nextTokenId;
    
    // 5% عوائد للمهندس أوسان من كل بيع مستقبلي لضمان حقوق الملكية
    uint256 public royaltyFee = 5; 

    constructor() ERC721("Bored Mutant Yacht Club - Awsan", "BMYC-AS") {
        // المهندس أوسان (0x79fd74...) هو المالك الوحيد والشرعي للعقد
        owner = 0x79fd74ae9cd16838fd2bf61274cda5c37da1f714; 
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Eng. Awsan Sultan can mint these NFTs");
        _;
    }

    /**
     * @dev وظيفة إنشاء (Mint) NFT جديد وحصري
     * @param to عنوان المحفظة المستلمة للقطعة الفنية
     */
    function createNFT(address to) public onlyOwner {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }

    /**
     * @dev ميزة إخلاء المسؤولية القانونية المدمجة دائمًا في البلوكتشين
     */
    function legalDisclaimer() public pure returns (string memory) {
        return "This NFT is the property of Eng. Awsan Sultan. All IP rights reserved 2026.";
    }
}
```

---

### 🛡️ مميزات العقد التقنية (Technical Features)



| الميزة (Feature) | الوصف (Description) |
| :--- | :--- |
| **Royalty Protocol** | نظام عوائد بنسبة **5%** تدفع آلياً للمهندس المالك عند كل عملية إعادة بيع. |
| **Identity Locking** | ربط العقد بعنوان المحفظة الرسمي `0x79...` لضمان السيادة الكاملة. |
| **Standard Compliance** | متوافق تماماً مع معيار **ERC-721** العالمي للرموز غير القابلة للاستبدال. |
| **Legal Integration** | دمج إخلاء المسؤولية القانونية في كود العقد (Immutable Legal Statement). |

---

### 🏛️ حقوق العلامة التجارية | Brand Ownership
> [!IMPORTANT]
> **إشعار هام:** العلامة التجارية **BMYC-AS** هي جزء أصيل من منظومة **Awsan Sultan Crypto Ecosystem**. أي محاولة لتقليد العقد أو استخدام اسم المجموعة دون إذن رسمي تعتبر انتهاكاً لحقوق الملكية الفكرية المسجلة باسم المهندس أوسان سلطان.

---
<p align="center">
  <b>Eng. Awsan Adel Abdulbari Ahmed Sultan</b><br>
  <i>"Artistic Vision. Blockchain Security. Yemen's Digital Legacy."</i>
</p>
