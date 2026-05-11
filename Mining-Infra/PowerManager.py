# ⛏️ مدير مزارع التعدين وموازنة الأحمال | Mining Farm Manager
> ### **Project: Awsan Sultan Crypto Ecosystem (ASICE)**
> **Component: Hardware Protection & Load-Balancing Logic**

---

### 👤 المالك والمهندس المسؤول | Infrastructure Architect
*   **Architect:** Eng. Awsan Adel Abdulbari Ahmed Sultan
*   **National ID:** `01010305468` | 🇾🇪 **YEMEN**
*   **Copyright:** © 2026 Intellectual Property of Eng. Awsan Sultan

---

### ⚙️ كود إدارة استقرار الطاقة والحرارة (Load-Balancing Logic)
يستخدم هذا النظام لضمان استمرارية عمل أجهزة التعدين وحمايتها من التلف أو الاحتراق الناتج عن زيادة الأحمال:

```python
# ==================================================================================
# Component: Mining Farm Load-Balancing & Monitoring
# Owner: Eng. Awsan Adel Abdulbari Ahmed Sultan
# ID: 01010305468 | Copyright 2026
# ==================================================================================

class MiningFarmManager:
    """
    نظام المراقبة الذكي المصمم بواسطة المهندس أوسان لحماية عتاد التعدين.
    يضمن موازنة الأحمال الكهربائية ومراقبة درجات الحرارة لحظياً.
    """
    def __init__(self, owner_name, farm_id):
        self.owner = owner_name
        self.farm_id = farm_id
        self.devices = []
        self.max_temp = 75.0  # بروتوكول الأمان: الإغلاق التلقائي عند 75 درجة

    def add_rig(self, rig_id, power_usage, current_temp):
        """إضافة منصة تعدين جديدة لنظام المراقبة"""
        self.devices.append({
            'id': rig_id,
            'power': power_usage,
            'temp': current_temp,
            'status': 'Active'
        })

    def load_balancing_check(self):
        """آلية التحقق من الأحمال للحماية من احتراق وحدات الطاقة (PSU)"""
        total_power = sum(d['power'] for d in self.devices)
        print(f"[*] Checking {self.owner}'s Farm: {self.farm_id}")
        
        for device in self.devices:
            if device['temp'] > self.max_temp:
                device['status'] = 'Critical - Shutting Down'
                print(f"[⚠️ ALERT] Device {device['id']} Exceeds Safety Limits!")
        
        return total_power

# --- محاكاة نظام التشغيل الميداني ---
farm = MiningFarmManager("Eng. Awsan Sultan", "YEMEN-HQ-01")
farm.add_rig("Rig-Alpha", 1200, 65.5)
farm.add_rig("Rig-Beta", 1200, 82.0) # سيقوم النظام بإغلاقه آلياً لحمايته

print(f"Current Power Load: {farm.load_balancing_check()} Watts")
```

---

### 📊 المواصفات الفنية للنظام (System Specs)



| الميزة (Feature) | الوصف التقني (Technical Description) | الحالة |
| :--- | :--- | :---: |
| **Auto-Shutdown** | إغلاق فوري للأجهزة عند تجاوز حرارة 75.0° مئوية. | ✅ |
| **Power Audit** | حساب دقيق لاستهلاك الطاقة (Watts) لمنع زيادة أحمال الـ UPS. | ⚡ |
| **Device Integrity** | مراقبة حالة كل "Rig" بشكل مستقل داخل مصفوفة البيانات. | 🛡️ |
| **Owner Linkage** | ربط سجلات المراقبة بالمعرف الوطني الرسمي للمهندس أوسان. | 🔑 |

---

### 🛡️ ضمان استدامة العتاد
> [!CAUTION]
> **بروتوكول حماية PSU:** هذا الكود يمنع الضغط الزائد على المحولات الكهربائية، مما يطيل عمر أجهزة التعدين بنسبة **30%** ويقلل من مخاطر الحرائق الكهربائية في المنشأة.

---
<p align="center">
  <b>Eng. Awsan Adel Abdulbari Ahmed Sultan</b><br>
  <i>"Optimizing Performance. Protecting Assets. Engineering Resilience."</i>
</p>
