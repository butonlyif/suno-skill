# 元标签(Suno 标准格式)

元标签 = 歌词框里的**英文方括号**指令,指导结构与局部表现。**它们不会被唱出来**(圆括号才会被唱)。

> suno.cn 歌词框右上有 **段落标签** 内置选择器,可点选常用标签;但下面这些手写格式同样可用,且段落级风格/`类别:值` 等高级写法靠手写。

## 结构标签(骨架)

放在每段歌词**前面**,独占一行:

```
[Intro]
[Verse 1]
[Pre-Chorus]
[Chorus]
[Verse 2]
[Pre-Chorus]
[Chorus]
[Bridge]
[Guitar Solo]      ← 用户偏好 Solo;短歌可缩成 4 小节或并入 instrumental bridge
[Chorus]           ← 倾向三段副歌
[Outro]
```

- `[Intro]` 不太可靠;想要纯前奏,有时在风格框写 `short instrumental intro` 更稳。
- 用户通常偏好 `[Bridge]` 和 Solo,但不要机械拉长。短歌可写 4 小节微型 Bridge,或合并为 `[Instrumental Bridge - develops the main hook]`。Solo 按流派写:`[Guitar Solo] / [Electric Guitar Solo] / [Sax Solo] / [Piano Solo]`。
- 倾向**三段副歌**:Chorus 出现三次。末次优先用加和声、加配器或加力度做高潮;默认保持原 Key、BPM、拍号和主唱音色。

## `类别:值` 格式(V4.5+)

更精确的内联控制,放在段前:

```
[Mood: nostalgic]
[Energy: medium]
[Energy: medium→high]     ← 箭头表渐强
[Tempo: 95 BPM]
[Instrument: harmonica]
[Vocal: breathy male]
```

## 局部表现标签(歌词框,管"这一段")

- 渐强/铺垫:`[Build-up]` `[Energy: low→high]`
- 情绪:`[Mood: tender]`
- 人声切换(只在某段):把 `[Female Vocal]` 放那段前
- 高潮副歌:`[Chorus - big, layered harmonies]`
- 收尾渐弱:`[Outro - fade out, sparse]`

## 位置即语义

- 标签放**整首开头** = 全局信号;放**某段前** = 局部信号(覆盖全局)。
- **前 20-30 词权重最高**:最重要的方向放最前面。

## ad-lib(会被唱)

圆括号 `()` 内的内容**会被当人声唱/和**,用于语气词、和声、应答:

```
副歌最后一句
(噢——)            ← 拉升情绪的语气词,符合用户偏好
(就这样吧)         ← 应答式和声
```

> 注意:正因为圆括号会被唱,**咬字标注绝不能用圆括号内联**(详见 lyrics-craft 的双版本法)。

## 禁用

- **不要用 `[Spoken]` / `[Spoken Word]` / `[Narration]`**——干声旁白最容易暴露合成感。
- 要“像说话但仍可信”,用 `[Melodic Rap Verse]`、`[Talk-Singing - narrow pitch range, steady rhythm]` 或 `[Rhythmic Chant]`,并让伴奏保持清楚的 pulse。
- 真正必须是自然口语时,不要让音乐模型代说;录制真人旁白后作为音频素材合入。

## 完整骨架(可直接套)

```
[Intro]

[Verse 1]
（4-8 行,行内字数错落）

[Pre-Chorus]
（2-4 行,起势）

[Chorus]
（平实有质感,不发散;末行 + 语气词）

[Verse 2]
（与 Verse 1 段间对仗：第N行字数≈Verse1第N行）

[Pre-Chorus]

[Chorus]

[Bridge]
（情绪/视角转折,可留白）

[Guitar Solo]

[Chorus]
（第三次,保持原 Key 与速度,可加和声/配器/力度做高潮）
(语气词拉升)

[Outro]
```
