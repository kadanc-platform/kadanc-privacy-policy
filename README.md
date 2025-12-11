# 🌍 KADANC Global Privacy & Data Protection System

## 🚀 Product Information

**Product:** KADANC  
**Website:** [kadanc.com](https://kadanc.com)  
**Bundle ID:** `com.bandilem.kadanc`  
**App Store:** [Coming Soon](https://apps.apple.com)  
**Category:** Education / Knowledge Network  
**Creator:** Bandile Mndebele  
**Company:** Bandile M Ventures (Pty) Ltd  

## 📱 Application Identifiers

| Environment | Bundle ID | Purpose |
|-------------|-----------|---------|
| **Production** | `com.bandilem.kadanc` | Main application |
| **Production App Clip** | `com.bandilem.kadanc.clip` | App Clip functionality |
| **Production Share** | `com.bandilem.kadanc.share` | Share extension |
| **Production Widget** | `com.bandilem.kadanc.widget` | Home screen widget |
| **Production NSE** | `com.bandilem.kadanc.nse` | Notification Service Extension |
| **Development** | `com.bandilem.kadanc.dev` | Development builds |
| **Staging** | `com.bandilem.kadanc.stage` | Staging environment |

## 🏢 Company Details

**Company:** Bandile M Ventures (Pty) Ltd  
**Address:** 2 DOCKRAIL RD, Cape Town, Western Cape 8001, South Africa  
**Phone:** +27-76-616-7214  
**Email:** info@bandilem.com  
**Website:** [bandilem.com](https://bandilem.com)  

**Apple Developer Account:**  
- **Team ID:** 38VZVMB6U2  
- **Program:** Apple Developer Program (Organization)  
- **Account Holder:** Mthobisi Bandile Mndebele  

## 📊 System Components

### 1. **Data Mapping System** (`data-mapping.json`)
Complete data inventory, processing activities, legal bases, and retention policies for all KADANC data categories.

### 2. **Global Privacy Policy** (`index.html`)
Interactive privacy policy covering 12+ jurisdictions with jurisdiction-specific compliance information.

### 3. **Compliance Framework**
- GDPR (EU/UK)
- CCPA/CPRA (California)
- POPIA (South Africa)
- LGPD (Brazil)
- PIPEDA (Canada)
- +7 other jurisdictions

## 🛡️ Security Features

- **Encryption:** AES-256 at rest, TLS 1.3 in transit
- **Authentication:** Apple Sign-In with 2FA
- **Data Storage:** Apple CloudKit (iCloud.com.bandilem.kadanc)
- **Backup:** Automated daily with 30-day retention
- **Monitoring:** 24/7 security monitoring

## 🔄 Update Instructions

```bash
# Navigate to repository
cd kadanc-privacy-policy

# Update all files with correct Bundle IDs
sed -i '' 's/com\.bandilen\.kadanc\.production/com.bandilem.kadanc/g' data-mapping.json
sed -i '' 's/iCloud\.com\.bandilen\.kadanc\.production/iCloud.com.bandilem.kadanc/g' data-mapping.json
sed -i '' 's/48VZWBBQJZ/38VZVMB6U2/g' data-mapping.json

sed -i '' 's/com\.bandilen\.kadanc\.production/com.bandilem.kadanc/g' index.html
sed -i '' 's/48VZWBBQJZ/38VZVMB6U2/g' index.html

sed -i '' 's/com\.bandilen\.kadanc\.production/com.bandilem.kadanc/g' README.md
sed -i '' 's/48VZWBBQJZ/38VZVMB6U2/g' README.md

# Commit changes
git add .
git commit -m "Update to correct Bundle IDs: com.bandilem.kadanc"
git push origin main
