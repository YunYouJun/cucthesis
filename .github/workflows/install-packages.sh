#!/bin/bash
set -e

export PATH="/opt/texlive/bin/x86_64-linux:$PATH"

XECJK_PKGS="fontspec xecjk ulem xetex"
CTEX_PKGS="cjk ctex everysel zhnumber"
BIBLATEX_PKGS="biber biblatex biblatex-apa biblatex-gb7714-2015 biblatex-mla xstring"
HYPERREF_PKGS="pdflscape"
NOMENCL_PKGS="nomencl koma-script xkeyval"

BIN_PKGS="latexmk l3build"
# https://github.com/tuna/thuthesis/issues/728#issuecomment-1052271688
REQUIRED_PKGS="$XECJK_PKGS $CTEX_PKGS bibunits bigfoot caption enumitem
    environ etoolbox filehook footmisc notoccite pdfpages soul threeparttable \
    titlesec trimspaces unicode-math"
FONT_PKGS="fandol tex-gyre xits"
EXTRA_PKGS="algorithms apacite $BIBLATEX_PKGS booktabs $HYPERREF_PKGS $NOMENCL_PKGS ntheorem siunitx"
MARKDOWN_PKGS="markdown fancyvrb csvsimple gobble"
DOC_PKGS="hologo listings xcolor $MARKDOWN_PKGS"
EXAMPLE_PKGS="float fp metalogo multirow mwe"

wget https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh
sh update-tlmgr-latest.sh -- --upgrade
tlmgr update --self --all
luaotfload-tool -fu
tlmgr install $BIN_PKGS $REQUIRED_PKGS $FONT_PKGS $EXTRA_PKGS $DOC_PKGS \
  $EXAMPLE_PKGS
tlmgr install pgfplots
