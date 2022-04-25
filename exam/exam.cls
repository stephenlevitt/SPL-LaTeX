%%
%% This is file `exam.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% exam.dtx
%%
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% Any modified versions of this file must be renamed
%% with new filenames distinct from exam.cls.
%%
%% For distribution of the original source see the terms
%% for copying and modification in the file exam.dtx.
%%
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}[1998/10/05 v1.6 Wits Elec. Eng. Exam Class]
\DeclareOption{showsol}
    {\AtBeginDocument{%
    \renewcommand{\mcqsol}[1]{\marginpar{\footnotesize\scshape%
    {}\ensuremath{[#1]}}}%
    }}
\DeclareOption{comments}
    {\AtBeginDocument{%
    \renewcommand{\comment}[1]{{\footnotesize\scshape #1\vspace*{0.5em}\\}}%
    \renewcommand{\commenthead}{\textsc{Do Not Send for Printing!}}%
    }}
\newcommand{\eeInternal}{None}
\newcommand{\internal}[1]{\renewcommand{\eeInternal}{#1}}
\newcommand{\eeExternal}{None}
\newcommand{\external}[1]{\renewcommand{\eeExternal}{#1}}
\newcommand{\eeDuration}{Three (3)}
\newcommand{\duration}[1]{\renewcommand{\eeDuration}{#1}}
\newcommand{\eeRequires}{None}
\newcommand{\require}[1]{\renewcommand{\eeRequires}{#1}}
\newcommand{\eeInstruct}{None}
\newcommand{\instruct}[1]{\renewcommand{\eeInstruct}{#1}}
\newcommand{\eeMonth}{TBA}
\newcommand{\exammonth}[1]{\renewcommand{\eeMonth}{#1}}
\newcommand{\eeYoS}{TBA}
\newcommand{\studyyear}[1]{\renewcommand{\eeYoS}{#1}}
\newcommand{\eeFacs}{Engineering}
\newcommand{\faculties}[1]{\renewcommand{\eeFacs}{#1}}
\newcommand{\eeDegs}{BSc (Eng) Elec}
\newcommand{\studydegs}[1]{\renewcommand{\eeDegs}{#1}}
\newcommand{\eeCCode}{ELEN???}
\newcommand{\coursecode}[1]{\renewcommand{\eeCCode}{#1}%
  \markright{\eeCCode -- \eeCName}}
\newcommand{\eeCName}{??}
\newcommand{\coursename}[1]{\renewcommand{\eeCName}{#1}%
  \markright{\eeCCode -- \eeCName}}
\DeclareOption{cover}
  {\AtBeginDocument{%
    \renewcommand{\makeheads}{
    \addtolength{\evensidemargin}{-15mm}
    \addtolength{\oddsidemargin}{-15mm}
    \addtolength{\textwidth}{30mm}
    \begin{titlepage}%
    \thispagestyle{empty}
    \vspace*{-35mm}

    % temporarily shift the margins
    \fbox{\parbox[c]{25mm}{\raggedleft hrs}}\hspace*{10mm}
    \fbox{\parbox[c]{25mm}{\centering ~~/~~/20~~}}\hspace*{10mm}
    \fbox{\parbox[c]{50mm}{\strut}}\hspace*{13mm}\begin{tabular}{c}
    Exams Office\\Use Only\end{tabular}\medskip

    ~\rule{180mm}{0.4pt}~\\
    \begin{samepage}
    \begin{textsf}
    {\large University of the Witwatersrand, Johannesburg}\bigskip

\unitlength 1.00mm
\linethickness{0.4pt}
\begin{picture}(190.00,205.00)(5,5)
\put(5.00,19.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Instructions to candidates\\
  (Examiners may wish to use\\
  this space to indicate, inter alia,\\
  the contribution made by this\\
  examination or test towards\\
  the year mark, if appropriate)\end{tabular}}}
\put(5.00,50.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Time allowance\end{tabular}}}
\put(5.00,70.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Special materials required\\
  (graph/music/drawing paper)\\
  maps, diagrams, tables,\\
  computer cards, etc)\end{tabular}}}
\put(5.00,90.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  External examiner(s)\end{tabular}}}
\put(5.00,110.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Internal examiners\\and telephone\\number(s)\end{tabular}}}
\put(5.00,125.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Faculty/ies presenting\\candidates\end{tabular}}}
\put(5.00,160.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Year of Study\\(Art \& Sciences leave blank)\end{tabular}}}
\put(5.00,145.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Degrees/Diplomas for which\\this course is prescribed\\
  (BSc (Eng) should indicate which branch)\end{tabular}}}
\put(5.00,175.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Examination/Test$^*$ to be\\held during month(s) of\\
  \footnotesize($^*$delete as applicable)\end{tabular}}}
\put(5.00,190.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Course or topic name(s)\\Paper Number \& title\end{tabular}}}
\put(5.00,205.00){\makebox(0,0)[lc]{\small\begin{tabular}{l}
  Course or topic No(s)\end{tabular}}}
\put(90.00,5.00){\framebox(100.00,28.00)[cc]{\begin{minipage}{95mm}
  \vspace{-4mm}
  \centering\small\texttt{\eeInstruct}\end{minipage}}}
\put(90.00,40.00){\framebox(20.00,15.00)[cc]{\small
  \shortstack{Course\\Nos}}}
\put(110.00,40.00){\framebox(40.00,15.00)[cc]{\small
  \begin{minipage}{14mm}\centering\texttt{\eeCCode}\end{minipage}}}
\put(150.00,40.00){\framebox(18.00,15.00)[cc]{\small Hours}}
\put(168.00,40.00){\framebox(22.00,15.00)[cc]{\small
  \begin{minipage}{22mm}\centering\texttt{\eeDuration}\end{minipage}}}
\put(90.00,63.00){\framebox(100.00,13.00)[cc]{\small
  \begin{minipage}{95mm}\centering\ttfamily\eeRequires\end{minipage}}}
\put(90.00,83.00){\framebox(100.00,13.00)[cc]{\small
  \begin{minipage}{95mm}\centering\ttfamily\eeExternal\end{minipage}}}
\put(90.00,100.00){\framebox(100.00,13.00)[cc]{\small
  \begin{minipage}{95mm}\centering\ttfamily\eeInternal\end{minipage}}}
\put(110.00,122.00){\framebox(80.00,8.00)[cc]{\small
  \begin{minipage}{75mm}\centering\ttfamily\eeFacs\end{minipage}}}
\put(110.00,136.00){\framebox(80.00,13.00)[cc]{\small
  \begin{minipage}{75mm}\centering\ttfamily\eeDegs\end{minipage}}}
\put(110.00,157.00){\framebox(80.00,8.00)[cc]{\small
  \begin{minipage}{75mm}\centering\ttfamily\eeYoS\end{minipage}}}
\put(110.00,172.00){\framebox(80.00,8.00)[cc]{\small
  \begin{minipage}{75mm}\centering\ttfamily\eeMonth\end{minipage}}}
\put(90.00,187.00){\framebox(100.00,10.00)[cc]{\small
  \begin{minipage}{95mm}\centering\ttfamily\eeCName\end{minipage}}}
\put(110.00,202.00){\framebox(80.00,8.00)[cc]{\small
  \begin{minipage}{75mm}\centering\ttfamily\eeCCode\end{minipage}}}
\end{picture}
\bigskip

    {\Large Internal Examiners or Heads of School are requested to sign
    the\\ declaration overleaf}
    \end{textsf}
    \end{samepage}
    \newpage\vspace{40mm}
    1. As the Internal Examiner/Head of School, I certify that this
    question paper is in final form, as approved by the External Examiner,
    and is ready for reproduction.\\[10mm]
    2. As the Internal Examiner/Head of School, I certify that this
    question paper is in final form and is ready for reproduction.\\[10mm]
    (1. is applicable to formal examinations as approved by an external
    examiner, while 2. is applicable to formal tests not requiring approval
    by an external examiner---Delete whichever is not applicable)\\[20mm]
    Name:\hrulefill\ \  Signature:\hrulefill\\[20mm](THIS PAGE NOT FOR
    REPRODUCTION)
    \end{titlepage}
    \addtolength{\evensidemargin}{15mm}
    \addtolength{\oddsidemargin}{15mm}
    \addtolength{\textwidth}{-30mm}}
    }%
  }
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\PassOptionsToClass{a4paper,11pt}{article}
\ProcessOptions
\LoadClass{article}
\setlength{\topmargin}{-3mm}
\setlength{\headheight}{5mm}
\setlength{\headsep}{15mm}
\setlength{\textheight}{240mm}
\setlength{\footskip}{0mm}
\setlength{\oddsidemargin}{0mm}
\setlength{\textwidth}{150mm}
\setlength{\evensidemargin}{10mm}
\setlength{\parskip}{\medskipamount}
\setlength{\parindent}{0em}
\setlength{\unitlength}{1mm}
\setlength{\marginparwidth}{40pt}
\setlength{\marginparsep}{10pt}
\brokenpenalty=10000
\newcounter{qno}

\usepackage{lastpage} % reliably detect the last page of the exam
\newcommand{\makeheads}{\begin{titlepage}\vspace{80mm}\thispagestyle{empty}
  Examination question paper for:
  \begin{center}\Large \eeCCode -- \eeCName \end{center}
  Printed on:\quad \today.\par This covering page \emph{must not} be sent
  for printing as part of the question paper.
  \end{titlepage}}
\AtBeginDocument{\pagestyle{empty}
% modified by SPL 2008-11-14
%\markright{\eeCCode -- \eeCName \commenthead}
\markright{\eeCCode \hspace{-0.2pt} \cdot \hspace{-0.2pt}  \eeCName \commenthead}
\renewcommand{\@oddhead}{\hbox{}\textsl\rightmark \hfil
\textrm (\pageref{LastPage} pages -- page \thepage)}}
\newcommand{\question}{\addtocounter{qno}{1}\subsection*{Question \theqno}}
\newcommand{\quest}{\addtocounter{qno}{1}\par{\textbf Q\theqno :\quad}}
\newcounter{mcqno}[qno]
\newenvironment{mcq}%
{\addtocounter{mcqno}{1}\par\relax\begin{samepage}\theqno.\themcqno \quad}%
{\end{samepage}\medskip\par\pagebreak[1]}
\makeatletter
\renewcommand{\theenumi}{(\alph{enumi})}
\renewcommand{\theenumii}{\roman{enumii}}
\renewcommand{\labelenumi}{\theenumi}
\renewcommand{\labelenumii}{\theenumii.}
\renewcommand{\p@enumi}{\theqno}
\renewcommand{\p@enumii}{\theqno\theenumi--}
\newenvironment{squashenum}{\begin{enumerate}\setlength{\parsep}{0pt}}%
  {\end{enumerate}}
\providecommand{\Banum}{\begin{list}%
   {(\alph{enumi})}{\usecounter{enumi}}\parskip=0pt}
\providecommand{\Eanum}{\end{list}}
% Modified by SPL 2010-10-04 to remove indented first line in MCQs
%\usepackage{enumitem}
%\setlist{label=(\alph{enumi})}, itemindent=-1.3mm}
%\providecommand{\Banum}{\begin{enumerate}}
%\providecommand{\Eanum}{\end{enumerate}}
\newcommand{\mcqi}[1][??]{\item \mbox{}\mcqsol{#1}}
\newcommand{\mcqsol}[1]{\relax}
\newcommand{\comment}[1]{\relax}
\newcommand{\commenthead}{\relax}
\newcommand{\rhfit}[1]{
{\nobreak\hfil\penalty50\hskip2em\vadjust{}\nobreak\hfil
{#1}\parfillskip=0pt \finalhyphendemerits=0 \par}}

\providecommand{\mrks}[1]{\rhfit{\textsf{(#1~marks)}}}
\providecommand{\totalmarks}[1]{\rhfit{\textsf{[Total Marks #1]}}}

\newcommand{\fig}[1]{\addtocounter{figure}{1}
\begin{center}\vspace*{#1}Figure \thefigure\end{center}}
\newcommand{\figc}[2]{\addtocounter{figure}{1}
\begin{center}\vspace*{#1}Figure \thefigure : {#2}\end{center}}
\newcommand{\figf}[1]{\addtocounter{figure}{1}\begin{figure}[htb]
\vspace{#1}\begin{center}Figure \thefigure\end{center} \end{figure}}
\newcommand{\figcf}[2]{\addtocounter{figure}{1}\begin{figure}[htb]
\vspace{#1}\begin{center}Figure \thefigure : {#2}\end{center} \end{figure}}
\endinput
%%
%% End of file `exam.cls'.
