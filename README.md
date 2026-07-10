# WeChat Channels Dynamic Template Skill

这是一个给视频号知识类内容用的动态模板 skill。

它不解决“怎么把一张海报放进视频里”，它解决的是：

`怎么把强文字、强信息密度内容，改造成有推进感的视频号动态脚本。`

## 它适合什么

- 公众号内容改视频号
- skill 推荐
- 工具发现
- GitHub 项目解读
- 趋势判断
- 概念解释

## 它不做什么

- 不做整页海报轮播
- 不默认依赖口播、字幕、BGM、CTA
- 不把“动态”理解成全屏炫技转场

## 核心骨架

所有模板都围绕同一套三层结构：

1. 顶部结论固定
2. 中部证据窗推进
3. 底部解释承接

变化主要发生在中部，观看节奏来自“证据不断推进”，不是“整页不断翻”。

## 内置 3 种模式

- `list-build`
  - 用于清单、合集、推荐列表
- `hook-proof-switch`
  - 用于单个工具、单个 skill、单个项目
- `concept-diagram-switch`
  - 用于机制、系统、概念、框架解释

## 目录结构

```text
wechat-channels-dynamic-template-skill/
├── SKILL.md
├── README.md
├── references/
│   ├── asset-and-image-brief.md
│   ├── layout-and-motion.md
│   └── reference-patterns.md
├── templates/
│   ├── output-checklist.md
│   ├── storyboard-template.json
│   └── video-script-template.md
└── examples/
    ├── concept-diagram-switch-example.md
    ├── hook-proof-switch-example.md
    └── list-build-example.md
```

## 安装方式

如果你想把它当成 Codex skill 使用，把整个文件夹放到你的 skills 目录，例如：

```powershell
Copy-Item -Recurse D:\GPTgzh-7799\wechat-channels-dynamic-template-skill C:\Users\Lenovo\.codex\skills\wechat-channels-dynamic-template
```

如果你只是想上传到 GitHub 仓库，也可以直接把这个目录作为一个独立 skill repo。

## 推送到 GitHub

仓库内附带了一个安全推送脚本：

- `push_to_github.ps1`

使用方式：

```powershell
$env:GITHUB_TOKEN="你的临时 token"
powershell -ExecutionPolicy Bypass -File D:\GPTgzh-7799\wechat-channels-dynamic-template-skill\push_to_github.ps1 -RepoUrl https://github.com/<用户名>/<仓库名>.git
```

说明：

- token 不会写入仓库文件
- token 只通过当前终端会话环境变量读取
- 推送完成后你可以执行 `Remove-Item Env:GITHUB_TOKEN`

## 推荐使用方式

1. 先判断内容属于哪一种模式。
2. 先写脚本和镜头结构，不先做图。
3. 把素材拆成 `headline-base` 和 `proof-01/02/03`。
4. 最后再把脚本映射到 HyperFrames、Remotion 或剪映链路。

## 推荐提示词

```text
请使用 wechat-channels-dynamic-template skill。
把下面这篇公众号内容改造成一个 6 秒视频号动态脚本。
不要口播，不要字幕，不要 BGM。
顶部保留一句主判断，中部做 3 次证据推进，底部放一句价值解释。
先给我：
1. 视频号脚本
2. 镜头结构
3. 素材清单
4. 生图或改图指令
```

## 方法来源

这个 skill 不是凭空写的，而是从 3 条视频号参考视频抽出来的共性骨架：

- 不是纯静态图展示
- 第一屏先立判断
- 中部用切换、流式构建或图窗推进证明
- 底部做稳定解释

如果你要继续扩展，可以在 `examples/` 里继续增加更多行业模板。
