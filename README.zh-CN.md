# ai-paper-workflow

**一个用 AI 辅助完成科研论文的 Agent Skill：十个阶段，每个阶段设闸门；量化、质性、混合研究分别适用，并带可选的文化遗产研究模块。只有一个中英双语 skill 文件，用什么语言提问，就用什么语言回答。**

[English](README.md) · [中文案例](examples/case-study.zh-CN.md) · [English case study](examples/case-study.md)

适用于所有支持开放 [Agent Skills](https://agentskills.io) 格式（`SKILL.md`）的工具，包括 Claude、Claude Code、OpenAI Codex、Hermes Agent 和 WorkBuddy。

---

## 为什么做这个 skill

很多“用 AI 写论文”的方法都从写作入手。但写作通常不是最耗时的环节。真正慢的是数据采集、设计缺陷发现得太晚导致的返工，以及审稿周期。而 AI 带来的最严重的问题，比如编造数据、编造文献、引用的文献并没有说论文声称的那件事，也不是把文字写得更好就能解决的。

这个 skill 的思路是：

- **AI 负责加快“找、读、写、查”；“问题、数据、判断”由研究者负责。**
- 把论文工作分为 **10 个阶段**，每个阶段结束时设一道**闸门**，也就是几条可以检查的条件。条件不满足，AI 助手就不往下推进。
- 闸门按研究范式区分：不用统计标准评判质性研究，也不要求量化研究提供“饱和”。

## 功能

| 功能 | 说明 |
|---|---|
| 10 个闸门阶段 | 盘点材料 → 选题与选刊 → 研究方案与空白框架 → 试跑 → 采集与分析 → 结果先行 → 分节写作 → 双向反查 → 模拟审稿 → 投稿与回修 |
| 三种范式 | **量化**、**质性**、**混合研究**分别有各自的闸门条件 |
| 三条路线 | 已有材料 / 新采集数据 / 文献综述 |
| 空白框架 | 采集数据**之前**先搭好：量化用空白结果表，质性用空白编码框架和矩阵，混合研究用空白联合展示表 |
| 双向反查 | 结论 → 证据（图表、代码、原始摘录）；引用 → 原文段落。不只核对 DOI |
| 文化遗产模块 | 追加检查素材权利、社区同意、不宜公开的知识、证据类型标注、AI 生成内容、成员核验 |
| 论文进度卡 | 每次回复末尾输出一张进度卡；贴到新对话里就能接着做 |
| 四条红线 | 证据必须真实；引用核实到原文；遵守期刊 AI 政策；保护参与者和社区 |
| 双语、可扩展 | 一个 `SKILL.md` 同时包含中英文；按用户语言回复；增加新语言只需在术语表加一列 |
| 独立可用 | 不依赖任何其他 skill 或工具 |

## 仓库结构

```
ai-paper-workflow/
├── README.md                     英文介绍
├── README.zh-CN.md               中文介绍（本文件）
├── LICENSE                       MIT 许可证
├── CHANGELOG.md                  版本记录
├── skills/
│   └── ai-paper-workflow/
│       └── SKILL.md              skill 本体（单一文件，中英双语）
├── examples/
│   ├── case-study.md             英文案例
│   └── case-study.zh-CN.md       中文案例
├── scripts/
│   ├── install.sh                macOS / Linux 安装脚本
│   └── install.ps1               Windows 安装脚本
└── dist/
    └── ai-paper-workflow.zip     可直接上传到 Claude 的安装包
```

## 安装

### 方法一：一键安装脚本（Claude Code、Codex、Hermes Agent、WorkBuddy）

下载或克隆本仓库后运行：

```bash
git clone https://github.com/BIN-BIN-BIN-BIN/ai-paper-workflow.git
cd ai-paper-workflow

# macOS / Linux：自动为电脑上已安装的所有支持的智能体安装
bash scripts/install.sh

# 或指定一个：claude | codex | hermes | workbuddy | all
bash scripts/install.sh codex
```

```powershell
# Windows（PowerShell）
.\scripts\install.ps1
.\scripts\install.ps1 hermes
```

安装后重启智能体，或开一个新会话。

### 方法二：手动安装

把 `skills/ai-paper-workflow/` 这个文件夹（文件夹本身，里面是 `SKILL.md`）复制到对应工具的 skills 目录：

| 工具 | skills 目录 | 说明 |
|---|---|---|
| **Claude**（网页版、桌面版） | 从[最新 Release](https://github.com/BIN-BIN-BIN-BIN/ai-paper-workflow/releases/latest) 下载 `ai-paper-workflow.zip` 上传（`dist/` 里也有） | Customize → Skills → **+** → Create skill → Upload。zip 顶层必须是 `ai-paper-workflow/` 文件夹。 |
| **Claude Code** | `~/.claude/skills/`（所有项目）或 `.claude/skills/`（单个项目） | |
| **OpenAI Codex**（CLI、IDE 插件、桌面应用） | `~/.agents/skills/`（用户级）或仓库内的 `.agents/skills/` | 用 `$ai-paper-workflow` 或 `/skills` 调用。看不到时重启 Codex。 |
| **Hermes Agent** | `~/.hermes/skills/`（或 `$HERMES_HOME/skills/`） | 也可以运行：`hermes skills install https://raw.githubusercontent.com/BIN-BIN-BIN-BIN/ai-paper-workflow/main/skills/ai-paper-workflow/SKILL.md` |
| **WorkBuddy** | `~/.workbuddy/skills/` | 如果列表中看不到，可以在 WorkBuddy 的技能设置里导入文件夹，或者把本仓库链接发给 WorkBuddy，让它帮你安装。 |
| 其他支持 Agent Skills 的工具 | 见各工具文档 | 本 skill 只使用标准字段 `name`、`description`、`license`、`metadata`。 |

各工具的菜单名称和目录位置可能随版本调整，如果步骤不一致，请以该工具的最新文档为准。

## 使用方法

点名调用最可靠：

> 用 ai-paper-workflow。我的研究是质性研究（访谈 + 田野笔记），属于文化遗产研究，已有材料，现在在阶段 2。

> 用 ai-paper-workflow 检查阶段 4 的闸门。这是我的审计轨迹和主题表：……

> Use ai-paper-workflow. My study is mixed methods (survey + interviews). I'm at Stage 1.

AI 助手会：

1. 判断你的**阶段、路线和范式**，以及是否适用文化遗产模块。
2. 只做当前阶段的工作。
3. 逐项检查闸门（✔ / ✘）。
4. 在回复末尾用你的语言输出**论文进度卡**。请保存下来，下次贴进新对话。

### 使用建议

- **一篇论文一个项目空间。** 把研究方案、空白框架和各节草稿放在一起，新会话也能读到。
- **把它当守门员用。** 它最大的价值在每个阶段结束时的闸门检查，而不是替你写内容。
- **初稿自己写。** 阶段 6 由你写初稿，AI 先区分“表达不顺”和“缺证据”两类问题，再润色或翻译。

## 语言支持

- skill 只有**一个文件**：英文写主体说明，章节标题、核心规则和术语对照表同时给出中文。
- skill 要求 AI **用用户提问的语言回答**：英文提问得到英文回答，中文提问得到中文回答，论文进度卡也会跟着切换语言。
- `description` 同时包含中英文关键词，用任一种语言提请求都能触发。
- **增加新语言：** 在 `SKILL.md` 第 0 节的术语对照表里增加一列（如 `ja`、`th`、`es`）即可，其他部分不用改。表里没有的语言也能用，AI 会自动翻译标签。

## 案例

完整案例见 [examples/case-study.zh-CN.md](examples/case-study.zh-CN.md)。下面是一个质性文化遗产研究在阶段 2 的闸门检查节选：

```
质性
✔ 研究传统：反身性主题分析
✔ 抽样：目的抽样（19 位在册艺人中的 16 位）
✔ 样本规模依据：信息力
✘ 研究者立场说明还没写

文化遗产模块
✘ 知情同意覆盖了发表，但没有覆盖把访谈稿上传到 AI 工具
✘ 老艺人要求不拍摄的仪式材料，还没有处理规则

还不能进入阶段 3。
```

## 局限

- **不记得你的项目。** 跨会话的连续性要靠论文进度卡和放在一起的项目文件。
- **没有期刊数据库。** 期刊范围、格式要求、AI 政策需要每次现查。
- **不能代替方法训练和伦理审查。** 闸门能提醒你该问的问题，但不能证明研究本身合理、合乎伦理。
- **报告规范会更新。** 请查阅 CONSORT、STROBE、COREQ、SRQR、GRAMMS、PRISMA 等规范的最新版本。
- AI 的输出可能出错。每道闸门都默认研究者亲自核对证据。

## 参与贡献

欢迎提交 Issue 和 Pull Request，尤其是：

- 其他质性研究传统或量化研究设计的闸门条件；
- 其他领域模块（如教育、公共卫生、数字人文）；
- 术语对照表的新语言列。

任何贡献都请保留四条红线。

## 许可证

采用 [MIT 许可证](LICENSE)。

## 声明

这是一个独立的社区 skill，与 Anthropic、OpenAI、Nous Research、腾讯均无隶属或背书关系。文中提到的产品名称为各自所有者的商标。
