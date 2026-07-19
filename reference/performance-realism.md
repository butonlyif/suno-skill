# 真人表演与制作逻辑

真实感不是在提示词里堆 `human, organic, raw`，也不是故意制造跑调、跑拍和底噪。真实感来自一组彼此支持的约束：同一个身体在唱、同一批乐手在听彼此演奏、同一个空间在录音、每次变化都有前因后果。

## 一、六层真实感

### 1. 人物真实

歌词要像某个人在某个时刻对某个对象说话。

- 每段至少包含一个可感知的动作、物件、地点或关系线索。
- 抽象情绪后面补一个证据：不只写“孤独”，写他做了什么才显得孤独。
- 一首歌控制在 1-2 个主意象，后续让它变义，不连续更换月亮、星河、海、风、梦等通用意象。
- 保留一点不完全解释、口语停顿或自我修正，但仍须可唱。
- 删除可以无差别放进任何歌曲的“万能金句”和过度工整的排比。

自检：遮住歌名后，这些歌词是否仍像一个具体的人，而不是“伤感歌曲生成器”？

### 2. 演唱生理真实

先确定主唱的舒适音区和唱法，再安排句子。

- 高密度句后留短句、休止或器乐回应作为换气点。
- 不在长句末尾继续安排超长高音；高音前减少字数和辅音密度。
- 每 2-4 行至少有一次自然呼吸空间，但不要机械地每行都断。
- 一首歌只选一种主要发声身份，如克制胸声、气声中音或轻沙哑中低音。
- 沙哑、气声和破音是有限资源：可以在句首、尾音或高潮少量出现，不要每个字都“粗粝”。
- 装饰音预算默认很低：每个副歌最多 1-2 个明显转音，其他尾音直落；用户明确要 R&B 炫技时再增加。
- ad-lib 只出现在真正需要回应或释放的位置，默认全曲 2-4 处，不要每段都 `(oh/yeah/mmm)`。

可用描述：

```text
The lead stays in a comfortable mid register with natural breath breaks between phrases. Most endings use a simple straight tone, with only one restrained melodic turn near the end of the chorus. The slight rasp appears on stressed words and phrase endings, not continuously.
```

### 3. 时间真实

真人 groove 是稳定脉冲上的关系性微时值，不是随机不齐。

- 固定 BPM、拍号和基本 subdivision。
- 描述谁略靠前、谁略靠后：如鼓稳定，贝斯轻微靠后；不要只写所有乐器 `slightly off`.
- fill 只在段落边界或歌词留白处出现，不要每两小节自动来一次。
- 鼓的力度可有小幅变化，但底鼓与贝斯的核心落点必须持续咬合。
- 需要 swing 时明确轻/中 swing；不需要时不要同时写 `straight, swung, syncopated, loose`.

可用描述：

```text
The live drums hold a steady pocket while the bass sits slightly behind the beat. Small fills appear only at major section transitions; the pulse never rushes and the outro remains unhurried.
```

### 4. 乐队互动真实

每件乐器都应有角色，不是所有乐器从头铺到尾。

- 核心 2-4 件乐器足够；签名乐器只在前奏、句间回答、Solo 或 Outro 出现。
- 人声唱密集内容时，其他旋律乐器减少活动；人声停顿时再做短回应。
- 新乐器进入前可由 fill、持续音、空拍或前一段尾音作铺垫。
- 段落打开时一次增加 1-2 层，不要“一键全进”。
- Solo 应变奏主旋律或钩子的一小部分，像同一首歌的延伸，不是突然换成炫技样片。

可用描述：

```text
The instruments listen and leave space for one another: guitar and signature instrument answer only in the gaps between vocal phrases. New layers enter gradually at section boundaries, and the short solo develops the main hook instead of introducing an unrelated melody.
```

### 5. 编曲因果真实

变化要能被听众预感到或回想起来。

- 每首只设一个主钩子、一个签名音色和一种主要动态逻辑。
- 新素材先预埋再兑现；旧素材在 Outro 或间奏回收。
- Bridge 优先重新解释已有材料，不要同时换流派、速度、主唱和音色。
- “升级”一次只改变 1-2 个维度，如加鼓和轻和声；不要同时更快、更高、更响、更宽。
- 保留相同和弦循环或低音骨架时，可通过配器和声部移动制造变化。

### 6. 制作空间真实

选择一个可信的录音世界并保持连续。

- 只选一个主空间：干燥小房间、温暖录音棚、车库现场、舞台或开阔户外。
- 同一主唱的距离和混响可以渐变，但不能主歌像耳边干声、副歌突然像另一座体育场。
- 年代和制作链保持一致；不要同时要求 70 年代磁带、超现代极亮数字母带和卧室 demo。
- “模拟温暖”选 1-2 个表现即可，如轻微 tape saturation、柔和高频或少量 room bleed。
- 不要默认加入 vinyl crackle、呼吸声、观众声、磁带抖动和底噪；噪声不是人性。
- 给母带留动态：避免持续最大响度、过度压缩和每段都 wall of sound。

