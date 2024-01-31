FROM sharelatex/sharelatex:4.2.1

# Install Tex Live
ARG TEXLIVE_MIRROR=https://mirror.ox.ac.uk/sites/ctan.org/systems/texlive/tlnet
RUN tlmgr update --self -repository ${TEXLIVE_MIRROR} && tlmgr install -repository ${TEXLIVE_MIRROR} \
  ctex booktabs multirow tocloft xstring comment float enumitem siunitx lastpage changepage background \
  everypage nth hyphenat paracol tcolorbox environ tikzfill pdfcol listings seqsplit titlesec

# 添加字体。思源宋体
COPY fonts/SiYuanSongTiRegular /usr/share/fonts/truetype/SiYuanSongTiRegular
RUN mktexlsr
