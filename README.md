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

This is a static frontend app (Vite + React) — no backend server is required. It's hosted at `https://webstocking.com/medical-scanner/`, on the same VM and domain as the Expose-Chain project, as a path alongside it (not a separate subdomain).

**Server reference:**
- App source: `/root/apps/Medical_scanner` (this repo, cloned)
- Built static files published to: `/var/www/medical-scanner/dist`
- Served via the *existing* Nginx server block for `webstocking.com` (`/etc/nginx/sites-available/webstocking.com`) — a `location /medical-scanner/` block is added into that file, see [deploy/nginx.conf](deploy/nginx.conf)
- SSH: `root@104.207.93.57 -p 22022`

1. **First-time server setup**
   ```bash
   mkdir -p /root/apps && cd /root/apps
   git clone https://github.com/Vamsi-1009/Medical_scanner.git
   cd Medical_scanner
   cp .env.example .env
   # edit .env and set VITE_GROQ_API_KEY
   ```
   Then paste the contents of [deploy/nginx.conf](deploy/nginx.conf) into the existing `server { ... }` block in `/etc/nginx/sites-available/webstocking.com` (before the Expose-Chain location block), and reload:
   ```bash
   nginx -t && systemctl reload nginx
   ```

2. **Build and publish**
   ```bash
   bash deploy/deploy.sh
   ```
   This resets to latest `main`, installs dependencies, builds, and copies `dist/` to `/var/www/medical-scanner/dist`, then reloads Nginx.

> ⚠️ Since `VITE_GROQ_API_KEY` is bundled into the client-side JavaScript at build time, it is visible to anyone using the site. For production use, consider proxying Groq API calls through a small backend so the key stays server-side.

### 🔁 Auto-Deploy via GitHub Actions

Every push to `main` triggers [.github/workflows/deploy.yml](.github/workflows/deploy.yml), which SSHes into the server as `root` and runs `deploy/deploy.sh` from `/root/apps/Medical_scanner`.

**GitHub repo secrets** (Settings → Secrets and variables → Actions) — reuse the same values already configured for the Expose-Chain repo, since it's the same server:

| Secret | Value |
|---|---|
| `SSH_HOST` | `104.207.93.57` |
| `SSH_PORT` | `22022` |
| `SSH_USER` | `root` |
| `SSH_PRIVATE_KEY` | Same deploy key already authorized in this server's `~/.ssh/authorized_keys` (the one used by Expose-Chain's workflow) |

Once secrets are set, any push to `main` redeploys automatically.

---

## ⚠️ Medical Disclaimer
*VaidyaDrishti AI is a productivity and informational utility. It is NOT a diagnostic tool. Always cross-verify AI-generated summaries with a licensed pharmacist or your primary care physician before starting medication.*

---

<p align="center">
  <em>वैद्यदृष्टि — Empowering patients with the vision of a physician.</em>
</p>
