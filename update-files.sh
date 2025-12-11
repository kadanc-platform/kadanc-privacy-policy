#!/bin/bash

echo "Updating KADANC files with correct Bundle IDs..."

cd ~/Desktop/kadanc-privacy-policy

echo "1. Updating data-mapping.json..."
cat > data-mapping.json << 'JSONEOF'
{
  "metadata": {
    "system": "KADANC Global Data Mapping System",
    "version": "4.0",
    "lastUpdated": "2025-12-11",
    "nextReview": "2026-01-11",
    "maintainedBy": "Bandile M Ventures (Pty) Ltd",
    "companyDomain": "bandilem.com",
    "companyContact": "info@bandilem.com",
    "creator": "Bandile Mndebele",
    "dpoContact": "info@bandilem.com",
    "product": "KADANC",
    "productDomain": "kadanc.com",
    "jurisdictionCoverage": "12+ Global Jurisdictions",
    "repositoryLocation": "https://github.com/kadanc-platform/kadanc-privacy-policy/data-mapping.json",
    "status": "Active - KADANC Production Ready"
  },
  
  "projectInformation": {
    "appName": "KADANC",
    "company": "Bandile M Ventures (Pty) Ltd",
    "companyWebsite": "https://bandilem.com",
    "companyContact": "info@bandilem.com",
    "appWebsite": "https://kadanc.com",
    "appContact": "info@bandilem.com",
    "bundleId": "com.bandilem.kadanc",
    "teamId": "38VZVMB6U2",
    "founder": "Bandile Mndebele",
    "launchDate": "2025-01-15",
    "currentVersion": "2.5.1",
    "appStoreUrl": "https://apps.apple.com/app/kadanc-knowledge-network/idXXXXXXXXXX",
    "privacyPolicyUrl": "https://bandilem.com/kadanc/privacy-policy",
    "termsUrl": "https://bandilem.com/kadanc/terms",
    "supportUrl": "https://bandilem.com/kadanc/support"
  },

  "appleDeveloperConfiguration": {
    "entityName": "Bandile M Ventures (Pty) Ltd",
    "registrationType": "Proprietary Limited Company (South Africa)",
    "appleDeveloperAccount": {
      "teamId": "38VZVMB6U2",
      "program": "Apple Developer Program",
      "enrolledAs": "Organization",
      "accountHolder": "Mthobisi Bandile Mndebele",
      "phone": "+27-76-616-7214",
      "address": {
        "street": "2 DOCKRAIL RD",
        "city": "Cape Town",
        "province": "Western Cape",
        "postalCode": "8001",
        "country": "South Africa"
      }
    },
    
    "appIds": {
      "production": {
        "mainApp": "com.bandilem.kadanc",
        "appClip": "com.bandilem.kadanc.clip",
        "notificationServiceExtension": "com.bandilem.kadanc.nse",
        "shareExtension": "com.bandilem.kadanc.share",
        "widget": "com.bandilem.kadanc.widget"
      },
      "development": {
        "mainApp": "com.bandilem.kadanc.dev",
        "appClip": "com.bandilem.kadanc.dev.clip",
        "notificationServiceExtension": "com.bandilem.kadanc.dev.nse",
        "shareExtension": "com.bandilem.kadanc.dev.share",
        "widget": "com.bandilem.kadanc.dev.widget"
      },
      "staging": {
        "mainApp": "com.bandilem.kadanc.stage",
        "appClip": "com.bandilem.kadanc.stage.clip",
        "notificationServiceExtension": "com.bandilem.kadanc.stage.nse",
        "shareExtension": "com.bandilem.kadanc.stage.share",
        "widget": "com.bandilem.kadanc.stage.widget"
      },
      "legacy": {
        "xcWildcard": "*",
        "xcNSEProd": "com.yourcompany.KadancNSE-Prod"
      }
    }
  },
  
  "dataInventory": {
    "accountData": {
      "description": "User registration and profile information for KADANC knowledge network",
      "purpose": "User authentication, personalized experience, network building",
      "fields": ["email", "username", "name", "profileBio", "avatarUrl", "professionalTitle", "industry", "expertiseTags"],
      "storage": "Apple CloudKit (iCloud.com.bandilem.kadanc)",
      "retention": "5_years_post_account_deletion",
      "legalBasis": {
        "gdpr": "6(1)(b) - Contract Performance",
        "ccpa": "Category A - Identifiers",
        "popia": "Section 11(1)(a) - Consent",
        "lgpd": "Art. 7 V - Contract Execution",
        "indiaDPDPA": "Section 4(2) - Legitimate Use"
      },
      "accessControls": "User-only with admin override via KADANC Console",
      "encryption": "AES-256 at rest, TLS 1.3 in transit",
      "collectionMethod": "Direct user input during KADANC registration",
      "dataMinimization": "Only essential fields required",
      "controller": "Bandile M Ventures (Pty) Ltd (info@bandilem.com)",
      "processor": "Apple CloudKit for storage only"
    },
    
    "knowledgeContentData": {
      "description": "KADANC knowledge units, insights, and intellectual property",
      "purpose": "Knowledge sharing, collaboration, intellectual property protection",
      "fields": ["knowledgeUnitId", "title", "content", "tags", "mediaUrls", "interactionData", "claps", "reproductions", "collaborators"],
      "storage": "Apple CloudKit Public Database with Private Collections",
      "retention": "7_years_intellectual_property_preservation",
      "legalBasis": {
        "gdpr": "6(1)(a) - Explicit Consent via KADANC Terms",
        "ccpa": "Category B - Personal Records",
        "popia": "Section 11(1)(f) - Legitimate Interest (Knowledge Network)",
        "lgpd": "Art. 7 I - Consent",
        "uaePDPL": "Article 5 - Explicit Consent for Processing"
      },
      "accessControls": "Public/Private based on KADANC user settings + Team sharing",
      "encryption": "End-to-end encryption for private knowledge units",
      "collectionMethod": "User-generated content within KADANC app",
      "copyright": "User retains ownership, KADANC license for platform operation",
      "controller": "Bandile M Ventures (Pty) Ltd (info@bandilem.com)",
      "platform": "KADANC (kadanc.com)"
    },
    
    "influenceMetricsData": {
      "description": "KADANC patent-pending influence scoring and network impact",
      "purpose": "Quantify knowledge reproduction, measure influence, optimize network value",
      "fields": ["clapCount", "reproductionScore", "velocityScore", "networkImpact", "predictedScore", "expertiseRank", "communityValue"],
      "storage": "Apple CloudKit Private Database with Aggregated Analytics",
      "retention": "3_years_analytics_for_continuous_improvement",
      "legalBasis": {
        "gdpr": "6(1)(f) - Legitimate Interest (Platform Improvement)",
        "ccpa": "Category F - Internet Activity",
        "popia": "Section 11(1)(f) - Legitimate Interest",
        "lgpd": "Art. 7 IX - Legitimate Interest",
        "thailandPDPA": "Section 24(5) - Legitimate Interest"
      },
      "accessControls": "User dashboard + Aggregated KADANC Analytics",
      "encryption": "Field-level encryption for sensitive metrics",
      "collectionMethod": "Automated tracking of KADANC interactions",
      "algorithm": "Patent-pending influence quantification system",
      "controller": "Bandile M Ventures (Pty) Ltd (info@bandilem.com)",
      "product": "KADANC Influence Engine"
    }
  }
}
JSONEOF

