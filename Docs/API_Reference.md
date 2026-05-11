# 🔌 API Reference & Developer Documentation
> ### **Project: Awsan Sultan Crypto Ecosystem (ASICE)**
> **The Official Gateway for Algorithmic Trading & Mining Monitoring**

---

### 👤 المالك والترخيص | Ownership & License
*   **Architect:** Eng. Awsan Adel Abdulbari Ahmed Sultan
*   **IP License:** `2026-AS-YEM`
*   **National ID:** `01010305468` | 🇾🇪 **YEMEN**

---

## 📈 1. واجهة التداول الذكي | Trading API Interface (Point A)
تتيح هذه الواجهة ربط بوتات التداول (Trading Bots) مع عملة **Awsan Sultan Token (AST)**.

### `GET` /api/v1/market/price
- **الوصف (Description):** جلب سعر السوق الحالي لعملة AST مقابل ETH/USDT.
- **الوصول (Access):** عام (Public).
- **نموذج الاستجابة:** `{"symbol": "AST", "price": "1.25", "currency": "USDT"}`

### `POST` /api/v1/trade/execute
- **الوصف (Description):** تنفيذ أوامر البيع والشراء عبر **العقد الذكي** [Bd].
- **التوثيق (Auth):** يتطلب مفتاح API وتوقيع المحفظة الرقمية (Wallet Signature).

---

## ⛏️ 2. بيانات التعدين | Mining Data API (Point De)
مخصصة للمراقبة عن بُعد لمنصات التعدين الخاصة بك (**Mining Rigs**) [At]:

### `GET` /api/v1/mining/status
- **الوصف (Description):** بيانات لحظية عن موازنة أحمال الـ PSU ومستويات بطارية الـ UPS.
- **صلاحية الوصول (Owner Access):** **حصري** للمعرف الموثق للمهندس أوسان سلطان فقط.

---

## 🖼️ 3. البيانات الوصفية للـ NFT | NFT Metadata (Point V)
لجلب تفاصيل مجموعة **BMYC**:
- **Base URI:** `https://awsansultan.com`
- **Metadata Standard:** ERC-721 JSON

---

## 🛡️ الأمن والقيود | Security & Rate Limiting


| الميزة (Security Feature) | الوصف (Description) | الحالة |
| :--- | :--- | :---: |
| **Anti-spam [C+]** | نظام حماية ضد الهجمات المتكررة (DDoS Protection). | ✅ |
| **Auditing Tool [E]** | مراقبة وتسجيل كافة العمليات المالية في سجل التدقيق. | ✅ |
| **Rate Limiting** | تحديد عدد الطلبات لضمان استقرار الخادم. | 🛡️ |

---

### 🆘 الدعم الفني الرسمي | Official Support
للحصول على مفاتيح الوصول أو الإبلاغ عن ثغرات:
📧 **[awsan.sultan@gmail.com](mailto:awsan.sultan@gmail.com)**

---
<p align="center">
  <b>© 2026 Eng. Awsan Adel Abdulbari Ahmed Sultan. All Rights Reserved.</b><br>
  <i>"Building Scalable & Secure Financial Gateways."</i>
</p>
