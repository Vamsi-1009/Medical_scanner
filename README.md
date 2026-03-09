# 👁️ VaidyaDrishti AI
### *वैद्यदृष्टि — The Physician's Vision*

> An AI-powered medical prescription scanner that reads handwritten and printed prescriptions in seconds. Built with React + Vite, powered by the Groq Vision API (Llama 4 Scout), featuring a premium Apple-style interface with an ECG heartbeat splash animation.

---

![VaidyaDrishti](https://img.shields.io/badge/VaidyaDrishti-AI%20Prescription%20Vision-0f766e?style=for-the-badge)
![Groq](https://img.shields.io/badge/Groq-Llama%204%20Scout-22c55e?style=for-the-badge)
![React](https://img.shields.io/badge/React-18-61DAFB?style=for-the-badge&logo=react)
![Vite](https://img.shields.io/badge/Vite-5-646CFF?style=for-the-badge&logo=vite)
![Style](https://img.shields.io/badge/Design-Premium%20Apple%20Style-06b6d4?style=for-the-badge)

---

## ✨ Features

### 📸 Upload & Capture
- **🆕 ECG Splash Screen** — minimal heartbeat animation on first load
- **📷 Camera capture** — tap "Take Photo" on mobile to directly capture a prescription
- **Drag & drop or gallery upload** — JPG, PNG, WEBP supported
- **Multi-page support** — add multiple pages for complete analysis
- **Scan history** — last 5 scans saved locally, click to reload

### 🤖 AI Extraction (Groq Vision)
- Reads **patient name, doctor name, date, and general notes**
- Extracts full medication list with **name, dosage, frequency, duration, quantity, instructions**
- Auto-generates **1–2 sentence plain-language description** per medicine
- **Confidence score** (0–100) per medicine

### 💊 Smart Features
- **📋 Copy to Clipboard** — one-click copy of med details
- **🕐 Daily Schedule** — auto-distributes medicines into Morning / Afternoon / Night slots
- **⚠️ Drug Interaction Checker** — AI-powered check for dangerous combinations
- **🌐 Language Translation** — translate full summary into Telugu, Hindi, Tamil, Bengali, or Marathi
- **🛒 Medicine Search** — 1mg and Netmeds search links on every card

### 📤 Share & Export
- **💬 WhatsApp Share** — pre-formatted report sharing
- **🖨️ Print / Save as PDF** — clean styled print window

### 🎨 Premium Design
- **Apple-level Interface** — Clean, minimal White/Teal/Green aesthetic
- **Color System** — Teal `#0F766E`, Green `#22C55E`, Cyan `#06B6D4`
- **Typography** — Poppins (headings) + Inter (body)
- **Glassmorphic Navbar** — Sticky header with smooth blur
- **Smooth Animations** — ECG splash, fade-ins, and floating UI elements
- **Fully Responsive** — optimized for all viewports from 375px to 4K

---

## 🔒 Security

| Item | Status |
|---|---|
| `.env` in `.gitignore` — API key never committed | ✅ |
| XSS protection on print window (all AI values escaped) | ✅ |
| AI JSON response schema validation | ✅ |
| Print popup Content-Security-Policy header | ✅ |
| All Groq API calls over HTTPS | ✅ |

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| React 18 | UI framework |
| Vite 5 | Build tool & dev server |
| Groq API | AI backend (Llama 4 Scout) |
| Poppins + Inter | Premium typography |
| Vanilla CSS | High-performance custom styles |

---

## 🚀 Getting Started

1. **Clone & Install**
   ```bash
   git clone https://github.com/YOUR_USERNAME/vaidyadrishti-ai.git
   npm install
   ```

2. **Set up API key**
   ```bash
   cp .env.example .env
   # Edit .env and add VITE_GROQ_API_KEY
   ```

3. **Run**
   ```bash
   npm run dev
   ```

---

## 📁 Project Structure

```
vaidyadrishti-ai/
├── src/
│   ├── components/
│   │   ├── PrescriptionScanner.jsx      # Core logic & JSX
│   │   ├── PrescriptionScanner.css      # Design System & Hero
│   │   └── PrescriptionScanner2.css     # Results & Responsive
│   └── ...
└── ...
```

---

## 🗂️ Full Commit History

```
init: project setup
feat: core prescription scanner — image upload, Groq Vision
feat: add copy, history, and export (Phase 1)
feat: add schedule, translation, search (Phase 2)
feat: add drug interactions, confidence, multi-page (Phase 3)
design: full premium redesign v4 — Apple-style + Dribbble-quality
feat: add ECG heartbeat splash screen animation
fix: center footer and fix navbar mobile visibility
docs: update README for Premium v4 and ECG Splash
```

## 🙏 Acknowledgements
- [Groq](https://groq.com/) — ultra-fast LLM inference
- [Meta Llama 4](https://ai.meta.com/) — vision model
- [Google Fonts](https://fonts.google.com/) — Poppins, Inter

---

<p align="center">
  <em>वैद्यदृष्टि — Seeing what the physician sees.</em>
</p>
