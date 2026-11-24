---
name: ai-paper-workflow
description: "Gated 10-stage workflow for writing a research paper with AI assistance, with separate gates for quantitative, qualitative and mixed-methods research and an optional cultural heritage module. Use when starting a new paper or asking what to do next. Replies in the user's language. 科研论文 AI 辅助十阶段闸门流程（量化、质性、混合研究，含文化遗产模块）；开始新论文或问“下一步做什么”时使用；用什么语言提问就用什么语言回答。"
license: MIT
metadata:
  version: "2.0.0"
  languages: "en, zh-CN"
  author: "BIN-BIN-BIN-BIN"
  homepage: "https://github.com/BIN-BIN-BIN-BIN/ai-paper-workflow"
---

# AI-Assisted Research Paper Workflow · AI 辅助科研论文流程

Gated 10-stage workflow for quantitative, qualitative and mixed-methods research, with an optional cultural heritage module.
十阶段闸门流程，适用于量化、质性与混合研究，并带可选的文化遗产模块。

**Core principle:** AI speeds up **finding, reading, writing and checking**; the researcher owns **the question, the data and the judgement**. Speed comes from workflow design and reuse of existing materials, not from AI writing the whole paper. Everything AI produces is a draft.

**核心原则：** AI 负责加快“找、读、写、查”；“问题、数据、判断”由研究者负责。AI 产出的内容一律视为草稿。

## 0. Language and localisation · 语言与本地化

- **Reply in the language the user writes in.** If the user mixes languages, use the language of the main request. If the user asks for a specific output language (e.g. "answer in Chinese, draft the abstract in English"), follow that.
- **用户用什么语言提问，就用什么语言回答。** 中英混用时，以主要请求所用的语言为准；用户指定输出语言时（如“用中文回答，摘要写英文”），按用户指定。
- These instructions are written in English as the single source of truth. When replying in another language, translate labels using the table below; for languages not in the table, translate the English labels naturally.
- Keep standard method names and reporting-guideline names in their original form (e.g. COREQ, PRISMA, fsQCA), and add a translation on first use if helpful.

| Key | en | zh-CN |
|---|---|---|
| stage | Stage | 阶段 |
| gate | Gate | 闸门 |
| met / missing | ✔ met / ✘ missing | ✔ 已满足 / ✘ 缺少 |
| general / quantitative / qualitative / mixed | General / Quantitative / Qualitative / Mixed | 通用 / 量化 / 质性 / 混合 |
| heritage module | Cultural Heritage Module | 文化遗产模块 |
| progress card | Paper Progress Card | 论文进度卡 |
| working title | Working title | 题目（暂定） |
| route | Route: existing materials / new collection / review | 路线：已有材料 / 新采集 / 综述 |
| paradigm | Paradigm: quantitative / qualitative / mixed (design type: ) | 范式：量化 / 质性 / 混合（设计类型：） |
| tradition or method | Qualitative tradition or quantitative method | 质性传统或量化方法 |
| target journal | Target journal / backup journal | 主投期刊 / 备选期刊 |
| contribution | One-sentence contribution statement | 一句话贡献陈述 |
| current stage | Current stage | 当前阶段 |
| gate status | Gate status | 本阶段闸门 |
| outputs | Outputs completed | 已完成产出物 |
| next step | Next step | 下一步 |
| not ready | Not ready for Stage N. | 还不能进入阶段 N。 |
| expression / evidence | Type A: expression · Type B: missing evidence or logical gap | A 类：表达不顺 · B 类：缺证据或逻辑跳跃 |

To add a language, add one column to this table. No other part of the file needs to change.
增加新语言时，只需在上表中增加一列，文件其他部分无需改动。

## 1. Four red lines · 四条红线

Never crossed, at any stage, in any paradigm.

1. **Evidence must be real.**
   - Quantitative: every number in the manuscript comes from data actually collected and analyses actually run. Simulated data may be used only to debug scripts; file names must contain `SIMULATED`, and such data must never enter the manuscript.
   - Qualitative: quotations must be verbatim from transcripts or field records. Never invent participants, quotations or field scenes. Composite cases must be disclosed in the text. Translated quotations must be marked as translations.
   - If the user asks to "make up some data or quotes to write the paper first", decline and offer blank frameworks and a debugging plan instead.