echo "2. Updating index.html..."
cat > index.html << 'HTMLEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KADANC Global Privacy & Data Protection Policy</title>
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "PrivacyPolicy",
        "name": "KADANC Global Privacy Policy",
        "datePublished": "2025-12-11",
        "dateModified": "2025-12-11",
        "publisher": {
            "@type": "Organization",
            "name": "Bandile M Ventures (Pty) Ltd",
            "email": "info@bandilem.com",
            "founder": "Bandile Mndebele"
        },
        "applicableJurisdiction": [
            "EU (GDPR)",
            "UK (UK GDPR)", 
            "California (CCPA/CPRA)",
            "South Africa (POPIA)",
            "Brazil (LGPD)",
            "Canada (PIPEDA)",
            "Australia (Privacy Act 1988)",
            "Japan (APPI)",
            "Singapore (PDPA)"
        ]
    }
    </script>
    <style>
        :root {
            --primary: #1F1827;
            --accent: #6D28D9;
            --success: #10B981;
            --warning: #F59E0B;
            --danger: #EF4444;
            --info: #3B82F6;
            --gray-900: #111827;
            --gray-800: #1F2937;
            --gray-100: #F3F4F6;
        }
        body { 
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            max-width: 1000px; 
            margin: 0 auto; 
            padding: 20px; 
            line-height: 1.8; 
            color: var(--gray-900);
            background: linear-gradient(180deg, #ffffff 0%, #f8fafc 100%);
        }
        header { 
            background: linear-gradient(135deg, var(--primary) 0%, var(--gray-800) 100%);
            color: white; 
            padding: 40px; 
            border-radius: 12px; 
            margin-bottom: 30px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        h1 { 
            font-size: 2.5em; 
            margin: 0 0 10px 0; 
            background: linear-gradient(90deg, #ffffff 0%, #e5e7eb 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .jurisdiction-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            margin: 30px 0;
        }
        .jurisdiction-card {
            background: white;
            border-radius: 10px;
            padding: 20px;
            border-left: 5px solid;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            transition: transform 0.2s;
        }
        .jurisdiction-card:hover {
            transform: translateY(-5px);
        }
        .gdpr { border-left-color: var(--info); }
        .ccpa { border-left-color: var(--warning); }
        .popia { border-left-color: var(--success); }
        .lgpd { border-left-color: #8B5CF6; }
        .pipeda { border-left-color: #DC2626; }
        .compliance-table {
            width: 100%;
            border-collapse: collapse;
            margin: 25px 0;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
        }
        .compliance-table th {
            background: var(--gray-100);
            padding: 15px;
            text-align: left;
            font-weight: 600;
            color: var(--primary);
        }
        .compliance-table td {
            padding: 15px;
            border-top: 1px solid #e5e7eb;
        }
        .data-flow-map {
            background: #f0f9ff;
            border: 2px dashed var(--info);
            padding: 25px;
            border-radius: 12px;
            margin: 30px 0;
        }
        .update-log {
            background: #fef3c7;
            padding: 20px;
            border-radius: 10px;
            margin: 25px 0;
        }
        .contact-box {
            background: linear-gradient(135deg, #1e3a8a 0%, #1e40af 100%);
            color: white;
            padding: 30px;
            border-radius: 12px;
            margin: 30px 0;
        }
        .app-ids {
            background: #f0f9ff;
            padding: 25px;
            border-radius: 12px;
            margin: 25px 0;
            border: 2px solid var(--info);
        }
        @media (max-width: 768px) {
            .jurisdiction-grid { grid-template-columns: 1fr; }
            body { padding: 15px; }
        }
    </style>
</head>
<body>
    <header>
        <h1>🌍 KADANC Global Privacy & Data Protection Policy</h1>
        <p><strong>Effective:</strong> <span id="currentDate"></span> | <strong>Version:</strong> 4.0 | <strong>Jurisdictions:</strong> 12+ countries</p>
        <p><strong>Controller:</strong> Bandile M Ventures (Pty) Ltd | <strong>Creator:</strong> Bandile Mndebele</p>
        <p><strong>Address:</strong> 2 DOCKRAIL RD, Cape Town, Western Cape 8001, South Africa</p>
        <p><strong>Contact:</strong> <a href="mailto:info@bandilem.com" style="color: white;">info@bandilem.com</a> | <strong>Website:</strong> <a href="https://kadanc.com" style="color: white;">kadanc.com</a></p>
        <p><strong>Apple Developer Team ID:</strong> 38VZVMB6U2 | <strong>Bundle ID:</strong> com.bandilem.kadanc</p>
    </header>

    <div class="app-ids">
        <h2>📱 KADANC Application Identifiers</h2>
        <p><strong>Main App:</strong> com.bandilem.kadanc</p>
        <p><strong>App Clip:</strong> com.bandilem.kadanc.clip</p>
        <p><strong>Share Extension:</strong> com.bandilem.kadanc.share</p>
        <p><strong>Widget:</strong> com.bandilem.kadanc.widget</p>
        <p><strong>Development:</strong> com.bandilem.kadanc.dev</p>
        <p><strong>Staging:</strong> com.bandilem.kadanc.stage</p>
    </div>

    <section>
        <h2>📋 Jurisdiction-Specific Compliance</h2>
        <p>Click your region for specific rights and contact information:</p>
        
        <div class="jurisdiction-grid">
            <div class="jurisdiction-card gdpr">
                <h3>🇪🇺 European Union (GDPR)</h3>
                <p><strong>Legal Basis:</strong> Art. 6(1)(a-f)</p>
                <ul>
                    <li>Right to access, rectification, erasure</li>
                    <li>Data portability (Art. 20)</li>
                    <li>Right to object (Art. 21)</li>
                    <li><strong>DPO:</strong> info@bandilem.com</li>
                </ul>
                <p><em>Transfer Mechanism:</em> EU-U.S. DPF + SCCs</p>
            </div>
            
            <div class="jurisdiction-card ccpa">
                <h3>🇺🇸 California (CCPA/CPRA)</h3>
                <p><strong>Categories:</strong> A, B, C, D, F, G, H, I, K</p>
                <ul>
                    <li>Right to know/delete/correct</li>
                    <li>Opt-out of sale/sharing</li>
                    <li>Limit sensitive data use</li>
                    <li><strong>Response Time:</strong> 45 days</li>
                </ul>
                <p><em>Do Not Sell My Info:</em> Not applicable</p>
            </div>
            
            <div class="jurisdiction-card popia">
                <h3>🇿🇦 South Africa (POPIA)</h3>
                <p><strong>Responsible Party:</strong> Section 1(x)</p>
                <ul>
                    <li>Prior authorization required</li>
                    <li>Cross-border transfer safeguards</li>
                    <li>Direct marketing opt-out</li>
                    <li><strong>Information Officer:</strong> info@bandilem.com</li>
                </ul>
            </div>
            
            <div class="jurisdiction-card lgpd">
                <h3>🇧🇷 Brazil (LGPD)</h3>
                <p><strong>Legal Basis:</strong> Art. 7 I-X</p>
                <ul>
                    <li>Anonymization, blocking, deletion</li>
                    <li>Portability (Art. 18 V)</li>
                    <li>Review automated decisions</li>
                    <li><strong>Encarregado:</strong> info@bandilem.com</li>
                </ul>
            </div>
            
            <div class="jurisdiction-card pipeda">
                <h3>🇨🇦 Canada (PIPEDA)</h3>
                <p><strong>Principle:</strong> 4.1-4.10</p>
                <ul>
                    <li>Meaningful consent</li>
                    <li>Challenging compliance</li>
                    <li>Transparency</li>
                    <li><strong>Data Residency:</strong> Optional</li>
                </ul>
            </div>
        </div>
    </section>

    <div class="contact-box">
        <h2>📞 Contact Information</h2>
        <p><strong>Data Controller:</strong> Bandile M Ventures (Pty) Ltd</p>
        <p><strong>Address:</strong> 2 DOCKRAIL RD, Cape Town, Western Cape 8001, South Africa</p>
        <p><strong>Email:</strong> info@bandilem.com</p>
        <p><strong>Phone:</strong> +27-76-616-7214</p>
        <p><strong>Data Protection Officer:</strong> Bandile Mndebele</p>
        <p><strong>Response Time:</strong> 30 days maximum</p>
    </div>

    <footer style="margin-top: 50px; padding-top: 30px; border-top: 2px solid #e5e7eb;">
        <h2>📮 Rights Exercise</h2>
        <p><strong>To exercise your rights, contact:</strong> info@bandilem.com</p>
        <p><strong>Subject Line:</strong> "KADANC Privacy Request"</p>
        <p><strong>Include:</strong> Your jurisdiction, request type, and verification details</p>
        
        <p style="margin-top: 30px; font-size: 0.9em; color: #6b7280;">
            © 2025 Bandile M Ventures (Pty) Ltd. All rights reserved.
            <br>KADANC and the KADANC logo are trademarks of Bandile M Ventures (Pty) Ltd.
            <br>Creator: Bandile Mndebele | Registered in South Africa
            <br>Bundle ID: com.bandilem.kadanc | Team ID: 38VZVMB6U2
        </p>
    </footer>

    <script>
        const date = new Date().toLocaleDateString('en-US', {
            year: 'numeric',
            month: 'long',
            day: 'numeric'
        });
        document.getElementById('currentDate').textContent = date;
    </script>
</body>
</html>
HTMLEOF

echo "3. Updating README.md..."
cat > README.md << 'MARKDOWNEOD'
# 🌍 KADANC Global Privacy & Data Protection System

## 🚀 Product Information

**Product:** KADANC  
**Website:** [kadanc.com](https://kadanc.com)  
**Bundle ID:** \`com.bandilem.kadanc\`  
**App Store:** [Coming Soon](https://apps.apple.com)  
**Category:** Education / Knowledge Network  
**Creator:** Bandile Mndebele  
**Company:** Bandile M Ventures (Pty) Ltd  

## 📱 Application Identifiers

| Environment | Bundle ID | Purpose |
|-------------|-----------|---------|
| **Production** | \`com.bandilem.kadanc\` | Main application |
| **Production App Clip** | \`com.bandilem.kadanc.clip\` | App Clip functionality |
| **Production Share** | \`com.bandilem.kadanc.share\` | Share extension |
| **Production Widget** | \`com.bandilem.kadanc.widget\` | Home screen widget |
| **Production NSE** | \`com.bandilem.kadanc.nse\` | Notification Service Extension |
| **Development** | \`com.bandilem.kadanc.dev\` | Development builds |
| **Staging** | \`com.bandilem.kadanc.stage\` | Staging environment |

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

### 1. **Data Mapping System** (\`data-mapping.json\`)
Complete data inventory, processing activities, legal bases, and retention policies for all KADANC data categories.

### 2. **Global Privacy Policy** (\`index.html\`)
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

## 📅 Maintenance Schedule

- **Quarterly:** Data mapping validation, vendor assessments
- **Annually:** Privacy impact assessments, penetration testing
- **Trigger-based:** Feature releases, jurisdiction expansions

## 📞 Contact & Support

**Data Protection Officer:** Bandile Mndebele  
**Email:** info@bandilem.com  
**Response Time:** 30 days maximum  
**Jurisdiction Coverage:** Global (12+ jurisdictions)  

**For privacy requests:** Email \`info@bandilem.com\` with subject "KADANC Privacy Request"

## 📄 License

© 2025 Bandile M Ventures (Pty) Ltd. All rights reserved.  
KADANC is a trademark of Bandile M Ventures (Pty) Ltd.

---

*Last Updated: December 11, 2025*  
*Version: 4.0*  
*Status: ✅ Production Ready*
MARKDOWNEOD

echo "✅ Files updated successfully!"
