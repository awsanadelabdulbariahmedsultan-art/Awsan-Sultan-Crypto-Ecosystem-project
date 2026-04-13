# Project: Awsan Sultan Crypto Ecosystem
# Component: Mining Farm Load-Balancing & Monitoring
# Owner: Eng. Awsan Adel Abdulbari Ahmed Sultan
# ID: 01010305468 | Copyright 2026

class MiningFarmManager:
    def __init__(self, owner_name, farm_id):
        self.owner = owner_name
        self.farm_id = farm_id
        self.devices = []
        self.max_temp = 75.0  # الحد الأقصى للحرارة قبل الإغلاق التلقائي

    def add_rig(self, rig_id, power_usage, current_temp):
        self.devices.append({
            'id': rig_id,
            'power': power_usage,
            'temp': current_temp,
            'status': 'Active'
        })

    def load_balancing_check(self):
        """آلية موازنة الأحمال للحماية من احتراق الـ PSU"""
        total_power = sum(d['power'] for d in self.devices)
        print(f"Checking Load-Balancing for {self.owner}'s Farm...")
        
        for device in self.devices:
            if device['temp'] > self.max_temp:
                device['status'] = 'Critical - Shutting Down'
                print(f"ALERT: Device {device['id']} exceeds safety temperature!")
        return total_power

# توثيق الملكية الفكرية للمهندس أوسان
farm = MiningFarmManager("Eng. Awsan Sultan", "YEMEN-FARM-01")
farm.add_rig("Rig-01", 1200, 65.5)
farm.add_rig("Rig-02", 1200, 80.0) # هذا سيثير تنبيه الأمان

print(f"Total Power Consumption: {farm.load_balancing_check()} Watts")
