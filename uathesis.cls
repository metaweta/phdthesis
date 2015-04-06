%%
%% This is file `uathesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uathesis.dtx  (with options: `thesis')
%% 
%% This is a generated file.
%% 
%% Auckland University class file
%% 
%% Copyright (C) 2002 by lee middleton
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uathesis}
      [2002/11/17 v1.3b .dtx University of Auckland thesis class]
\newif\ifUa@examcp
\newif\ifUa@singlesp
\newif\ifUa@doublesp
\newif\ifUa@picture

\Ua@examcpfalse
\Ua@doublespfalse
\Ua@picturefalse

\DeclareOption{doublespace}{\Ua@doublesptrue}
\DeclareOption{singlespace}{\Ua@singlesptrue}
\DeclareOption{twoside}{\PassOptionsToPackage{twoside}{geometry}}
\DeclareOption{examcopy}{\Ua@examcptrue}
\DeclareOption{PhD}{\newcommand{\degreetitle}{Doctor of Philosophy in
    Science}}
\DeclareOption{ME}{\renewcommand{\degreetitle}{Master of Engineering}}
\DeclareOption{picture}{\Ua@picturetrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ExecuteOptions{oneside,PhD}
\ProcessOptions\relax

\LoadClass{book}

\RequirePackage[pdftex]{graphicx}
\DeclareGraphicsRule{.pdftex}{pdf}{.pdftex}{}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}
\pdfpagewidth=\paperwidth
\pdfpageheight=\paperheight
\RequirePackage[
     pdftex,
     a4paper,
     verbose,
     bindingoffset=10mm,
     left=20mm,
     right=20mm,
     top=30mm,
     bottom=25mm,
     nomarginpar
  ]{geometry}[2002/07/08]

\RequirePackage{subfigure}
\RequirePackage{color}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}

\pagestyle{fancyplain}
\addtolength{\headheight}{2.5pt}
\addtolength{\headwidth}{10mm}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{} % no headers or footers
\fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[LO]{\bfseries\rightmark}
\fancyhead[RE]{\bfseries\leftmark}
\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyfoot[C]{\bfseries\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

\AtBeginDocument{%
\ifUa@doublesp
   \doublespacing%
\else\ifUa@singlesp
   \singlespacing%
\else
   \onehalfspacing
\fi%
\fi
}

\newenvironment{abstract}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\abstractname}%
      \@mkboth{\MakeUppercase\abstractname}%
              {\MakeUppercase\abstractname}%
  }
  {\newpage\@mkboth{}{}}

\newcommand\abstractname{Abstract}
\newenvironment{preface}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\prefacename}%
      \@mkboth{\prefacename}%
              {\prefacename}%
  }
  {\newpage\@mkboth{}{}}

\newcommand\prefacename{Preface}
\newenvironment{acknowledgements}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\acknowledgementsname}%
      \@mkboth{\acknowledgementsname}%
              {\acknowledgementsname}%
  }
  {\newpage\@mkboth{}{}}

