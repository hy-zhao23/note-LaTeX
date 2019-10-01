%mynote.cls
%writen by Melody.
\NeedsTeXFormat{LaTeX2e}[2018/04/01]
\ProvidesClass{mynote}[2019/9/18 v1.0]
\LoadClass[a4paper,12pt,openany]{book}

\RequirePackage[UTF8]{ctex}
\RequirePackage{xcolor}
\RequirePackage{titlesec, titleps, titletoc, titlecaps}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{bbding}
\RequirePackage{ulem}
\RequirePackage{amsmath}
\RequirePackage{biblatex}
\usepackage{mfirstuc}

% set paper format
\geometry{b4paper,left=2cm,right=2.5cm}
\setlength\topmargin{-0.5cm}
\setlength\headheight{0.8cm}
\setlength\textheight\paperheight
\addtolength\textheight{-5cm}
\setlength\footskip{2.5cm}



% \def@maketitle

\newcommand\makemytitle{
    \begin{titlepage}
        \begin{center}
        \vspace*{8cm}
        \parbox[t]{\textwidth}{\centering\Large\bf\@title\\
        \vspace*{10cm}
        \@author\\
        \vspace*{2cm}
        \@date}
        % \vspace*{\fill}
        \newpage
        \end{center}
    \end{titlepage}
    \setcounter{page}{1}
    }

% set header format
% \newcommand{\headrulewidth}{0.4pt}
% \newcommand{\footrulewidth}{0.4pt}



% title page
% font set
\setmainfont{Lato-Regular}
% \setcounter{\thechapter}{1}
\renewcommand{\thechapter}{\Roman{chapter}}

\titleformat{\chapter}[display]{\Large\bf}{\raggedleft\MakeUppercase{\chaptertitlename}\Large\thechapter}{4ex}{\titlerule\vspace{1ex}}[\vspace{1ex}\titlerule]

\renewcommand\thesection{\arabic{chapter}.~\arabic{section}}
\titleformat{\section}{\large\bf\color{olive}}{\thesection}{4ex}{\makefirstuc}

\renewcommand\thesubsection{\thesection.~\arabic{subsection}}
\titleformat{\subsection}{\normalsize\bf}{\thesubsection}{4ex}{\makefirstuc}


\newcommand{\hchapter}{\arabic{chapter}}
\renewcommand{\chaptermark}[1]{\markboth{\arabic{chapter}.\ #1}{}}




\def\ps@plain{%
    \def\@oddhead{%
      \centering\vbox{%
      \setlength\titlewidth\textwidth
      \addtolength{\titlewidth}{-2cm}
        \raggedleft\parbox[b]{\titlewidth}{\raggedleft\small\textit{\leftmark}\qquad\thepage}
        \vskip3pt}}

    \def\@evenhead{%
        \centering\vbox{%
        \setlength\titlewidth\textwidth
        \addtolength{\titlewidth}{-2cm}
          \raggedright\parbox[b]{\titlewidth}{\raggedright\small\thepage}
          \vskip3pt}}
}
\pagestyle{plain}

\newcommand{\stress}[1]{{\bf\color{brown}#1}}
\newcommand{\comment}[1]{\\\HandPencilLeft\quad{\bf\color{red} #1}}
\newcommand{\note}[1]{\\\FourStarOpen\quad{\color{magenta} #1}}
\newcommand{\LR}{{\color{red}~$\Longrightarrow$~}}
\newcommand{\BS}{~{\bf$\backslash$~}}
