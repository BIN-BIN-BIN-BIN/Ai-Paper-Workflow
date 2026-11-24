# ai-paper-workflow

**A gated, 10-stage Agent Skill for writing research papers with AI assistance: for quantitative, qualitative and mixed-methods research, with an optional cultural heritage module. One bilingual skill file; it replies in the language you write in.**

[中文说明](README.zh-CN.md) · [Case study](examples/case-study.md) · [中文案例](examples/case-study.zh-CN.md)

Works with any tool that supports the open [Agent Skills](https://agentskills.io) format (`SKILL.md`), including Claude, Claude Code, OpenAI Codex, Hermes Agent and WorkBuddy.

---

## Why this skill

Most "write a paper with AI" workflows start from the writing. But writing is rarely what takes longest. The slow parts are data collection, rework caused by design flaws found too late, and peer review. And the most damaging AI errors (fabricated data, invented references, citations that do not say what the paper claims) are rarely caught by better prose.

This skill takes a different approach:

- **AI speeds up finding, reading, writing and checking. The researcher owns the question, the data and the judgement.**
- The work is divided into **10 stages**, each ending in a **gate**: a short list of checkable conditions. The assistant will not move on until they are met.
- The gates differ by paradigm. A qualitative study is never judged by statistical criteria, and a quantitative study is never asked for "saturation".

## What it does

| Feature | Description |
|---|---|
| 10 gated stages | Inventory → topic & journal → plan & blank framework → pilot → collection & analysis → results first → writing → two-way verification → mock review → submission |
| Three paradigms | Separate gate conditions for **quantitative**, **qualitative** and **mixed-methods** research |
| Three routes | Existing materials / new data collection / literature review |
| Blank frameworks | Dummy tables (quantitative), blank coding frames and matrices (qualitative), blank joint displays (mixed), built **before** data collection |
| Two-way verification | Claims → evidence (tables, code, excerpts) and citations → source passages, not just DOI checks |
| Cultural Heritage Module | Extra gates for rights, community consent, restricted knowledge, evidence labelling, AI-generated content, member checking |
| Paper Progress Card | A short status block at the end of every reply; paste it into a new chat to continue where you left off |
| Four red lines | Real evidence only; citations verified against sources; journal AI policies; protection of participants and communities |
| Bilingual, extensible | One `SKILL.md` in English and Chinese; replies in the user's language; new languages are added as one column in a label table |
| Self-contained | No dependency on other skills or tools |

## Repository structure

```
ai-paper-workflow/
├── README.md                     English introduction (this file)
├── README.zh-CN.md               Chinese introduction
├── LICENSE                       MIT
├── CHANGELOG.md
├── skills/
│   └── ai-paper-workflow/
│       └── SKILL.md              The skill (one file, bilingual)
├── examples/
│   ├── case-study.md             Worked example (English)
│   └── case-study.zh-CN.md       Worked example (Chinese)
├── scripts/
│   ├── install.sh                Installer for macOS / Linux
│   └── install.ps1               Installer for Windows
└── dist/
    └── ai-paper-workflow.zip     Ready-to-upload package for Claude apps
```

## Installation

### Option A: one-line installer (Claude Code, Codex, Hermes Agent, WorkBuddy)

Download or clone this repository, then run:

```bash
git clone https://github.com/BIN-BIN-BIN-BIN/ai-paper-workflow.git
cd ai-paper-workflow

# macOS / Linux: installs for every supported agent found on your computer
bash scripts/install.sh

# or choose one: claude | codex | hermes | workbuddy | all
bash scripts/install.sh codex
```

```powershell
# Windows (PowerShell)
.\scripts\install.ps1
.\scripts\install.ps1 hermes
```

Restart the agent or start a new session afterwards.

### Option B: manual installation

Copy the folder `skills/ai-paper-workflow/` (the folder itself, containing `SKILL.md`) to the agent's skills directory:

| Agent | Skills directory | Notes |
|---|---|---|
| **Claude** (web, desktop) | Upload `ai-paper-workflow.zip` from the [latest release](https://github.com/BIN-BIN-BIN-BIN/ai-paper-workflow/releases/latest) (also in `dist/`) | Customize → Skills → **+** → Create skill → Upload. The zip must contain the `ai-paper-workflow/` folder at its top level. |
| **Claude Code** | `~/.claude/skills/` (all projects) or `.claude/skills/` (one project) | |
| **OpenAI Codex** (CLI, IDE, app) | `~/.agents/skills/` (user) or `.agents/skills/` in a repository | Invoke with `$ai-paper-workflow` or via `/skills`. Restart Codex if it does not appear. |
| **Hermes Agent** | `~/.hermes/skills/` (or `$HERMES_HOME/skills/`) | Or: `hermes skills install https://raw.githubusercontent.com/BIN-BIN-BIN-BIN/ai-paper-workflow/main/skills/ai-paper-workflow/SKILL.md` |
| **WorkBuddy** | `~/.workbuddy/skills/` | If the skill does not appear, import the folder through WorkBuddy's skill settings, or give WorkBuddy this repository's link and ask it to install the skill. |
| Other Agent Skills tools | See the tool's documentation | The skill uses only the standard `name` / `description` / `license` / `metadata` fields. |

Menu names and folder locations can change between versions; check each tool's current documentation if a step differs.

## Usage

Call it by name for the most reliable behaviour:

> Use ai-paper-workflow. My study is qualitative (interviews + field notes), cultural heritage research, existing materials. I'm at Stage 2.

> Use ai-paper-workflow and check the Stage 4 gate. Here is my audit trail and theme table: …

> 用 ai-paper-workflow。我的研究是混合研究（问卷 + 访谈），现在在阶段 1。

The assistant will:

1. Identify your **stage, route and paradigm** (and whether the heritage module applies).
2. Do only the current stage's work.
3. Check the gate item by item (✔ / ✘).
4. End with a **Paper Progress Card** in your language. Save it and paste it into your next conversation.

### Tips

- **One paper, one project workspace.** Keep your plan, blank frameworks and drafts together so new sessions can see them.
- **Use it as a gatekeeper.** Its main value is the gate check at the end of each stage, not drafting text.
- **Write your own first drafts.** In Stage 6 you write the draft; the assistant diagnoses "expression" vs. "missing evidence" problems before editing or translating.

## Language support

- The skill is **one file** containing English instructions plus Chinese section headings, key rules and a label table.
- It tells the assistant to **reply in the language the user writes in**. Ask in English, get English; ask in Chinese, get Chinese, including the Paper Progress Card.
- The `description` contains English and Chinese keywords, so it triggers in either language.
- **Adding a language:** add one column (e.g. `ja`, `th`, `es`) to the label table in Section 0 of `SKILL.md`. Nothing else needs to change. Languages without a column still work; labels are translated automatically.

## Example

See the full walkthrough in [examples/case-study.md](examples/case-study.md). A short excerpt of a Stage 2 gate check for a qualitative heritage study:

```
Qualitative
✔ Tradition: reflexive thematic analysis
✔ Sampling: purposive (16 of 19 active puppeteers)
✔ Sample-size rationale: information power
✘ Positionality statement not drafted

Cultural Heritage Module
✘ Consent covers publication but not uploading transcripts to AI tools
✘ No handling rule for ritual material elders asked not to film

Not ready for Stage 3.
```

## Limitations

- **No memory of your project.** Continuity across sessions depends on the Paper Progress Card and on keeping files together.
- **No journal database.** Journal scope, formatting and AI policies must be checked each time.
- **Not a substitute for methods training or ethics review.** The gates prompt the right questions; they do not certify that a study is sound or ethical.
- **Reporting guidelines change.** Check the current versions of CONSORT, STROBE, COREQ, SRQR, GRAMMS, PRISMA, etc.
- AI outputs can be wrong. Every gate assumes the researcher checks the evidence personally.

## Contributing

Issues and pull requests are welcome, especially:

- gate conditions for other qualitative traditions or quantitative designs,
- domain modules (e.g. education, public health, digital humanities),
- new language columns for the label table.

Please keep the four red lines intact in any contribution.

## License

Released under the [MIT License](LICENSE).

## Disclaimer

This is an independent, community-made skill. It is not affiliated with or endorsed by Anthropic, OpenAI, Nous Research or Tencent. Product names are trademarks of their respective owners.