\newcommand\acknowledgementsname{Acknowledgements}
\newenvironment{chapterquote}[1][10cm]{%
  \begin{lrbox}{\@quotebox}
    \begin{minipage}[t]{#1}\footnotesize\slshape
      \ignorespaces}{%
      \unskip\end{minipage}\end{lrbox}
  \global\setbox\@quotebox\copy\@quotebox
  \global\let\@printcites\@iprintcites
  \ignorespacesafterend}

\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand{\supervisor}[3][]{%
  \def\dumee{#3}
  \def\dumea{#1}
  \ifx\dumee\empty
    \ifx\dumea\empty
      \gdef\@supervisor{#2}
      \gdef\@supslabel{Supervisor}
    \else
      \gdef\@supervisor{#1\\&#2}
      \gdef\@supslabel{Supervisors}
    \fi
  \else
    \gdef\@supervisor{#1\\&#2\\&#3}
    \gdef\@supslabel{Supervisors}
  \fi
}

\newcommand*{\submitdate}[1]{\gdef\@submitdate{#1}}

\newcommand{\titleimage}[1]{\gdef\@titleimage{#1}}

\def\@title{}
\def\@author{}

\def\@department{Electrical and Computer Engineering}

\def\@titleimage{picture}

\def\@submitdate{\ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}

\newcommand*{\chapnumfont}{%
  \usefont{T1}{pnc}{b}{n}\fontsize{100}{130}\selectfont%
}

\newcommand*{\chapheadfont}{%
  \usefont{T1}{bch}{b}{n}\fontsize{25}{30}\selectfont%
}

\newcommand*{\titlefont}{%
  \usefont{T1}{ppl}{b}{n}\fontsize{30}{35}\selectfont%
}

\newcommand*{\captionfont}{%
  \fontencoding{OT1}\fontfamily{phv}\fontsize{10}{12}\selectfont%
}

\renewcommand{\subcaplabelfont}{%
  \fontencoding{OT1}\fontfamily{phv}\fontsize{8}{10}\selectfont%
}

\let\size@chapter\huge
\providecommand*{\chapterheadstartvskip}{\vspace*{2.3\baselineskip}}
\providecommand*{\chapterheadendvskip}{\vspace{1.7\baselineskip}}
\providecommand*{\sectfont}{\relax}
\@ifundefined{@mainmattertrue}{\newif\if@mainmatter\@mainmattertrue}{}

\newcommand{\cqauthor}[1]{%
  \par\smallskip
  {\raggedleft\upshape #1\qquad\hbox{}\par}\bigskip}
\newsavebox{\@quotebox}
\let\@printcites\relax

\renewcommand\chapter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{plain}%
  \global\@topnum\z@
  \@printcites
  \@afterindentfalse
  \secdef\@chapter\@schapter
}

\renewcommand{\@makechapterhead}[1]{\chapterheadstartvskip%
  {\size@chapter{\sectfont\raggedleft
      {\chapnumfont
        \ifnum \c@secnumdepth >\m@ne%
        \if@mainmatter\thechapter%
        \fi\fi
        \par\nobreak}%
      {\raggedleft\advance\leftmargin10em\interlinepenalty\@M
        {\chapheadfont #1}\par}}
    \nobreak\chapterheadendvskip}
}

\renewcommand{\@makeschapterhead}[1]{%
  {\let\c@secnumdepth\m@ne\@makechapterhead{#1}}
}

\renewcommand{\@makecaption}[2]{%
  \vskip\abovecaptionskip
  \sbox{\@tempboxa}{\captionfont #1: #2}%
  \ifdim \wd\@tempboxa >\linewidth
    \sbox{\@tempboxa}{#1:\ } % measure width of figure 1:
    \addtolength{\hsize}{-\wd\@tempboxa} % subtract from width
    \mbox{\captionfont #1:\ }\parbox[t]{\hsize}{\captionfont\noindent #2}
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\renewcommand{\tableofcontents}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\contentsname
  \@mkboth{\contentsname}{\contentsname}}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}

\newcommand*{\@iprintcites}{%
  \vbox to\z@{\copy\@quotebox\vss}
  \global\let\@printcites\relax
}

\newcommand{\dr@wline}{
  {\color{blue}\rule{160mm}{3mm}}
}

\renewcommand{\maketitle}{
  \begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \vfil\null
  {\vspace{-36\p@}
    \begin{center}
      \dr@wline
      {\it Department of \@department \\[-4\p@]
        The University of Auckland \\[-4\p@]
        New Zealand \\ }%
      \vspace{12\p@}
      \ifUa@picture
        \includegraphics[height=90mm]{\@titleimage}
      \else
        \vspace{90mm}
      \fi
      \dr@wline\\[-18\p@]
      {\titlefont \@title \par}%
      \dr@wline
    \end{center}
   \vspace{-18\p@}
    {\it
      \begin{flushright}
        \Large \@author \\
        \large \@submitdate \\[12\p@]
        \large
        \begin{tabular}{@{}ll@{}}
          \@supslabel: & \@supervisor
        \end{tabular}
      \end{flushright}
    }
    \vspace{-18\p@}
    \small
    %\begin{tabular}{p{50mm}r}
      %\mbox{\includegraphics[scale=0.8]{unilogo}} &
      %\parbox[b]{100mm}
      \vspace{2cm}
      {\sc A thesis submitted in partial fulfillment of the requirements of\\ \degreetitle} \\
    %\end{tabular}
  }%
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

\newcommand{\consentform}{%
  \thispagestyle{empty}
  \begin{center}
  \large{\bfseries The University of Auckland}

  \vspace{13mm}
  \Large{\bfseries Thesis Consent Form}
  \end{center}

  \vspace{8mm}
  \noindent
  This thesis may be consulted for the purpose of research or private
  study provided that due acknowledgement is made where appropriate and
  that the author's permission is obtained before any material from the
  thesis is published.

  \vspace{1em}
  \noindent
  I agree that the University of Auckland Library may make a copy of
  this thesis for supply to the collection of another prescribed library
  on request from that Library; and

  \begin{enumerate}
  \item I agree that this thesis may be photocopied for supply to any
    person in accordance with the provisions of Section 56 of the
    Copyright Act 1994.

    Or

  \item This thesis may not be photocopied other than to supply a copy
    for the collection of another prescribed library.

    \small{(\emph{Strike out 1 or 2})}
  \end{enumerate}

  \vspace{10mm}
  \noindent
  Signed: \dotfill\hspace{0.5\textwidth}

  \vspace{5mm}
  \noindent
  Date: \dotfill\hspace{0.5\textwidth}

  \vspace{60mm}
  \begin{flushright}
  \begin{tabular}{r@{: }l}
    \small      Created & \small 5 July 2001 \\
    \small Last updated & \small 9 August 2001 \\
  \end{tabular}
  \end{flushright}

  \setcounter{page}{2}
  \cleardoublepage
}

\endinput
%%
%% End of file `uathesis.cls'.
