# 全曲一致性控制

Suno 的生成是概率性的,文字提示不能百分之百锁定整首歌。目标是减少模型在段落边界重新解释歌曲的机会。先定义全曲不变量,再设计动态。

## 一、先写“歌曲身份卡”

每首歌在风格框中用自然语言锁定以下内容:

1. **主唱身份**:始终是同一位歌手;性别、年龄感、口音、咬字和唱法不变。
2. **声线颗粒**:只选一组不矛盾的特征,如 `warm, slightly raspy, dry, restrained`;不要同时写 `gravelly`、`crystalline`、`soaring` 等互相拉扯的词。
3. **合理音域**:写 tessitura/舒适音区,如 `low-to-mid baritone`,并要求副歌靠力度而非极端高音抬升。
4. **节奏身份**:给明确 BPM、拍号和 groove;整首保持不变。
5. **声音世界**:固定核心乐队、签名乐器、房间感和制作质感。

可直接织入风格框的英文块:

```text
Keep one clearly identifiable lead singer throughout, with the same vocal timbre, rasp, accent, phrasing, and low-to-mid register in every section. The chorus may become more intense, but the singer must not turn brighter, cleaner, younger, or unnaturally higher. Maintain the same key center, tempo, 4/4 meter, and laid-back groove from beginning to end. Build dynamics only through arrangement density, harmony layers, and performance intensity; no tempo drift, double-time ending, abrupt genre switch, or rushed final section.
```

按歌曲实际情况替换 `low-to-mid register`、`4/4` 和 `laid-back groove`,不要机械照抄。

## 二、变化预算

默认每个段落只改变 1-2 个维度:

- 可安全变化:配器密度、伴唱层数、混响深浅、音量、演唱力度、点睛乐器是否出现。
- 高风险变化:升 Key、换 BPM、换拍号、double-time/half-time、换流派、换主唱、从胸声突然转持续高音或假声。

需要“主歌收、副歌放”时,写:

```text
The verses stay sparse and close; the choruses grow wider through fuller drums, guitars, and restrained backing harmonies, while the lead singer, key, tempo, meter, and groove remain unchanged.
```

不要把 `soaring`, `explosive`, `everything crashes in`, `biggest ever` 当默认高潮词。这些词容易触发音域、速度和制作风格同时漂移。

## 三、防止后半段赶拍

1. 明确写固定 BPM 与 `no tempo drift, no double-time ending, no rushed outro`。
2. 让同一旋律反复时的歌词行数、句长和重音位置接近;终副歌不要突然塞入更多字。
3. 歌词过长时优先删减,不要要求模型在固定时长里完成过多段落。
4. Outro 保持 2-4 行或纯器乐回收主题,不要在结尾加入一段高密度新歌词。
5. 长歌优先分段扩展:先生成稳定主体,再从自然小节边界扩展,并复用同一 Persona/音色角色和原音频上下文。

## 四、元标签要少而一致

段前标签只写本段真正需要改变的内容。不要每段重新描述主唱、BPM、流派和情绪,否则模型可能把它理解为重新开一首歌。

推荐:

```text
[Verse 1 - sparse arrangement]
[Chorus - fuller band, same vocal register]
[Bridge - instruments drop back, same tempo and groove]
[Final Chorus - fuller arrangement, same singer, key and tempo]
[Outro - instrumental motif, unhurried fade]
```

避免:

```text
[Verse - low smoky vocal]
[Chorus - soaring bright vocal]
[Bridge - half-time cinematic]
[Final Chorus - key change, double-time, explosive]
```

## 五、生成与迭代顺序

1. 先生成较短、结构简单的版本,确认主唱和 groove。
2. 找到满意声音后保存并复用 Persona/音色角色;续写时优先使用已有音频上下文。
3. 若只有后半段失控,不要同时改歌词、风格、速度和声线。一次只修一个变量。
4. 若多次仍换嗓,缩短提示词中的人声形容词,保留 3-5 个最关键且不冲突的特征。
5. 整首音域不合适时整体移调;不要用终副歌转调补救。

## 六、一致性自检

- [ ] 是否明确同一位主唱贯穿全曲?
- [ ] 音色形容词是否彼此兼容,沙砾感和气声程度是否固定?
- [ ] 是否写了舒适音域,并禁止副歌突然变成另一种高音唱法?
- [ ] BPM、拍号、key center 和 groove 是否固定?
- [ ] 动态是否主要由配器和力度变化,而不是换速度、换调或换声线?
- [ ] 终副歌字数是否没有明显增加?
- [ ] 是否禁止 tempo drift、double-time ending 和 rushed outro?
