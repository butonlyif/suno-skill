# 洗脑旋律钩子设计

目标不是把副歌做得更响,而是创造一个听一两遍就能哼、离开后还会自动回放的短旋律单元。Suno 不能被文字精确指定音符,因此要通过短歌词、重复结构、段落位置和提示词共同提高出现概率。

## 一、钩子公式

默认使用:

```text
1-2 小节短动机 + 清楚的节奏轮廓 + A/A/A' 重复 + 一个小悬念 + 固定回归位置
```

- **短**:约 3-7 个音节,最好一口唱完。
- **窄**:以小范围级进或一次醒目的小跳为主,不要连续大跳和炫技高音。
- **重复**:完整重复 2 次,第 3 次只改变最后一个落点、尾音或 1-2 个字。
- **留痒点**:可用弱起、切分、半拍停顿或略晚落地制造期待;保持原 BPM 和 groove。
- **能回家**:每次回到相同节奏与音域中心,让听众迅速认出它。

## 二、三个常用钩子形态

### 1. 口语回环型

一句像口头禅的短句反复出现,最适合中文流行、民谣、R&B。

```text
就是这样——
就是这样——
还是这样——
```

重点是断句和尾韵相同,第三次只换一个词。

### 2. 问答型

前半句制造悬念,后半句固定回答。可由主唱自己完成,不必换歌手。

```text
你听见吗
我还在啊
你听见吗
我还在啊
```

### 3. 无词音节型

使用少量易唱音节作为旋律载体,适合 Post-Chorus 或 Intro motif:

```text
oh-oh / na-na / woo-oh / 嗯—啊
```

只选一组,控制在 2-4 小节。不要堆成长段,否则容易廉价或像模板舞曲。

## 三、预埋、兑现、回收

让同一个动机出现 3-4 次,但不要每段都出现:

1. **Intro 预埋**:由签名乐器演奏 1 次,先不给完整歌词。
2. **Chorus 兑现**:主唱用核心短句唱出完整动机。
3. **Post-Chorus 加深**:同一动机再唱 1-2 次,可以用轻和声回应。
4. **Outro 回收**:签名乐器或轻声主唱复现,不加速、不塞新歌词。

推荐标签:

```text
[Intro - signature instrument previews the 2-bar hook]
[Chorus - memorable 2-bar vocal hook, repeated A/A/A']
[Post-Chorus - same hook motif, restrained response harmony]
[Outro - instrumental reprise of the same hook, unhurried]
```

不要每段发明新 hook。一首歌优先只有一个主钩子,最多另加一个很短的辅助节奏口令。

## 四、英文风格框写法

把下段自然织入风格描述:

```text
Center the song on one instantly hummable two-bar melodic hook with a clear rhythmic shape and a narrow, natural vocal range. Preview the motif instrumentally in the intro, reveal it in the chorus, and reprise the exact same contour in the post-chorus and outro. Use A/A/A' repetition: repeat it twice, then make only a tiny change to the final note or cadence. Keep it playful, slightly syncopated, and teasing rather than grand or virtuosic. Preserve the same singer, key center, tempo, meter, groove, and vocal timbre throughout.
```

按风格替换 `playful, slightly syncopated`:

- 民谣:`plain, warm, and singable`
- R&B:`laid-back, pocketed, and slightly behind the beat`
- 朋克:`punchy, chantable, and rhythmically direct`
- 放克:`syncopated, percussive, and locked to the bass groove`
- 忧郁流行:`wistful, unresolved for a moment, then gently resolving`

## 五、让中文更容易形成旋律

- 把重要字放在固定重拍,每次重复不要挪动。
- 尾字尽量使用可延长的韵母,例如“啊、爱、开、走、风、梦、光”;仍以语义自然为先。
- 避免核心 hook 中出现过多生僻字、多音字和连续拗口辅音。
- 每次重复保持相同字数。若第三次变奏,只替换末尾 1-2 个字。
- 标点用于提示呼吸和停顿,不要写过多复杂标签。

## 六、与一致性的关系

钩子应成为全曲的稳定锚点,而不是触发换歌:

- 不为钩子突然升 Key、加速或切 double-time。
- 不要求主唱在钩子处变成更年轻、更清亮或超出舒适音域的声音。
- 副歌的兴奋感来自重复预期、节奏切分、配器打开和轻和声,不是持续拔高音。
- 第三次副歌仍用同一旋律轮廓;可加和声,但主旋律不重写。

## 七、交付时必须给出的“钩子卡”

创作完整歌曲时,在成品前简短列出:

```text
钩子短句:
节奏感觉:
重复方式:A / A / A'
首次预埋:
完整出现:
回收位置:
```

如果无法提供实际音符,不要假装精确控制旋律。说明这是用于提高生成概率的结构设计,并建议一次生成多个版本,优先挑“第一次听完就能复述”的版本继续扩展。

## 八、自检

- [ ] 钩子是否一口能唱完,听后能复述?
- [ ] 是否只有一个主钩子?
- [ ] 是否重复两次后只做一次小变奏?
- [ ] 歌词字数、断句、重音和韵脚是否稳定?
- [ ] Intro 是否预埋,Chorus 是否兑现,Outro 是否回收?
- [ ] 钩子是否保持同一主唱、音域、Key、BPM 和 groove?
- [ ] 是否避免用“更高、更快、更炸”代替真正的记忆点?
