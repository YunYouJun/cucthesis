# CucThesis

[![Build](https://github.com/YunYouJun/cucthesis/actions/workflows/build.yml/badge.svg)](https://github.com/YunYouJun/cucthesis/actions/workflows/build.yml)
[![GitHub package.json version](https://img.shields.io/github/package-json/v/YunYouJun/cucthesis)](https://github.com/YunYouJun/cucthesis)

<!-- [![Since ThuThesis Version](https://img.shields.io/badge/ThuThesis-v7.2.3-blue)](https://github.com/tuna/thuthesis/releases/v7.2.3) -->

> CucThesis 是 Communication University of China LaTeX Template 的缩写。

本模版基于 [ThuThesis v7.2.3](https://github.com/tuna/thuthesis) 修改。

旨在用于编写中国传媒大学「硕士学位」论文。（适用于 2021-11-23「自然科学」版规则，文科专业未知。）

- 在线预览：[main.pdf](https://yunyoujun.github.io/cucthesis/)
- 使用说明：[README.md](docs/README.md)
- 常见问题：[FAQ.md](FAQ.md)
- 更新日志：[CHANGELOG.md](CHANGELOG.md)

## 下载

- 开发版：[GitHub](https://github.com/YunYouJun/cucthesis)

仓库中不提供预生成的 `cls` 文件和文档，仅包含源码。
您需掌握基础的编译指令，使用 `make thesis` 编译论文。

下载途径：

```bash
git clone https://github.com/YunYouJun/cucthesis
```

## Makefile 的用法

```shell
make [{all|thesis|spine|doc|clean|cleanall|distclean}]
```

### 目标

- `make thesis` 生成论文 thuthesis-example.pdf；
- `make spine` 生成书脊 spine.pdf；
- `make doc` 生成模板使用说明书 thuthesis.pdf；
- `make all` 生成论文和书脊，相当于 `make thesis && make spine`；
- `make clean` 删除示例文件的中间文件（不含 thuthesis-example.pdf）；
- `make cleanall` 删除示例文件的中间文件和 thuthesis-example.pdf；
- `make distclean` 删除示例文件和模板的所有中间文件和 PDF。

## 自定义格式

本模版所做的部分自定义格式修改。

> CUC 论文格式

- 总体格式
  - [x] 行间距 22 磅（bp）
  - [x] 左右边距 2.5cm，上下边距 3.5cm
  - [x] 目录三号、章标题（四号黑体）、无缩进
- 摘要
  - [x] 中英文摘要前有论文题目
  - [x] 没有页眉
  - [x] 记入罗马数字页数
- 章节
  - [x] 章节起始为 1 XXX，而不是第 1 章
  - [x] 章节顶格不居中
- 页眉页脚
  - [x] 页眉小五，左侧中国传媒大学硕士学位论文，右侧一级标题
  - [x] 页脚页码小五号

## 论文查重

提交后学校会使用知网查重，我仅使用了以下免费方式进行提前查重。

- [学信网万方免费查重一次](http://chsi.wanfangtech.net/)：略好于大雅，与知网接近
- [中国传媒大学图书馆超星大雅论文检测提供自助查重权限 1 篇](https://libw.cuc.edu.cn/2019/0321/c4491a120263/page.htm)：各种重复有点牵强

## Features

也许看到这里的你并未怎么使用过 LaTeX，想不出折腾的好处。
因此简要列举一下其中的优势。

> 模版本身的优点

- 自动生成目录
- 图表自动编号、对齐且美观
- 优雅愉快地书写公式
- 纯文本适用于任意文本编辑器与 Git 版本管理
- Tikz 文本绘制矢量图形、清晰且便于修改
- 参考文献
  - 自动编号
  - 按需引入
  - 优雅的 BibTeX 风格（和 Google Scholar 搭配非常方便）
- 编译即最终稿 PDF（不像 Word 可能需要微调）

> 相比 thuthesis 的修改

- 添加了 `XML/JavaScript/C/JSON/Python` 等代码风格及着色
- 可以使用 GitHub CI 生成并部署最终预览
- 已预置 CUC 硕士论文格式，只需专注内容
- 移除了部分无用素材，如：
  - tsinghua-name-bachelor.pdf 清华大学 LOGO
  - committee.pdf 评审委员会
  - scan-statement.pdf 原创声明（用中传自己的）
  - scan-copyright.pdf 授权（用中传自己的）
  - scan-record.pdf 综合记录
  - thuthesis-bachelor.{cbx, bst, bbx} 学士学位论文格式（我只排了硕士的）
  - data/appendix-survey.tex 本科生的外文资料调研阅读报告
  - data/appendix-translation.tex 本科生的外文资料书面翻译

## 结构

```bash
.
├── CHANGELOG.md
├── FAQ.md
├── LICENSE
├── Makefile
├── README.md
├── .github/workflows/build.yml # GitHub Actions 自动构建论文，并部署 GitHub Pages
├── cuc
│   ├── cuc-thesis-cover-without-name.pdf # 匿名论文封面 PDF（需手动导出）
│   ├── cuc-thesis-cover.docx # 封面 Word 版
│   ├── cuc-thesis-cover.pdf # 论文封面 PDF（需手动导出）
│   ├── statement.pdf # 声明文件
│   └── 中国传媒大学研究生学位论文编写规则（自然科学版）20211230.pdf
├── cuc-custom.sty # CUC 自定义格式
├── data
│   ├── abstract.tex # 摘要
│   ├── acknowledgements.tex # 致谢
│   ├── appendix.tex # 附录
│   ├── chap01.tex # 第一章
│   ├── chap02.tex
│   ├── chap03.tex
│   ├── chap04.tex
│   ├── chap05.tex
│   ├── chap06.tex
│   ├── comments.tex
│   ├── committee.tex
│   ├── denotation.tex # 符号和缩略语说明
│   ├── resolution.tex
│   └── resume.tex # 简历及在学期间所取得的成果
├── docs
│   └── README.md # 使用说明
├── examples
│   └── figure-table.tex # 图表示例
├── figures # 图片文件夹
├── gulpfile.js # Gulp 编译（可忽略）
├── latexmkrc # What is a latexmkrc file? https://www.overleaf.com/learn/latex/Articles/How_to_use_latexmkrc_with_Overleaf
├── main.pdf # 最终编译文件
├── main.tex # 编译主文件
├── package.json
├── public # 静态文件（内置 CI 脚本会自动编译部署站点，可在线访问 PDF）
│   ├── index.html
│   └── robots.txt # 禁止搜索引擎爬取
├── ref
│   ├── appendix.bib # 附录
│   ├── examples.bib # 示例
│   └── refs.bib # 参考文献
├── spine.tex # 书脊（暂时应该用不着）
├── thusetup.tex # 配置文件，可以在此处配置「论文中英标题」
├── thuthesis-author-year.{bbx,bst,cbx} # 参考文献格式文件
├── thuthesis-numeric.{bbx,bst,cbx} # 参考文献格式文件
├── thuthesis-inline.cbx
├── thuthesis.dtx # 论文主体格式
└── thuthesis.ins
```

## 后话

### Why LaTeX?

> 参见 [#Features](#Features)

调格式总是一件麻烦的事情，LaTeX 是一个功能强大的排版工具，也通常是理工科期刊会议论文的贵客。

它的内容与排版样式是相互隔离的，因此不像 Word 之类的富文本编辑器容易在编写过程中造成格式错乱。
且在拥有预置模版后，你可以更专注于内容，而非格式。

此外排版公式、参考文献的引用方式也是我选择 LaTeX 的原因。

### Why CucThesis?

由于学校并未提供毕业论文的 LaTeX 模版，因此我决定自行根据要求进行排版。

尽管编排 LaTeX 模版可能花费的时间可能比用 Word 编辑还要多，但我想如果它可以复用，那便是有意义的。

也衷心希望它可以帮你优雅、开心、快捷地完成毕业论文的排版工作。

**值得注意的是：**

- 如果您完全没有接触过 LaTeX，且并非理工科学生、无公式和文本绘图等需求，我更推荐您直接使用 Word。
- LaTeX 的环境与细节调整对于无经验者可能会消耗大量时间。
- 未来学校格式可能发生变动，请按需修改。
