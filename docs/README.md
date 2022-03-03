# 使用文档

您须先配置 LaTeX 环境。

## 环境

> Windows 就请搜搜网上的教程吧，据称，Mac 编译 LaTeX 速度要远超 Windows 哦。

### Mac

> 可参考 [LaTeX 使用笔记](https://www.yuque.com/yunyoujun/notes/latex-use-note)

Mac 用户需安装 [MacTeX](https://www.tug.org/mactex/mactex-download.html)。

推荐使用 [VSCode](https://code.visualstudio.com/) + [LaTeX Workshop - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)。

## 使用

### 下载

```bash
git clone https://github.com/YunYouJun/cucthesis
```

### 编写

使用 VSCode 编写 `data` 文件夹下的各章节内容。

### 编译

```bash
make thesis
```

生成的 `main.pdf` 就是你的最终论文啦。

### CI

如果你使用 GitHub 托管你的论文内容（记得 Private），并希望可以在线预览（自带的 CI 脚本会自动构建并部署 GitHub Pages 预览），请启用 Settings > GitHub Pages。

## 参考文档

### 参考文献

- 通过 `\cite{xxx}` 的方式引用参考文献，并在 `ref/refs.bib` 中依照 BibTeX 的格式进行书写
- [BibTeX - 维基百科](https://zh.wikipedia.org/wiki/BibTeX)：含有各字段含义

> 可参考[ref/examples.bib](../ref/examples.bib)

### 绘图

- [TikZ & PGF 手册](http://static.latexstudio.net/article/2019/0621/ManualNotes-0620.pdf)
- [LaTeX 中数据结构绘图](https://atc1.aut.uah.es/~david/notes/2017/03/datastructures-in-tikz/)
- [画流程图](https://zhuanlan.zhihu.com/p/82435856)
- [Creating Flowcharts | Overleaf](<https://www.overleaf.com/learn/latex/LaTeX_Graphics_using_TikZ%3A_A_Tutorial_for_Beginners_(Part_3)%E2%80%94Creating_Flowcharts>)
- [绘制自动机示例 | StackExchange](https://tex.stackexchange.com/questions/63713/how-to-draw-double-circle-node-in-tikz)

## 辅助工具

- [Tables Generator](https://www.tablesgenerator.com/)：生成表格
