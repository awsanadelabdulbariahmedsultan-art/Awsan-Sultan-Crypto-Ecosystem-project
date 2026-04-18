# =============================================================================================
# 📜 INTELLECTUAL PROPERTY & SOFTWARE OWNERSHIP RIGHTS
# ---------------------------------------------------------------------------------------------
# Project: Awsan Sultan Art (ASA) - Persistent Generation System
# Created by: Eng. Awsan Adel Abdulbari Ahmed Sultan
# Country: YEMEN | ID: 01010305468 | Phone: +967 777852433
# Repository: 
# https://github.com/awsanadelabdulbariahmedsultan-art/Awsan-Sultan-Crypto-Ecosystem-project
# ---------------------------------------------------------------------------------------------
# Copyright (c) 2026. All Rights Reserved. This code is the property of Eng. Awsan Sultan.
# =============================================================================================

import os
import json
import random
import shutil
from PIL import Image, ImageDraw
from google.colab import drive

# 1. ربط Google Drive
drive.mount('/content/drive')

# 2. المسارات في الدرايف
DRIVE_BASE_PATH = "/content/drive/MyDrive/Colab Notebooks/Awsan Sultan Token & NFT/build"
IMAGES_PATH = os.path.join(DRIVE_BASE_PATH, "images")
METADATA_PATH = os.path.join(DRIVE_BASE_PATH, "metadata")

if not os.path.exists(IMAGES_PATH): os.makedirs(IMAGES_PATH)
if not os.path.exists(METADATA_PATH): os.makedirs(METADATA_PATH)

# 3. إعدادات المشروع
PROJECT_NAME = "Awsan Sultan Art (ASA)"
TOTAL_IMAGES = 45000 
IMG_SIZE = (800, 800)

def generate_metadata(edition):
    return {
        "name": f"{PROJECT_NAME} #{edition}",
        "description": "Official IP of Eng. Awsan Sultan. Protected Ecosystem Asset.",
        "external_url": "https://://github.com",
        "image": f"ipfs://PLACEHOLDER/{edition}.webp",
        "edition": edition,
        "attributes": [
            {"trait_type": "Creator", "value": "Eng. Awsan Sultan"},
            {"trait_type": "Project", "value": "ASICE Ecosystem"},
            {"trait_type": "Origin", "value": "YEMEN"}
        ]
    }

def generate_geometry(draw, edition):
    bg_color = (random.randint(0, 30), random.randint(0, 30), random.randint(40, 70))
    draw.rectangle([0, 0, 800, 800], fill=bg_color)
    for _ in range(12):
        color = (random.randint(100, 255), random.randint(100, 255), random.randint(150, 255))
        x = sorted([random.randint(40, 760), random.randint(40, 760)])
        y = sorted([random.randint(40, 760), random.randint(40, 760)])
        draw.ellipse([x[0], y[0], x[1], y[1]], outline=color, width=2)
    draw.text((450, 770), "IP: Eng. Awsan Sultan", fill=(255, 255, 255, 80))

# 4. بدء الإنتاج
print(f"🚀 بدء إنتاج {TOTAL_IMAGES} قطعة مع الربط بالمستودع الرسمي...")

for i in range(1, TOTAL_IMAGES + 1):
    image_file = f"{IMAGES_PATH}/{i}.webp"
    if os.path.exists(image_file):
        continue 
        
    try:
        img = Image.new("RGB", IMG_SIZE)
        draw = ImageDraw.Draw(img)
        generate_geometry(draw, i)
        
        img.save(image_file, "WEBP", quality=60)
        with open(f"{METADATA_PATH}/{i}.json", 'w') as f:
            json.dump(generate_metadata(i), f)
        
        if i % 100 == 0:
            print(f"✅ تم تأمين وحفظ {i} قطعة في الدرايف...")
    except Exception as e:
        print(f"⚠️ خطأ في النسخة {i}: {e}")

print("🎊 اكتمل الإنتاج! الصور والبيانات جاهزة للصك (Minting).")