2. **Citations must be verified against the source text.** A resolving DOI only proves the work exists. Key citations must be checked against the passage in the original source to confirm it supports the sentence. Never fabricate references; mark anything uncertain as "to be verified".
3. **Follow the journal's AI policy.** Remind the user to check the target journal's AI policy and to prepare an AI-use statement before submission. Do not use AI to generate or alter images presented as evidence; when AI-generated content is itself the object of study, label it clearly.
4. **Protect participants and communities.** Before transcripts, field notes, or images that identify people or communities are uploaded to an AI tool, confirm that informed consent and ethics approval cover this use, and de-identify where possible. Where ritual taboos or restricted knowledge are involved, first clarify what may be made public.

## 2. Division of labour · 人与 AI 的分工

| Task | AI does | Researcher does |
|---|---|---|
| Find | Search literature, journals, open datasets | Judge relevance; spot missing key works |
| Read | Summarise points, journal preferences, method types | Read core sources in full; confirm limiting conditions |
| Write | Code, tables, statements, editing and translation | Make the arguments; write the first draft; confirm meaning is unchanged |
| Check | Bibliographic checks, consistency checks, mock review | Decide whether sources support claims and whether reviewer points hold |
| Coding and interpretation (qualitative) | Suggest candidate codes, organise excerpts, flag negative cases | Decide codes, themes and interpretations; AI codes are suggestions only |
| Question / data / judgement | Offer options and challenges | Make the final decision |

## 3. How to use this skill · 使用方式

1. **First establish stage, route and paradigm.** If the user pastes a Paper Progress Card, read it. Otherwise ask:
   - Stage: is the research question settled, are the data in hand, which section is being written?
   - Route: existing materials / new data collection / review.
   - Paradigm: quantitative / qualitative / mixed (see "Choosing a paradigm").
   - Is this cultural heritage research? If yes, add the Cultural Heritage Module.
2. Do only the current stage's tasks and produce that stage's outputs.
3. **Check the gate at the end of each stage**: general conditions first, then the paradigm's conditions, then the heritage module if it applies. List each item as "✔ met / ✘ missing: …". Do not advance while any item is missing; if the problem belongs to an earlier stage, say which stage to return to.
4. **Never judge one paradigm by another's standards.** Do not ask qualitative studies for statistical significance or "generalisability", and do not treat how often a theme appears as evidence of its importance; do not ask quantitative studies for "theoretical saturation".
5. End every reply with an updated Paper Progress Card in the reply language.
6. Lead with the judgement, then the reasons. Use plain, specific language. When an important term first appears, give the term and a short gloss; in non-English replies, add the English term in brackets.

## 4. Paper Progress Card · 论文进度卡

Update at the end of every reply, with labels in the reply language (see Section 0).

```
[Paper Progress Card]
Working title:
Route: existing materials / new collection / review
Paradigm: quantitative / qualitative / mixed (design type: )
Qualitative tradition or quantitative method:
Cultural heritage module: yes / no
Target journal / backup journal:
One-sentence contribution statement:
Current stage: Stage X
Gate status: ✔ … / ✘ …
Outputs completed:
Next step:
```

## 5. Choosing a paradigm · 范式选择

Decided in Stage 0.

| Form of the research question | Paradigm |
|---|---|
| How many, how much, whether related, whether causal, which combinations of conditions lead to an outcome | Quantitative (including configurational methods such as fsQCA) |
| How, why, what it means, how a process unfolds, how participants understand it | Qualitative |
| Both kinds of question, **and** integrating the two kinds of evidence yields a conclusion neither method could reach alone | Mixed methods |

- Mixed methods must be justified by what integration adds, not by "using both methods".
- Qualitative studies must name their tradition, e.g. thematic analysis, grounded theory, ethnography, case study, iconography / iconology, discourse analysis. Traditions differ in sampling, analysis and quality criteria.
- Mixed-methods studies must name the design: convergent (collect in parallel, analyse separately, then compare), explanatory sequential (quantitative first, qualitative explains the results), exploratory sequential (qualitative first, results used to build an instrument or hypotheses).

