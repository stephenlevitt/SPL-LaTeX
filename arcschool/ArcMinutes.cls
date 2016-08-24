%%
%% This is file `ArcMinutes.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ArcMinutes.dtx 
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from ArcMinutes.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file ArcMinutes.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\def\fileversion{0.2}
\def\filedate{16-07-96}
\ProvidesClass{ArcMinutes}[2002/01/22 Wits Elec\&Info Eng Minutes Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}
\RequirePackage{xspace,A4ee}
\newcommand{\meeting}[1]{\title{#1}}
\newcommand{\EEplace}{.}
\newcommand{\place}[1]{\renewcommand{\EEplace}{\xspace in the #1.}}
\newcommand{\EEtime}{}
\newcommand{\EEdate}{\@date}
\renewcommand{\time}[1]{\renewcommand{\EEtime}{\xspace at #1}%
\renewcommand{\EEdate}{\@date\EEtime}}
\newcommand{\EEminref}{}
\newcommand{\minuteref}[1]{\renewcommand{\EEminref}{#1}}
\AtBeginDocument{%
  {\Large
    \begin{tabular}{p{7mm}l}
      \setlength{\unitlength}{1mm}
      \begin{picture}(0,0)(15,20)
        \includegraphics[width=25mm]{schllogo.eps}%
      \end{picture}%
      &\textsf{UNIVERSITY OF THE WITWATERSRAND, JOHANNESBURG}\\
      &\textsl{School of Electrical and Information Engineering}\\
      &{\large\bfseries Minutes of the \@title{} meeting held on}\\
      &{\large\bfseries \EEdate \EEplace}\\\cline{2-2}
    \end{tabular}
  }
}
\newcounter{EEaction}\setcounter{EEaction}{0}
\newcommand{\action}[2][ALL]{\stepcounter{EEaction}\par%
{\slshape{\bfseries Action \arabic{EEaction}}: %
        \marginpar{\textbf{#1}}#2\par}}
\newcommand{\note}[1]{\textbf{NOTED:} that #1}%
\newenvironment{present}{\section*{Present}%
        \begin{description}\setlength{\itemsep}{-\parsep}}
        {\end{description}}


\endinput
%%
%% End of file `ArcMinutes.cls'.
