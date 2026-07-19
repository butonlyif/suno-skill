# 在 Trae 里安装与使用本 skill

Trae 支持 Agent Skills 标准,本 skill 直接可用。分两件事:**装上** + **使用(写歌 / 调 API 出歌)**。

---

## ① 安装(二选一)

**方法 A — 放进项目目录(推荐)**
把整个 `suno` 文件夹放到 Trae 项目根目录:
```
你的项目/.trae/skills/suno/SKILL.md
```
(即 `.trae/skills/suno/` 下有 SKILL.md、reference/、templates/、scripts/)。Trae 自动扫描。
想所有项目通用 → 放全局技能目录或 `.agents/skills/suno/`(同名时 `.trae/skills/` 优先)。

**方法 B — zip 导入**
Trae 右上角 **⚙️ 设置 → 规则和技能(Skills)→ 导入** → 选 `suno.zip`。

---

## ② 确认生效
1. 切到 **SOLO Coder 模式**(普通对话部分版本不触发 Skill)。
2. 设置的 Skills 面板里能看到 "suno"。
3. 测触发:说"帮我写一首关于想念的歌,民谣,男声"。没自动触发就用 `#suno` 或面板手动选。

---

## ③ 写歌
直接聊:
> 写一首关于〔主题〕的歌,〔流派/混搭〕,〔中文/中英混〕,〔男声/女声〕,感觉像〔树下/小酒馆/演唱会…〕

得到:界面设置 + 风格框(含排除项)/ 滑杆 + 完整歌词(带 `〔…〕` 可换空位)。**拿去贴 suno.cn 网页版生成即可。**

怎么贴(哪个框填什么、滑杆怎么拉、人声按钮)见 `USAGE.md` 第四节;怎么填 `〔…〕` 见 `USAGE.md` 第三节。
