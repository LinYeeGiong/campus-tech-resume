# XMU Resume Template

厦门大学风格的单页 A4 中文简历 LaTeX 模板，特色是 **TikZ 绘制的蓝色梯形栏目标题**，以及适合技术岗的「公司 → 项目 → 技术要点」二级排版。

![模板预览](preview.png)

[查看示例 PDF](preview.pdf)

## 特性

- 单页 A4，适合校招、实习和社招技术岗
- 使用 XeLaTeX + `ctex`，中文字体开箱即用
- 教育、实习、科研、技能、荣誉均有现成结构
- 实习项目支持角色标签和二级要点，避免长段落堆叠
- 可选学校 / 公司 Logo，默认不包含任何机构标识
- 不含个人姓名、联系方式或真实经历

## 快速开始

### Overleaf

1. 新建 Overleaf 项目并上传本目录文件。
2. 在 `Menu` → `Compiler` 中选择 **XeLaTeX**。
3. 将 `main.tex` 设为 `Main document`，点击 `Recompile`。

### 本地编译

需要完整的 TeX Live 或 MacTeX 环境：

```bash
make
```

也可以直接运行：

```bash
xelatex main.tex
xelatex main.tex
```

## 修改入口

所有内容都在 `main.tex` 中，按出现顺序替换以下占位内容：

- `你的姓名`、邮箱、电话、目标岗位
- 教育背景、实习经历、科研经历、技术能力、个人荣誉
- `XX`、`某某`、`XX\%` 等示例数据

### 可选 Logo

把图片放到模板目录，然后取消文档开头的注释：

```latex
\resumeLogo{logo.png}
```

建议使用透明背景 PNG，宽度约为 3.75 cm。

### 主题颜色

修改：

```latex
\definecolor{MyDarkBlue}{RGB}{0,50,100}
```

例如学术深红可改为 `{139,0,0}`，纯黑可改为 `{0,0,0}`。

## 常用命令

| 命令 | 用途 |
| --- | --- |
| `\resumeEducationHeading{学校}{时间}{专业/学位}{城市}` | 教育背景 |
| `\resumeResearchHeading{机构/课题}{时间}` | 公司、科研或项目主标题 |
| `\resumeInternshipProjectHeading{项目名}{角色}` | 实习中的项目标题 |
| `\resumeInternshipItemListStart` / `End` | 项目下的二级要点 |
| `\resumeItem{...}` | 单个要点 |
| `\resumeProjectHeading{内容}{时间}` | 荣誉、奖项等单行条目 |

## 排版说明

栏目标题使用四个中文字符校准了蓝色梯形与横线的连接位置。如果改成英文或不同字数的标题，需要同步调整 `\titleformat{\section}` 中的 `xshift=-68.30pt`。

内容不足一页时，可以适当增加 `\titlespacing` 的上下间距；内容超出一页时，优先精简经历描述，而不是继续压缩字号。

## License

MIT License。模板基于 [RenxuLogan/Modern-Resume](https://github.com/RenxuLogan/Modern-Resume)，请保留 `LICENSE` 中的原作者版权声明。详细改动见 [NOTICE.md](NOTICE.md)。
