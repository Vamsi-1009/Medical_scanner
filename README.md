# 👁️ VAIDYADRISHTI-AI
### *वैद्यदृष्टि — The Physician's Vision*

> An AI-powered prescription scanner that reads handwritten and printed prescriptions in seconds. Built with React + Vite, powered by the Groq Vision API (Llama 4), wrapped in a clay + glass morphism UI with a Sanskrit-inspired mandala scanning animation.

---

![VaidyaDrishti](https://img.shields.io/badge/VaidyaDrishti-AI%20Prescription%20Vision-7b4fc9?style=for-the-badge)
![Groq](https://img.shields.io/badge/Groq-Llama%204%20Scout-e07b00?style=for-the-badge)
![React](https://img.shields.io/badge/React-18-61DAFB?style=for-the-badge&logo=react)
![Vite](https://img.shields.io/badge/Vite-5-646CFF?style=for-the-badge&logo=vite)

---

## ✨ Features

### 📸 Core Scanner
- **Drag & drop or click** to upload JPG, PNG, WEBP prescription images
- **Multi-page support** — add multiple pages of the same prescription for complete analysis
- **AI extraction** — reads patient name, doctor name, date, and general notes
- **Full medication details** — name, dosage, frequency, duration, quantity, instructions
- **Medicine descriptions** — auto-generated 1–2 sentence plain-language summary for each drug
- **Confidence score** — per-medicine visual indicator of how clearly the AI read the name

### 💊 Smart Features
- **📋 Copy to Clipboard** — one-click copy of any medicine's full details
- **🕐 Scan History** — last 5 scans saved locally, click to reload any previous result
- **📄 Export Report** — download a clean `.txt` prescription report
- **🕐 Daily Schedule** — auto-distributes medicines into Morning / Afternoon / Night slots
- **🌐 Language Translation** — translate full summary into Telugu, Hindi, Tamil, Bengali, or Marathi
- **🛒 Medicine Search** — direct 1mg and Netmeds search links on each medicine card
- **⚠️ Drug Interaction Checker** — AI-powered check for dangerous drug combinations (shown when 2+ medicines present)

### 🎨 Design
- **Clay + Glassmorphism** hybrid UI — soft 3D clay cards with frosted glass panels
- **Deep Indigo + Saffron + Gold** color palette
- **Mandala scanning animation** — orbiting petals, concentric rings, and a golden pulsing core
- **Sanskrit progress label** — *विश्लेषण · Analyzing*
- **Lora serif** for medicine names, **IBM Plex Mono** for data labels, **Plus Jakarta Sans** for body

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| React 18 | UI framework |
| Vite 5 | Build tool & dev server |
| Groq API | AI backend (fast inference) |
| Llama 4 Scout 17B | Vision model for prescription reading |
| Plus Jakarta Sans + Lora + IBM Plex Mono | Typography (Google Fonts) |

---

## 🚀 Getting Started

### Prerequisites

- **Node.js** v18 or higher — [Download here](https://nodejs.org/)
- **Groq API Key** — [Get one free at console.groq.com](https://console.groq.com/)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/Medical_scanner.git
   cd Medical_scanner
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
Medical_scanner/
├── public/
│   └── favicon.svg                      # App favicon
├── src/
│   ├── components/
│   │   └── PrescriptionScanner.jsx      # Entire app — UI, logic, styles
│   ├── App.jsx                          # Root component
│   └── main.jsx                         # React entry point
├── index.html                           # HTML shell
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

1. **Upload** a prescription image (photo or scan, single or multi-page)
2. Image is converted to **Base64** in the browser — nothing is stored anywhere
3. Sent to **Groq's API** (`meta-llama/llama-4-scout-17b-16e-instruct`) with a structured prompt
4. The model returns a **structured JSON** object with:
   - Patient & doctor information
   - Full list of medications with dosage, frequency, duration, instructions
   - 1–2 sentence plain-language description per medicine
   - Confidence score (0–100) per medicine
5. The app renders each medicine as a **clay card** with all extracted details
6. Optional: check drug interactions, view daily schedule, translate summary, or export report

---

## 🔒 Security & Privacy

- ⚠️ **Never commit your `.env` file** — it's in `.gitignore`
- Prescription images are processed entirely **client-side** and sent directly to Groq
- **No data is stored on any server** — scan history is saved only in your browser's `localStorage`
- For production deployment, consider a backend proxy to keep your API key off the client

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
3. Commit your changes: `git commit -m 'Add YourFeature'`
4. Push to the branch: `git push origin feature/YourFeature`
5. Open a Pull Request

---

## ⚠️ Disclaimer

VAIDYADRISHTI-AI is intended for **informational and convenience purposes only**. It is not a substitute for professional medical advice. Always consult your doctor or pharmacist before making any medical decisions. The accuracy of prescription reading depends on image quality and handwriting clarity.

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

## 🙏 Acknowledgements

- [Groq](https://groq.com/) — ultra-fast LLM inference
- [Meta Llama 4](https://ai.meta.com/) — vision model
- [React](https://react.dev/) — UI library
- [Vite](https://vitejs.dev/) — build tool
- [Google Fonts](https://fonts.google.com/) — Plus Jakarta Sans, Lora, IBM Plex Mono

---

<p align="center">
  <em>वैद्यदृष्टि — Seeing what the physician sees.</em>
</p>