可用描述：

```text
Keep the whole performance in one warm, dry studio room with subtle natural bleed and consistent vocal distance. Use gentle tape saturation and preserved dynamics, without constant noise, exaggerated lo-fi artifacts, or brick-wall limiting.
```

## 二、受控不完美

一首歌最多选择 1-2 项，且必须与流派有关：

- 鼓与贝斯形成轻微 laid-back pocket。
- 原声吉他偶有轻微擦弦。
- 群唱并非样本级完全齐整。
- 尾音有少量呼吸或轻微沙哑。
- 现场房间有极轻的自然 bleed。

不要同时要求 pitch wobble、timing errors、voice cracks、tape wow、vinyl noise 和 loose ensemble。那会生成“刻意仿旧的 AI”，不是真人。

## 三、提示词优先级

风格框按以下顺序压缩，优先写正向约束：

1. 流派、年代、情绪。
2. 主唱身份与舒适音域。
3. BPM、拍号、groove 关系。
4. 核心乐器、签名音色及互动方式。
5. 动态逻辑与旋律钩子。
6. 统一空间和制作方式。
7. 最多 2-4 个关键排除项。

保留 5-8 个核心声学锚点。形容词互相冲突时删掉，而不是继续加解释。否定句过多也会稀释主方向。

## 四、元标签节制

- 结构标签保留 `[Verse] [Chorus] [Bridge] [Solo] [Outro]`。
- 每段附加描述最多 1-2 个变化，如 `[Chorus - fuller drums, restrained harmony]`。
- BPM、主唱、流派、空间等全局身份只在风格框写一次，不在每段重复。
- 不使用一串 `[Mood] [Energy] [Vocal] [Instrument] [Tempo]` 重新定义每段。

## 五、生成后的听感筛选

提示词只能提高概率，最终要靠听感筛选。每次比较多个版本时按顺序判断：

1. 第一遍听，主唱是否从头到尾像同一个人？
2. 不看波形，脚是否能自然跟完整首，后半段有没有赶？
3. 歌手是否有合理换气，句尾是否频繁出现相同的 AI 转音？
4. 乐器是否会在人声间隙回答，还是一直无差别铺满？
5. Bridge 和终副歌是否仍属于同一首歌？
6. 是否有一处可记住的钩子，而不是处处都在抢注意力？
7. 歌词是否能指出具体人物和情境，还是只有抽象情绪？

优先保留前五项稳定的版本，再比较音质和“惊艳程度”。找到可信主体后，用同一 Persona 和已有音频扩展，不从零重抽整首。

## 六、交付前真实感检查

- [ ] 歌词有人、对象、动作或场景证据，而非抽象词堆叠。
- [ ] 换气点、音域、沙哑程度和装饰音符合一个真实身体。
- [ ] 微时值描述是乐手之间的关系，不是随机不齐。
- [ ] 每件乐器有角色，会进入、回答和退出。
- [ ] 新层次逐步加入，没有无缘由“一键全进”。
- [ ] Bridge、Solo 和终副歌发展已有材料。
- [ ] 全曲保持同一录音空间、年代和制作逻辑。
- [ ] 只使用 1-2 项受控不完美，没有堆噪声。
- [ ] 风格框没有相互矛盾或过量否定。
- [ ] 段前标签没有重新定义整首歌。

## 七、旁白替代方案

纯旁白是高风险生成目标。使用以下优先级:

### A. Melodic rap

最稳。保留 Rap 的节奏、押韵和 cadence,但让人声始终带轻微可辨音高。

```text
Use a melodic rap delivery with a narrow two-to-four-note pitch range, clear rhythmic cadence, natural breath breaks, and a gentle sung landing at the end of each phrase. Keep the beat and bass present underneath; avoid dry unpitched narration.
```

### B. Talk-singing

适合叙事、内心独白和主歌。像说话,但关键词落在固定音高上:

```text
Use intimate talk-singing rather than spoken narration: conversational phrasing over a steady pulse, a narrow comfortable register, lightly pitched key words, and simple sung phrase endings.
```

不要同时写 `whispered, spoken, breathy, free-time, a cappella`;这会去掉全部稳定锚点。

### C. Rhythmic chant / call-and-response

适合短口号、重复念头或戏剧性插句。保持 3-7 个音节,由鼓点或另一声部回应。不要超过 2-4 小节。

### D. 真人旁白

如果作品确实需要没有旋律的自然讲话:

1. 用手机或麦克风录制真人旁白,保持干净、安静的房间。
2. 保留轻微自然呼吸,但剪掉明显口水音和过长停顿。
3. 将旁白作为音频输入、独立 stem 或后期音轨合入。
4. 音乐在旁白下保持简洁稳定,不要让模型重新生成这段讲话。

真实讲话是“表演素材”,不应强迫歌曲模型伪装成语音演员。