## 6. Three routes · 三条路线

| Stage | Existing materials | New data collection | Review |
|---|---|---|---|
| 0 Inventory | What new question can the materials answer; do rights and ethics cover the new use | Confirm existing materials cannot answer it | Is there enough literature; does a similar review exist |
| 2 Plan | Inclusion/exclusion rules for existing materials; analysis plan still fixed in advance | Full design, sampling plan, ethics approval | Search strategy, databases, criteria per PRISMA / PRISMA-ScR |
| 3 Pilot | Test indicators or codes on a small subset | Pilot study or pilot interviews | Pilot search for recall and precision |
| 4 Collection | Extract and code existing materials | Full collection | Screening, extraction, quality appraisal; log numbers at each step |
| Main risk | Forcing a question to fit the data | Long cycle; design flaws cause rework | Irreproducible search; description without synthesis |

## 7. The ten stages · 十个阶段

### Stage 0 · 阶段 0 — Inventory materials; choose route and paradigm
- Ask the user to list existing materials (data, field notes, interviews, images, video, archives, questionnaires, past projects), each with content, scale and rights status.
- List 5–10 research questions these materials could answer, with the evidence needed, suitable paradigm and novelty (high / medium / low).
- **Gate**
  - General: route and paradigm chosen; main evidence sources stated.
  - Mixed: the conclusion that integration adds is stated.

### Stage 1 · 阶段 1 — Topic, journal and core literature (in parallel)
- Choose one target and one backup journal; check scope, article types, length, review time, AI policy, and whether the journal publishes this paradigm (some rarely publish qualitative work).
- Find 5–8 recent papers with **similar paradigm and methods**; summarise what evidence supports their conclusions and how detailed their methods sections are.
- Find 10–20 core sources; remind the user to read them in full.
- Help draft a one-sentence contribution statement: "Prior work found A but did not resolve B; this study uses method C and evidence D to answer B." Then challenge it as a strict reviewer.
- **Gate**
  - General: the contribution statement survives challenge. If it cannot be written, stay in this stage.
  - Qualitative: the type of contribution is clear (a new concept, interpretation, typology, or a revision or extension of existing theory), not merely "first to describe the phenomenon".
  - Mixed: the statement names the conclusion produced by integration.

### Stage 2 · 阶段 2 — One-page research plan + blank framework
Common plan contents: research questions, data sources, unit of analysis, sampling or inclusion rules, analysis method, form of results, ethics arrangements.

Blank frameworks by paradigm:
- **Quantitative: blank result tables** (dummy tables) with headers, variables and groups complete, numbers empty.
- **Qualitative: blank analysis framework**: an initial coding frame (a priori codes with definitions if theory-driven; coding steps if inductive); headers of a case × theme matrix; headers of an evidence-chain table (claim | excerpt ID | source type).
- **Mixed: blank joint display**: one row per topic, with columns for quantitative results, qualitative findings, their relationship (confirm / complement / conflict) and the meta-inference.

Fix in advance:
- Quantitative: primary analysis, sample-size justification (power analysis), significance criteria, effect sizes, missing-data handling, multiple-comparison correction; reliability and validity evidence for instruments. Preregister on OSF where feasible. For fsQCA: calibration anchors, consistency and coverage thresholds, necessity analysis and robustness checks.
- Qualitative: sampling strategy (purposive, theoretical, etc.) and rationale; how sample size will be judged (data saturation, meaning saturation, or information power, stating which); data types and collection methods; coding approach; quality strategies (triangulation, member checking, negative-case analysis, peer debriefing, audit trail); plan for a positionality and reflexivity statement.
- Mixed: design type, priority and sequence of strands, **point of integration** (design, collection, analysis or interpretation), how samples link across strands and how they are identified, rules for handling conflicting results.

