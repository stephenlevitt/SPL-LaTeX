\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ArcCBO}
%\usepackage{ArcMacro}
\usepackage{ifthen}
% A handout style, modified for typesetting a Course Brief & Outline (CBO)
% for the School of Electrical and Information Engineering. Authored by
% many, maintained by a.clark@ee.wits.ac.za
%
% used as \documentclass[11pt,widetext]{ArcCBO}

\PassOptionsToClass{a4paper}{article}
\AtEndOfClass{\setlength{\topmargin}{-3mm}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\textheight}{248mm}
\setlength{\footskip}{12mm}
\setlength{\oddsidemargin}{5mm}
\setlength{\textwidth}{150mm}
\setlength{\evensidemargin}{5mm}}
\DeclareOption{widetext}
  {
  \addtolength{\oddsidemargin}{-5mm}
  \addtolength{\evensidemargin}{-5mm}
  \addtolength{\marginparwidth}{-10mm}
  \addtolength{\textwidth}{10mm}
  }

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\newboolean{monologo}
\setboolean{monologo}{true} % Default
\DeclareOption{mono}{\setboolean{monologo}{true}}
\DeclareOption{colour}{\setboolean{monologo}{false}}

\ProcessOptions
\LoadClass{article}

\setlength{\parskip}{\medskipamount}
\setlength{\parindent}{0pt}
\setlength{\unitlength}{1mm}
\newcommand{\eehead}{\textit{School of Electrical and Information Engineering}\\
\textsf{University of the Witwatersrand, Johannesburg}}
\newcommand{\eehd}{\begin{minipage}[]{.2\textwidth}
\setcounter{secnumdepth}{2}
\ifthenelse{\boolean{monologo}}{\includegraphics[height=20mm]{ArcSchlLogo}}{\includegraphics[height=20mm]{eielogo}}
\end{minipage}
\vspace{1mm}
\begin{minipage}[]{.8\textwidth}
\noindent\Large\textsf\eehead\smallskip\zzzc
\end{minipage}
\smallskip\hrule\medskip}
\newcommand{\zzzc}{}      % Course name generator
\newcommand{\course}[1]{\renewcommand{\zzzc}{\\#1}}
\renewcommand{\@maketitle}{\newpage\eehd\begin{center}
{\Large\textbf \@title \par}{\large \lineskip .5em
\begin{tabular}[t]{c}\@author\end{tabular}\par}
\vskip 1em {\large \@date} \end{center}\par}
\newcommand{\makeheads}{\maketitle}
\newcommand{\omithead}{\renewcommand{\@maketitle}{}}
\title{}\author{}\date{}  % default these to nothing
\endinput
