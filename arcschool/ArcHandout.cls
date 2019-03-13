\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ArcHandout}
              [2017/07/26 v3.0
               School of Electrical and Information Engineering Handout Class]
%ArcHandout.cls by Stephen Levitt, modified from:
%ArcHandout.cls by Alan Robert Clark, a.clark@ee.wits.ac.za, modified from:
%   Handout.cls by Dean Redelinghuys, modified from
%   HANDOUT.STY         I.M. MacLeod, 20 Jan 1989. Rev 1, 4 Mar 1992
%   Custom modifications to the "article" document-style for Electrical
%   Engineering general purpose handouts such as course outlines,
%   laboratory sheets, tutorials and class tests.
%   Intended to be used as a class:
%      \documentclass[11pt]{handout}
%   This style uses article as its base.
%
%   The type size recommended for general use on A4 paper is 11pt, but 10pt
%   or 12pt can also be used. The default page style, viz., plain is assumed.
%

\DeclareOption{a5paper}
    {\ClassError{proc}{Option ``a5paper'' not supported}{}}
\DeclareOption{b5paper}
    {\ClassError{proc}{Option ``b5paper'' not supported}{}}
\DeclareOption{titlepage}%
    {\ClassError{proc}{Option ``titlepage'' not supported}{}}
\PassOptionsToClass{a4paper}{article}
\AtEndOfClass{\setlength{\topmargin}{-3mm}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\textheight}{248mm}
\setlength{\footskip}{12mm}
\setlength{\oddsidemargin}{5mm}
\setlength{\textwidth}{150mm}
\setlength{\evensidemargin}{5mm}}
\DeclareOption{landscape}
    {
    \PassOptionsToClass{landscape}{article}
    \AtEndOfClass{\setlength{\topmargin}{-2mm}
    \setlength{\headheight}{0mm}
    \setlength{\headsep}{0mm}
    \setlength{\textheight}{160mm}
    \setlength{\footskip}{12mm}
    \setlength{\oddsidemargin}{0mm}
    \setlength{\textwidth}{247mm}
    \setlength{\evensidemargin}{0mm}
    \setlength{\columnsep}{45mm}}
    }
\DeclareOption{widetext}
    {
    \AtEndOfClass{\addtolength{\oddsidemargin}{-10mm}
    \addtolength{\evensidemargin}{-10mm}
    \addtolength{\textwidth}{20mm}}
    }
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
%---------------------------------------

\RequirePackage{ifxetex} % for School logo font
\ifxetex
    \RequirePackage{fontspec}
    \newfontfamily\schoolfont{HelveticaNeueLTStd-Lt}[Scale=1.1,Color=003179, BoldFont = Helvetica Neue LT Std] %scale=1.4
\fi

%---------------------------------------

\setlength{\parskip}{\medskipamount}
\setlength{\parindent}{0pt}
\setlength{\unitlength}{1mm}

\newcounter{qno}
\newcounter{eno}
\@addtoreset{eno}{section}
\newcommand{\eehead}{\textsf{University of the Witwatersrand, Johannesburg}\\
\textit{School of Electrical and Information Engineering}}

\newcommand{\eehd}{{\noindent\Large\textsf\eehead\smallskip\zzzc}%
\smallskip\hrule\medskip}
\newcommand{\zzzc}{}      % Course name generator
\newcommand{\course}[1]{\renewcommand{\zzzc}{\textsf{#1}}}
%\newcommand{\course}[1]{\renewcommand{\zzzc}{\textsf{\LARGE{#1}}}}
\renewcommand{\@maketitle}{\newpage

\ifxetex
    {\Large
    \begin{tabular}{p{11mm}l} %14
    \setlength{\unitlength}{1mm}
    \begin{picture}(0,0)(15,19.5) %12,19.5
    \includegraphics[width=27mm]{ArcSchllogo} %33mm
    \end{picture}%
    &{\schoolfont \textbf{ELECTRICAL} AND \textbf{INFORMATION ENGINEERING}}\vspace{0.5mm}\\ %0.1mm
    &\textsf{University of the Witwatersrand, Johannesburg}\vspace{0.5mm}\\ %\LARGE
    &\smallskip\zzzc
    \end{tabular}
    }
\else
    {\Large
    \begin{tabular}{p{5.5mm}l}
    \setlength{\unitlength}{1mm}
    \begin{picture}(0,0)(18,18)
    \includegraphics[width=25mm]{ArcSchllogo}
    \end{picture}%
    &\textsf{SCHOOL OF ELECTRICAL AND INFORMATION ENGINEERING}\\
    &\textsf{University of the Witwatersrand, Johannesburg}\\
    &\smallskip\zzzc
    \end{tabular}
    }
\fi
\vspace{4mm}
\begin{center}
{\Large\textbf \@title \par}
{\large \lineskip .5em \begin{tabular}[t]{c}\@author\end{tabular}\par}
\vskip 1em {\large \@date} 
\vspace{-8mm}
\end{center}}

\newcommand{\makeheads}{\maketitle}
\newcommand{\omithead}{\renewcommand{\@maketitle}{}}
\title{}\author{}\date{}  % default these to nothing
\newcommand{\question}{\addtocounter{qno}{1}\subsection*{Question \theqno}}
\newcommand{\exercise}{\addtocounter{eno}{1}\subsubsection*{Exercise \thesection.\theeno}}
\newcommand{\do}{\addtocounter{eno}{1}\subsubsubsection*{Exercise \theeno}}
\newcommand{\guideline}{\addtocounter{eno}{1}\subsubsection*{Guideline \thesection.\theeno}}
\newcommand{\quest}{\addtocounter{qno}{1}\par{\textbf Q\theqno :\quad}}
\newcommand{\rhfit}[1]{
{\unskip\nobreak\hfil\penalty50\hskip2em\vadjust{}\nobreak\hfil
{#1}\parfillskip=0pt \finalhyphendemerits=0 \par}}
%\providecommand{\marks}[1]{\rhfit{\textsf{(#1~marks)}}}
%\newcommand{\marks}[1]{\rhfit{\sf(#1~marks)}}
\newcommand{\mrks}[1]{\rhfit{\textsf(#1~marks)}}
\providecommand{\totalmarks}[1]{\rhfit{\textsf{[Total Marks #1]}}}
\newcommand{\fig}[1]{\addtocounter{figure}{1}
\begin{center}\vspace*{#1}Figure \thefigure\end{center}}
\newcommand{\figc}[2]{\addtocounter{figure}{1}
\begin{center}\vspace*{#1}Figure \thefigure : {#2}\end{center}}
\newcommand{\figf}[1]{\addtocounter{figure}{1}\begin{figure}[htb]
\vspace{#1}\begin{center}Figure \thefigure\end{center} \end{figure}}
\newcommand{\figcf}[2]{\addtocounter{figure}{1}\begin{figure}[htb]
\vspace{#1}\begin{center}Figure \thefigure : {#2}\end{center} \end{figure}}
% ----- hanging indentation in a parbox:
\newcommand{\pbitem}[1]{\setlength{\parindent}{20pt}\par\hang\textindent{#1}}
\newcommand{\subpbitem}[1]{\setlength{\parindent}{20pt}\itemitem{#1}}
\endinput
