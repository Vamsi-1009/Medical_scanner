# 👁️ VaidyaDrishti AI
### *The Next Generation of Medical Vision Intelligence*

> **VaidyaDrishti AI** is a premium, high-integrity medical prescription analysis platform. By combining cutting-edge **Groq Vision (Llama 4 Scout)** inference with a world-class **Apple-style interface**, it transforms complex medical handwriting into clear, actionable health data in under 2 seconds.

---

<p align="center">
  <img src="https://img.shields.io/badge/VaidyaDrishti-Premium%20Healthcare%20AI-0f766e?style=for-the-badge&logo=ai" />
  <img src="https://img.shields.io/badge/Design-Apple%20Minimal-22c55e?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Privacy-Zero%20Data%20Retention-06b6d4?style=for-the-badge" />
</p>

---

## 🌟 Why VaidyaDrishti AI?

In an era of rapid digital health, VaidyaDrishti bridges the gap between traditional paper prescriptions and modern healthcare management. It is designed for **speed, accuracy, and aesthetic excellence.**

### � Vision Intelligence
Powered by specialized medical prompts on the **Llama 4 Scout 17B** model, our AI doesn't just read text—it understands medical context, dosage patterns, and drug interactions with human-like intuition.

### 🎨 The Experience
Designed with a "Design-First" philosophy. From the **cinematic ECG splash animation** to the glassmorphic interactive dashboard, every pixel is crafted to provide a premium, effortless user experience.

### � Privacy by Design
Medical data is sacred. VaidyaDrishti processes everything **locally in-browser** or via secure transient API streams. No patient images or health records are ever stored on our servers.

---

## � Key Capabilities

- **⚡ Instant Digitization** — Specialized OCR for handwritten doctor notes and printed pharmacy labels.
- **📋 Intelligent Medication Cards** — Auto-parsing of dosage, frequency, duration, and instructions.
- **🕐 Smart Scheduling** — Visualize your medication journey with an auto-generated daily timeline.
- **🚨 Interaction Guard** — Real-time AI analysis to identify potential contraindications between medications.
- **🌐 Global Reach** — Instant translation of complex medical terms into 5+ major regional languages.
- **💬 One-Click Sharing** — Elegant WhatsApp report formatting and "Save as PDF" functionality.

---

## 🛠️ How it Works: End-to-End Flow

```text
┌─────────────────────────────────────────────────────┐
│                     USER                            │
│         Opens VaidyaDrishti AI in browser           │
└──────────────────────┬──────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────┐
│              UPLOAD / CAPTURE                       │
│   📷 Camera (mobile)  │  📂 Gallery  │  🖱 Drag Drop │
└──────────────────────┬──────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────┐
│            BROWSER — FileReader API                 │
│     Converts image file → Base64 string             │
│     (Everything happens inside the browser)         │
│     Nothing uploaded to any server yet              │
└──────────────────────┬──────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────┐
│              REACT STATE                            │
│   imageBase64 stored in useState()                  │
│   Phase switches: "upload" → "scanning"             │
│   Nexus animation overlay appears on screen         │
└──────────────────────┬──────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────┐
│                GROQ API CALL #1                     │
│   POST https://api.groq.com/openai/v1/chat/...      │
│   Sends:  Base64 image + structured text prompt     │
│   Auth:   Bearer VITE_GROQ_API_KEY                  │
│   Model:  meta-llama/llama-4-scout-17b-16e-instruct │
└──────────────────────┬──────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────┐
│           LLAMA 4 SCOUT (on Groq servers)           │
│   Vision model reads the prescription image         │
│   Identifies: medicine names, dosage, frequency,    │
│   duration, instructions, patient name, doctor      │
│   Returns: structured JSON response                 │
└──────────────────────┬──────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────┐
│           SECURITY + VALIDATION LAYER               │
│   JSON.parse() the response                         │
│   validateParsed() checks schema, clamps lengths    │
│   escHtml() sanitizes values — prevents XSS         │
└──────────────────────┬──────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────┐
│              RESULTS PAGE RENDERED                  │
│   Hero banner with 4 stat tiles                     │
│   Medicine cards (name, dosage, confidence bar)     │
│   Sidebar (patient info, schedule, tools)           │
│   Saved to localStorage (scan history)              │
└──────┬───────────────┬───────────────┬──────────────┘
       │               │               │
       ▼               ▼               ▼
┌──────────┐   ┌──────────────┐  ┌────────────────┐
│ GROQ #2  │   │   GROQ #3    │  │  SHARE/EXPORT  │
│Translate │   │Drug Interact │  │💬 WhatsApp     │
│Telugu,   │   │Checks all    │  │🖨️ Print/PDF    │
│Hindi,    │   │medicine      │  │                │
│Tamil...  │   │combinations  │  │                │
└──────────┘   └──────────────┘  └────────────────┘
```

