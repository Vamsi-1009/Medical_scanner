# 👁️ VaidyaDrishti AI
### *वैद्यदृष्टि — The Physician's Vision*

> An AI-powered medical prescription scanner that reads handwritten and printed prescriptions in seconds. Built with React + Vite, powered by the Groq Vision API (Llama 4 Scout), wrapped in a deep-space dark UI with a Nexus split-panel scanning animation.

---

![VaidyaDrishti](https://img.shields.io/badge/VaidyaDrishti-AI%20Prescription%20Vision-6c63ff?style=for-the-badge)
![Groq](https://img.shields.io/badge/Groq-Llama%204%20Scout-f5a623?style=for-the-badge)
![React](https://img.shields.io/badge/React-18-61DAFB?style=for-the-badge&logo=react)
![Vite](https://img.shields.io/badge/Vite-5-646CFF?style=for-the-badge&logo=vite)
![Security](https://img.shields.io/badge/Security-XSS%20Protected-2dd4bf?style=for-the-badge)

---

## ✨ Features

### 📸 Upload & Capture
- **📷 Camera capture** — tap "Take Photo" on mobile to directly capture a prescription with the rear camera
- **Drag & drop or gallery upload** — JPG, PNG, WEBP supported
- **Multi-page support** — add multiple pages of the same prescription for complete analysis
- **Scan history** — last 5 scans saved locally, click to reload any previous result

### 🤖 AI Extraction (Groq Vision)
- Reads **patient name, doctor name, date, and general notes**
- Extracts full medication list with **name, dosage, frequency, duration, quantity, instructions**
- Auto-generates **1–2 sentence plain-language description** per medicine
- **Confidence score** (0–100) per medicine showing how clearly the AI read each drug

### 💊 Smart Features
- **📋 Copy to Clipboard** — one-click copy of any medicine's full details
- **🕐 Daily Schedule** — auto-distributes medicines into Morning / Afternoon / Night slots
- **⚠️ Drug Interaction Checker** — AI-powered check for dangerous combinations (shown when 2+ medicines)
- **🌐 Language Translation** — translate full summary into Telugu, Hindi, Tamil, Bengali, or Marathi
- **🛒 Medicine Search** — direct 1mg and Netmeds search links on every medicine card

### 📤 Share & Export
- **💬 WhatsApp Share** — sends full report as a pre-formatted WhatsApp message
- **🖨️ Print / Save as PDF** — opens a clean styled print window — use browser Print → Save as PDF
- All export options accessible via a **Share Report** modal popup

### 🎨 Design
- **Deep Space Dark** theme — `#080b14` background with purple/teal/gold accent system
- **Two-column results layout** — medication cards on the left, sidebar (patient info, schedule, tools) on the right
- **Hero banner** with 4 live stat tiles (medications, dosage, schedule, avg confidence)
- **Nexus split-panel scanning animation** — hex grid + rotating dial + terminal log
- **Inter + Playfair Display + JetBrains Mono** typography
- Fully **responsive** — mobile, tablet, desktop

---

## 🔒 Security

| Item | Status |
|---|---|
| `.env` in `.gitignore` — API key never committed | ✅ |
| XSS protection on print window (all AI values escaped) | ✅ |
| AI JSON response schema validation + field length clamping | ✅ |
| Print popup Content-Security-Policy header | ✅ |
| External links use `rel="noopener noreferrer"` | ✅ |
| `localStorage` wrapped in `try/catch` (private mode safe) | ✅ |
| File input restricted to `image/*` only | ✅ |
| No `eval()` or `dangerouslySetInnerHTML` anywhere | ✅ |
| All Groq API calls over HTTPS | ✅ |

> ⚠️ **Note:** The Groq API key is embedded in the client bundle at build time (Vite `VITE_*` variables). For production deployment, move API calls to a backend proxy (Vercel Edge Function / Express) to keep the key server-side.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| React 18 | UI framework |
| Vite 5 | Build tool & dev server |
| Groq API | AI backend (ultra-fast inference) |
| Llama 4 Scout 17B | Vision model for prescription reading |
| Inter + Playfair Display + JetBrains Mono | Typography (Google Fonts) |

---

## 🚀 Getting Started

### Prerequisites

- **Node.js** v18 or higher — [Download here](https://nodejs.org/)
- **Groq API Key** — [Get one free at console.groq.com](https://console.groq.com/)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/vaidyadrishti-ai.git
   cd vaidyadrishti-ai
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up your API key**
   ```bash
   cp .env.example .env
   ```
   Open `.env` and add your Groq API key:
   ```env
   VITE_GROQ_API_KEY=gsk_xxxxxxxxxxxxxxxxxxxx
   ```

4. **Start the development server**
   ```bash
   npm run dev
   ```

5. **Open in browser**
   ```
   http://localhost:5173
   ```

---

## 📁 Project Structure

```
vaidyadrishti-ai/
├── public/
│   └── favicon.svg                      # App favicon
├── src/
│   ├── components/
│   │   └── PrescriptionScanner.jsx      # Entire app — UI, logic, styles
│   ├── App.jsx                          # Root component
│   └── main.jsx                         # React entry point
├── index.html                           # HTML shell + page title
├── vite.config.js                       # Vite config
├── package.json                         # Dependencies & scripts
├── .env                                 # Your API key (never commit)
├── .env.example                         # Template for API key setup
├── .gitignore
└── README.md
```

---

## 🔧 Available Scripts

| Command | Description |
|---|---|
| `npm run dev` | Start development server |
| `npm run build` | Production build → `dist/` |
| `npm run preview` | Preview production build |
| `npm run lint` | Run ESLint |

---

## 📖 How It Works

1. **Upload or capture** a prescription image — photo, gallery, or drag & drop
2. Image is converted to **Base64** in the browser — nothing is uploaded to any server
3. Sent to **Groq's API** (`meta-llama/llama-4-scout-17b-16e-instruct`) with a structured prompt
4. The model returns a **validated JSON** object with:
   - Patient & doctor information
   - Full medication list with dosage, frequency, duration, instructions
   - 1–2 sentence plain-language description per medicine
   - Confidence score (0–100) per medicine
5. Results are displayed in a **two-column layout** — med cards + sidebar
6. Optional: check drug interactions, view daily schedule, translate summary, or share report

---

## 🗂️ Full Commit History

```
init: project setup — React + Vite + Groq API
feat: core prescription scanner — image upload, Groq Vision, JSON extraction
feat: add copy to clipboard, scan history, and export report (Phase 1)
feat: add daily schedule, language translation, medicine search links (Phase 2)
feat: add drug interactions, confidence score, multi-page support (Phase 3)
design: full deep-space dark theme — purple/teal/gold, cinematic scan animation
feat: nexus split panel scan animation — hex grid + rotating dial + terminal log
feat: results page complete redesign v3 — hero banner, detail grid, sidebar cards
feat: camera capture on mobile — take photo directly with rear camera
feat: share modal — WhatsApp share + Print/PDF export
fix: share modal CSS missing — add proper fixed overlay with z-index 9999
feat: remove clipboard and txt from share modal — keep WhatsApp and Print only
security: XSS fix in print window, AI response schema validation, print popup CSP
fix: rename browser tab title from RxScanner to VaidyaDrishti AI
docs: update README — all features, security audit, new design system
```

---

## 📦 Dependencies

### Production
```json
{
  "react": "^18.2.0",
  "react-dom": "^18.2.0"
}
```

### Development
```json
{
  "@vitejs/plugin-react": "^4.2.0",
  "vite": "^5.0.8",
  "eslint": "^8.55.0",
  "eslint-plugin-react": "^7.33.2",
  "eslint-plugin-react-hooks": "^4.6.0",
  "eslint-plugin-react-refresh": "^0.4.5"
}
```

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/YourFeature`
3. Commit your changes: `git commit -m 'feat: add YourFeature'`
4. Push to the branch: `git push origin feature/YourFeature`
5. Open a Pull Request

---

## ⚠️ Disclaimer

VaidyaDrishti AI is intended for **informational and convenience purposes only**. It is not a substitute for professional medical advice. Always consult your doctor or pharmacist before making any medical decisions. The accuracy of prescription reading depends on image quality and handwriting clarity.

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

## 🙏 Acknowledgements

- [Groq](https://groq.com/) — ultra-fast LLM inference
- [Meta Llama 4](https://ai.meta.com/) — vision model
- [React](https://react.dev/) — UI library
- [Vite](https://vitejs.dev/) — build tool
- [Google Fonts](https://fonts.google.com/) — Inter, Playfair Display, JetBrains Mono

---

<p align="center">
  <em>वैद्यदृष्टि — Seeing what the physician sees.</em>
</p>
