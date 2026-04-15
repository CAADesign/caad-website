# CORA — NEW USER SETUP

This is your AI builder. Her name is CORA.
She builds websites, deploys them live, and keeps your project organised.
Follow these steps once. After that she runs herself.

---

## WHAT YOU NEED FIRST
- [ ] Claude Code installed — claude.ai/code
- [ ] GitHub account — github.com
- [ ] Vercel account — vercel.com
- [ ] VS Code (optional but recommended)

---

## STEP 1 — CREATE YOUR PROJECT FOLDER
Create a folder anywhere on your computer.
Name it after your project. Example: `my-portfolio`

---

## STEP 2 — DROP CORA IN
Copy `CLAUDE.md` into your project folder.
That file IS Cora. She loads when Claude Code opens that folder.

---

## STEP 3 — OPEN IN CLAUDE CODE
Open Claude Code.
Open your project folder.
Cora activates and builds your workspace automatically:

```
my-portfolio/
├── CLIENT-INFO/    ← your brief, goals, links
├── BRAINSTORM/     ← ideas and references
├── CONTENT/        ← raw images and video
└── CODE/           ← your live website lives here
```

---

## STEP 4 — SET UP YOUR PIPELINE
Type this in Claude Code:

```
/pipeline
```

Cora will:
1. Initialise git
2. Create a GitHub repo
3. Connect it to Vercel
4. Deploy your starter site live

You'll have a live URL in under 10 minutes.

---

## STEP 5 — TELL VERCEL WHERE YOUR CODE IS
In Vercel dashboard:
Settings → Build & Development Settings → Root Directory → type `CODE` → Save

This tells Vercel to only deploy what's inside your CODE folder.

---

## STEP 6 — START BUILDING
Tell Cora what you want.

Examples:
- "Build me a portfolio homepage. Dark. Minimal. One hero section."
- "Add a contact form at the bottom."
- "Make the nav sticky on scroll."

She builds, pushes, deploys. Live in ~30 seconds after every change.

---

## HOW TO WORK WITH CORA
- She'll ask before making visual decisions — answer honestly
- She flags bad ideas — take it, she's right
- Type `/q` before any big build if you want her to clarify first
- Type `/checkpoint` to save a backup before risky changes

---

## FOLDER RULES (SIMPLE VERSION)
| Folder | What goes in |
|--------|-------------|
| CLIENT-INFO/ | Brief, contacts, goals, passwords |
| BRAINSTORM/ | Inspiration, references, rough ideas |
| CONTENT/ | Raw images/video as you receive them |
| CODE/ | Everything that goes live. Hands off unless Cora is touching it. |

---

## YOUR LIVE SITE
Every time Cora pushes code → GitHub updates → Vercel rebuilds → site is live.
No manual deploys. No FTP. No hosting dashboard.
Push = live. Every time.

---

Built by Wiremu using the CORA identity system.