---

## 🛠️ The Tech Behind the Excellence

| Pillar | Technology |
|---|---|
| **Core** | React 18 + Vite 5 (Ultra-Fast Build System) |
| **Logic** | Groq Cloud (Lowest Latency AI Inference) |
| **Model** | Llama 4 Scout Vision (Medical-Grade OCR) |
| **Aesthetics** | Custom Vanilla CSS (Apple-style Interaction Design) |
| **Fonts** | Poppins & Inter (Readability Focused Typography) |

---

## 🚀 Getting Started

**Experience the future of medical scanning in 3 steps:**

1. **Clone the Excellence**
   ```bash
   git clone https://github.com/YOUR_USERNAME/vaidyadrishti-ai.git
   npm install
   ```

2. **Secure Your Key**
   Copy `.env.example` to `.env` and insert your **Groq API Key**.

3. **Launch**
   ```bash
   npm run dev
   ```

---

## 🖥️ Deploying on Your Own Server

This is a static frontend app (Vite + React) — no backend server is required. To host it on your own Ubuntu VM with Nginx:

1. **First-time server setup**
   ```bash
   sudo apt update && sudo apt install -y nginx nodejs npm git
   sudo cp deploy/nginx.conf /etc/nginx/sites-available/medical-scanner
   sudo ln -s /etc/nginx/sites-available/medical-scanner /etc/nginx/sites-enabled/
   sudo rm -f /etc/nginx/sites-enabled/default
   ```

2. **Configure your API key**
   ```bash
   cp .env.example .env
   # edit .env and set VITE_GROQ_API_KEY
   ```

3. **Build and publish**
   ```bash
   bash deploy/deploy.sh
   ```
   This pulls the latest code, installs dependencies, builds the app, and copies `dist/` to `/var/www/medical-scanner/dist`, then reloads Nginx.

4. **Re-deploy after future changes**
   ```bash
   bash deploy/deploy.sh
   ```

> ⚠️ Since `VITE_GROQ_API_KEY` is bundled into the client-side JavaScript at build time, it is visible to anyone using the site. For production use, consider proxying Groq API calls through a small backend so the key stays server-side.

### 🔁 Auto-Deploy via GitHub Actions

Every push to `main` triggers [.github/workflows/deploy.yml](.github/workflows/deploy.yml), which SSHes into your VM and runs `deploy/deploy.sh`.

**One-time setup on the VM:**

1. Clone the repo to `~/Medical_scanner` and create `.env` there with `VITE_GROQ_API_KEY` set (deploy.sh will refuse to build without it).
2. Generate a dedicated deploy key and authorize it:
   ```bash
   ssh-keygen -t ed25519 -f ~/.ssh/gh_deploy_key -N ""
   cat ~/.ssh/gh_deploy_key.pub >> ~/.ssh/authorized_keys
   cat ~/.ssh/gh_deploy_key   # copy this private key into the GitHub secret below
   ```
3. Allow the deploy user to run the specific commands `deploy.sh` needs without a password prompt:
   ```bash
   sudo visudo -f /etc/sudoers.d/medical-scanner-deploy
   ```
   Add (replace `deployuser` with your actual SSH username):
   ```
   deployuser ALL=(root) NOPASSWD: /usr/bin/mkdir -p /var/www/medical-scanner, /bin/rm -rf /var/www/medical-scanner/dist, /bin/cp -r * /var/www/medical-scanner/dist, /usr/sbin/nginx -t, /bin/systemctl reload nginx
   ```

**One-time setup on GitHub** — add these under repo **Settings → Secrets and variables → Actions**:

| Secret | Value |
|---|---|
| `SSH_HOST` | Your Spaceship VM's IP or hostname |
| `SSH_USER` | The SSH username (the one granted `NOPASSWD` sudo above) |
| `SSH_PRIVATE_KEY` | Contents of `~/.ssh/gh_deploy_key` from step 2 |
| `SSH_PORT` | Only if not port 22 |

Once secrets are set, any push to `main` (including this one) redeploys automatically.

---

## ⚠️ Medical Disclaimer
*VaidyaDrishti AI is a productivity and informational utility. It is NOT a diagnostic tool. Always cross-verify AI-generated summaries with a licensed pharmacist or your primary care physician before starting medication.*

---

<p align="center">
  <em>वैद्यदृष्टि — Empowering patients with the vision of a physician.</em>
</p>