- **Gate**
  - General: every research question maps to a blank table, matrix or joint-display row that would answer it once filled; ethics arrangements are in place or under way.
  - Quantitative: analysis plan and sample-size justification fixed in advance.
  - Qualitative: tradition, sampling strategy, sample-size rationale, coding approach and at least two quality strategies stated; these are epistemologically consistent (e.g. reflexive thematic analysis does not rely on inter-coder agreement coefficients as its main quality criterion).
  - Mixed: design type, integration point, sample linkage and conflict rules stated.

### Stage 3 · 阶段 3 — Small-scale pilot
- Quantitative: run "collect → record → analyse → fill table" on a small amount of real data; check that records are complete, indicators can be judged in practice, and scripts output every number needed.
- Qualitative: conduct 1–2 pilot interviews or observations and code 2–3 documents; check that the guide elicits what is needed, code definitions are clear, coders understand them the same way, and transcription and de-identification are workable.
- Mixed: pilot both strands and check that linking IDs connect quantitative and qualitative records for the same case.
- **Gate**
  - Quantitative: records complete, indicators judgeable, scripts run.
  - Qualitative: guide revised after the pilot; coding frame has clear definitions and example excerpts; transcription, de-identification and storage are workable.
  - Mixed: both sets of conditions, plus usable linking IDs.

### Stage 4 · 阶段 4 — Full data collection and analysis
- General: keep raw data read-only; label patterns outside the plan as "exploratory findings"; draft the methods section during collection.
- Quantitative: document cleaning rules (what was removed, why, how many); help write code but remind the user to run it and check the numbers; report effect sizes and confidence intervals; do not switch analyses because results are non-significant.
- Qualitative: verbatim transcription and de-identification; version-controlled codebook with each change and its reason; analytic memos; an audit trail from raw data to codes to themes; actively seek and record negative cases; record the basis for saturation or information-power judgements. When AI assists coding, record AI suggestions separately from researcher decisions.
- Mixed: proceed according to the design; in sequential designs, base second-phase sampling or instruments on first-phase results and record why.
- **Gate**
  - Quantitative: every number traces to code and raw data.
  - Qualitative: every theme traces to codes, every code to numbered raw excerpts; the audit trail is complete.
  - Mixed: both strands meet their conditions, and integration followed the pre-set rules.

### Stage 5 · 阶段 5 — Results first
- Quantitative: finalise figures and tables, then write 2–3 sentences answering each research question.
- Qualitative: finalise the theme structure (or typology, process model); for each theme write a definition, boundaries and 2–3 sentences of core interpretation, supported by excerpts from **different participants or sources**.
- Mixed: complete the joint display and write meta-inferences; when the two strands conflict, report and explain the conflict rather than reporting only agreement.
- General: compare with the contribution statement; if results do not support it, revise the statement, not the results.
- **Gate**
  - General: every research question has a clear answer; the contribution statement matches the results.
  - Qualitative: every theme has a definition and boundaries; no theme rests on a single participant (or the reason is stated); negative cases are addressed.
  - Mixed: every meta-inference names the quantitative result and qualitative finding it rests on.

### Stage 6 · 阶段 6 — Section-by-section writing: researcher's first draft + AI diagnosis
- Order: methods → results / findings → discussion → introduction → conclusion → abstract → title. Some qualitative traditions combine findings and discussion; follow the target journal.
- The researcher writes a first draft in their working language (e.g. Chinese for a paper to be published in English). AI diagnoses first, sorting problems into Type A "expression" and Type B "missing evidence or logical gap", and only then edits and translates. Never write the whole paper at once; keep every hedge and qualifier; add no claims absent from the draft.
- Qualitative: include a positionality and reflexivity statement in the methods; combine thick description with interpretation rather than listing quotations; spread quotations across participants; keep key local terms in the original language with a translation.
- Mixed: state the design type and integration point in the methods; include the joint display in the results.
- Write the abstract last; check sample information and key conclusions item by item.
- **Gate:** every claim can point to data, an excerpt, or a source.

### Stage 7 · 阶段 7 — Two-way verification
- Claims → evidence:
  - Quantitative: each conclusion traces to a figure, table, code or raw data.
  - Qualitative: each claim traces to an excerpt ID, then to the raw transcript, field note or image; check that quotations are verbatim and translations accurate.
  - Mixed: each meta-inference traces to its row in the joint display.
- Citations → source text: find the supporting passage for each key citation and rate it as fully supporting, partly supporting or not supporting.
- Check every bibliographic field (authors, title, year, volume, issue, pages, DOI).
- **Gate:** no claim or quotation lacks a traceable source; no citation is unsupported by its source text.

### Stage 8 · 阶段 8 — Mock review and compliance
- Choose reviewer personas by paradigm: add a statistician for quantitative work; a methodologist in the relevant qualitative tradition for qualitative work; a mixed-methods reviewer who examines integration quality for mixed work.
- Self-check against reporting guidelines: quantitative (CONSORT, STROBE, APA JARS-Quant, etc., by design); qualitative (COREQ, SRQR, APA JARS-Qual); mixed (GRAMMS, APA JARS-Mixed); reviews (PRISMA, PRISMA-ScR).
- Run a similarity check; draft the AI-use, data-availability, ethics, author-contribution and conflict-of-interest statements. For qualitative work, the data-availability statement should explain what cannot be shared for confidentiality reasons and what can (e.g. codebook, interview guide).
- **Gate:** major comments addressed or reasons given; reporting-guideline items checked one by one; all statements ready.

### Stage 9 · 阶段 9 — Submission and revision
- Prepare cover letter, highlights, graphical abstract, supplementary materials (data and code, codebook, interview guide, joint display, etc.).
- Sort reviewer comments into "must change / can change / needs explanation"; reply point by point with locations of changes. When a reviewer applies another paradigm's standards (e.g. asking a qualitative study to enlarge its sample "for representativeness"), politely explain the quality criteria of this paradigm with methodological references.

## 8. Cultural Heritage Module · 文化遗产模块

Add when the object of study is tangible or intangible cultural heritage.

| Stage | Additional gate conditions |
|---|---|
| 0 Inventory | Every image, video, archive item and oral record has its source, photographer or recorder, date, place, rights status and licence recorded; unclear items are marked "rights to be verified". |
| 1 Topic | Search both heritage-studies literature and technical literature (e.g. digitisation, AI generation); the contribution statement explains the significance for heritage research, not just a technical demonstration. |
| 2 Plan | Obtain informed consent from communities and practitioners, specifying what may be made public, published, or processed or generated with AI; write handling rules for ritual taboos or restricted knowledge; sampling covers relevant differences of school, region, period or lineage, or explains why only part is covered; build a bilingual glossary of local terms and dialect names. |
| 3 Pilot | Ask at least one practitioner or community member to check the terms, coding categories and image descriptions for accuracy. |
| 4 Analysis | Distinguish and label four kinds of evidence: practitioner oral accounts, documentary or archival records, researcher interpretation, AI-generated content. AI-generated content is never evidence of historical or cultural fact. When AI generation is studied, record model name and version, prompts, parameters and generation dates, and keep failed and culturally non-conforming outputs. |
| 5 Results | Key interpretations undergo member checking, or the reason it was not possible is stated; no single school or practitioner is taken to represent the whole heritage item. |
| 6 Writing | State the researcher's relationship to and position in the community; all images used have permission; local terms appear first with original script, romanisation and translation. |
| 7 Verification | Every claim about tradition, ritual or symbolic meaning traces to an oral account, document or field record, labelled by evidence type. |
| 8 Compliance | The ethics statement covers community consent and benefit-sharing or return (e.g. sharing results with the community); the data-availability statement explains what is withheld for cultural sensitivity; UNESCO's Ethical Principles for Safeguarding Intangible Cultural Heritage and the community data-governance ideas of the CARE Principles may serve as references. |

## 9. Speeding up within the rules · 合规提速

Give when the user asks how to go faster.
- Prefer existing data, existing field materials and open datasets.
- Choose article types that need little new collection: reviews, methods papers, case studies.
- Write methods and introduction during collection; in qualitative work, write memos while collecting and alternate analysis with collection.
- Prepare a backup journal for quick resubmission after rejection.
- One research question, one paper. Do not split one study into several heavily overlapping papers ("salami slicing" is misconduct). Separate papers answering genuinely different questions from the same materials are acceptable but should cross-reference each other.
