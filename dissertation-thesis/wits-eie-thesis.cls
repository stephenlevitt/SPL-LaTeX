%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  wits-eie-thesis.cls  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ===========================================================================
%%%  @LaTeX-class-file{
%%%    author          = "Ken Nixon, Stephen Levitt and many others",
%%%    version         = "1.9.1",
%%%    date            = "2017/05/31",
%%%    filename        = "wits-eie-thesis.cls",
%%%    address         = "School of Electrical and Information Engineering, 
%%%                         Wits University, Johannesburg, South Africa",
%%%    docstring       = "This is a LaTeX style file for the preparation
%%%                       and submission of theses.  It is heavily based on
%%%                       the original work of Dean Redelinghuys (eeThesis.cls)
%%%                       & subsequent modifications by others such as 
%%%                       David Vannucci (veeThesisDavid.cls) and Chris Lines.
%%%
%%%                       The default font size is 11pt but 12pt is also available.
%%%
%%%                       Options:
%%%                         PhD [default], MSc, MScDiss, MScProj
%%%                         bib
%%%                         draft, draftwgfx
%%%                         twoside
%%%                         headers
%%%                         colorlinks
%%%
%%%                         Other options are passed on to report class"
%%%  }
%%% ===========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wits-eie-thesis}[2017/05/31 Wits School of Electrical and Information Engineering Thesis/Dissertation Style File]

\providecommand*{\phantomsection}{}

\DeclareOption{PhD}
{
    \renewcommand{\@thesistype}{thesis}
    \renewcommand{\@degreetype}{Doctor of Philosophy}
    \renewcommand{\@partial}{}
}
\DeclareOption{MScDiss}
{
    \renewcommand{\@thesistype}{dissertation}
    \renewcommand{\@degreetype}{Master of Science in Engineering}
    \renewcommand{\@partial}{}
}
\DeclareOption{MScProj}
{
    \renewcommand{\@thesistype}{research~report}
    \renewcommand{\@degreetype}{Master of Science in Engineering}
    \renewcommand{\@partial}{partial~}
}
\newcommand{\@thesistype}{thesis}
\newcommand{\@degreetype}{Doctor of Philosophy}
\newcommand{\@partial}{}

\DeclareOption{bib}
{
    \AtBeginDocument
    {
        \RequirePackage[resetlabels]{multibib}
        \newcites{bib}{Bibliography}
    }
}

\newcommand{\eeThDraft}{\relax}
\newcommand{\eeThDecl}
{
    \clearpage
    \phantomsection
    \vspace*{50pt}
    {   % modified by SPL, 2007-09-07: changed Huge to huge, to match other headings
        \parindent \z@ \raggedright \huge \bfseries Declaration \par
        \nobreak
        \vskip 40\p@
    }
    \addcontentsline{toc}{chapter}{Declaration}
    I declare that this \@thesistype\ is my own, unaided work, except where otherwise acknowledged. It is being submitted for the degree of \@degreetype\ to the University of the Witwatersrand, Johannesburg. It has not been submitted before for any degree or examination to any other university. \par
    \vspace*{\fill} 
    {
        \raggedright Signed this \rule{0.8cm}{0.4pt} day of \rule{2.5cm}{0.4pt} 20\rule{0.5cm}{0.4pt} \par \vspace*{2.5cm} % lines lengthened by CRL
        \rule{6cm}{0.4pt}\\
        \@author \par
        \vspace*{10pt}
    }
    \newpage
}

\DeclareOption{draftwgfx}{\setdraft}
\DeclareOption{draft}{\setdraft} % other packages detect 'draft' option
\newcommand{\setdraft}
{
    \renewcommand{\eeThDraft}{DRAFT (\today)}
    \renewcommand{\eeThDecl}{\relax}
    \AtBeginDocument
    {
        \RequirePackage{fancyhdr}
        \fancypagestyle{plain}
        {
            \fancyhf{} % clear all header and footer fields
            \cfoot{\thepage}
            \if@twoside
                \fancyfoot[LE,RO]{\slshape \eeThDraft}
            \else
                \rfoot{\slshape \eeThDraft}
            \fi
            \renewcommand{\headrulewidth}{0pt}
            \renewcommand{\footrulewidth}{0pt}
        }
    }
}

\DeclareOption{altheaders}
{
    \AtBeginDocument
    {
        % Make sure we now have cool page headings
        \RequirePackage{fancyhdr}
        \pagestyle{fancyplain}
        \fancyhf{}
        \rhead{\thepage}
        \renewcommand{\headrulewidth}{0.4pt}
        \renewcommand{\plainheadrulewidth}{0pt}

        % Headings for chapters
        \markboth{}{}
        \renewcommand{\chaptermark}[1]{%
            \markboth{\chaptername\ \thechapter\ --- #1}{}
        }
    }
}

\DeclareOption{headers}
{
    \AtBeginDocument
    {
        \RequirePackage{fancyhdr}
        \pagestyle{fancy}
        \fancyhf{} % clear all header and footer fields
        \if@twoside
            \fancyhead[RO,LE]{\slshape \rightmark}
        \else
            \rhead{\slshape \rightmark}
        \fi
        \cfoot{\thepage}
        \if@twoside
            \fancyfoot[LE,RO]{\slshape \eeThDraft}
        \else
            \rfoot{\slshape \eeThDraft}
        \fi
        \renewcommand{\headrulewidth}{0pt}
        \renewcommand{\footrulewidth}{0pt}
    }
}

\DeclareOption{colorlinks}
{
    \AtBeginDocument
    {
        % Modified by SPL, 2007-09-07 
        % For some reason svgnames gives an undefined control sequence error 
        % on my Windows/MikTeX setup
        %\RequirePackage[svgnames,rgb,hyperref]{xcolor}
        
        \RequirePackage[dvipsnames,rgb,hyperref]{xcolor}         
        \colorlet{linkc}{\@linkc}
        \colorlet{citec}{\@citec}
        \colorlet{urlc}{\@urlc}
    }
    \PassOptionsToPackage{colorlinks,linkcolor=linkc,citecolor=citec,urlcolor=urlc}{hyperref}
}

\DeclareOption{twocolumn}{\OptionNotUsed}

\PassOptionsToClass{a4paper,11pt}{report}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

%\setlength{\topmargin}{-11.5mm} % changed from 4mm to accommodate header by CRL
\setlength{\topmargin}{-6mm}
%\setlength{\headheight}{5mm} % changed from 0mm to accommodate header by CRL
\setlength{\headheight}{1.5em}
\setlength{\headheight}{5mm}
%\setlength{\headsep}{10.5mm} % changed from 0mm to accommodate header by CRL
\setlength{\headsep}{10mm}
%\setlength{\textheight}{240mm} %changed from 242.4mm by CRL
\setlength{\textheight}{231.5mm}
\setlength{\textheight}{239.5mm}
%\setlength{\footskip}{13mm} % added by CRL
\setlength{\footskip}{0mm}
\setlength{\textwidth}{140mm}
\setlength{\parindent}{0em}
\setlength{\parskip}{2.8ex}
\renewcommand{\baselinestretch}{1.3} % 1.5 or double spacing too much
\brokenpenalty=9999
\widowpenalty=2000
\clubpenalty=2000
\setlength{\marginparwidth}{40pt}
\setlength{\marginparsep}{10pt}
\setlength{\oddsidemargin}{14.6mm}
\if@twoside
    \setlength{\evensidemargin}{4.6mm}
\fi
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{2}

\newcommand{\thesisplace}[1]{\renewcommand{\@thesisplace}{#1}}
\newcommand{\@thesisplace}{Johannesburg}

\newcommand{\thesisyear}[1]{\renewcommand{\@thesisyear}{#1}}
\newcommand{\@thesisyear}{\the\year}
\newcommand{\Month}{\ifcase\month\or
January\or February\or March\or April\or May\or June\or
July\or August\or September\or October\or November\or December\fi}

\newcommand{\logo}[1]
{
    \renewcommand{\@putlogo}{true}
    \renewcommand{\@logo}{#1}
}
\newcommand{\@putlogo}{false}
\newcommand{\@putlogotrue}{true} % to fool the ifx command
\newcommand{\@logo}{}

% KJN
\RequirePackage{graphicx}
%\DeclareGraphicsExtensions{.mps,.png,.pdf,.jpg,.jpeg}

\newcommand{\keywords}[1]{\renewcommand{\@keywords}{#1}}
\newcommand{\@keywords}{}

\newcommand{\linkcolors}[3]
{
    \renewcommand{\@linkc}{#1}
    \renewcommand{\@citec}{#2}
    \renewcommand{\@urlc}{#3}
}

% Modified by SPL, 2007-09-07
% All colours default to black, available in most colour name sets 
\newcommand{\@linkc}{Black} % colour for in-document links (e.g. in table of contents)
\newcommand{\@citec}{Black} % colour for bibliographic citations
\newcommand{\@urlc}{Black} % colour for hyperlinks to the Internet

\renewcommand{\maketitle}
{
    \begin{titlepage}
        \setcounter{page}{0}  % fix for hyperref issue
        \hyphenpenalty=10000
        \vspace*{50pt}
        \pdfbookmark[1]{\@title}{TitlePage}
        {\Huge \bfseries \raggedright \@title \par} 
        \vspace*{40pt}
        \pretolerance=100{\Large \bfseries \@author \par}
        \vspace*{\fill}{\large \scshape \centering \eeThDraft \par}
        \vspace{\fill}
        \ifx\@putlogo\@putlogotrue
        {
            % no logo on title page
            \begin{center}\end{center}
        }
        \fi
        \hyphenpenalty=1000
        \vspace{\fill}
        {
            A \@thesistype\ submitted to the Faculty of Engineering and the Built Environment, University of the Witwatersrand, Johannesburg, in \@partial fulfilment of the requirements for the degree of \@degreetype . \par
            \vspace*{2em}
            \@thesisplace , \Month\space\@thesisyear
        }
        \hyphenpenalty=1000
    \end{titlepage}
    \eeThDecl
}

\newenvironment{preamble}
{
    \pagenumbering{roman}
%    \pagestyle{plain} % may wish to remove headers in preamble
    \renewcommand{\headrulewidth}{0pt}
}
{
    \pagenumbering{arabic}
    % Make sure we now have cool page headings
    \renewcommand{\headrulewidth}{0.4pt}
    \lhead{\fancyplain{}{\leftmark}}
}

\renewenvironment{abstract}
{
    \clearpage
    \phantomsection
    \chapter*{Abstract}
    \addcontentsline{toc}{chapter}{Abstract}
}
{
    \par
    \newpage
}

\newenvironment{dedication}
{
    \vspace*{50pt}
    \begin{center}
    \itshape 
    \phantomsection
    \addcontentsline{toc}{chapter}{Dedication} % SPL 2009-04-08
}
{
    \end{center}
    \rmfamily
    \par
    \newpage
}

\newenvironment{acknowledgements}
{
    \clearpage
    \phantomsection
    \chapter*{Acknowledgements}
    \addcontentsline{toc}{chapter}{Acknowledgements}
}
{
    \par
    \newpage
}

\newenvironment{preface}
{
    \clearpage
    \phantomsection
    \chapter*{Preface}
    \addcontentsline{toc}{chapter}{Preface}
}
{
    \par
    \newpage
}

\renewcommand{\tableofcontents}
{
    \clearpage
    \phantomsection
    \chapter*{\contentsname \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}
    \addcontentsline{toc}{chapter}{Contents}
    \@starttoc{toc}
}

\renewcommand{\listoffigures}
{
    \clearpage
    \phantomsection
    \chapter*{\listfigurename \@mkboth{\uppercase{\listfigurename}}{\uppercase{\listfigurename}}}
    \addcontentsline{toc}{chapter}{\listfigurename}
    \@starttoc{lof}
}

\renewcommand{\listoftables}
{
    \clearpage
    \phantomsection
    \chapter*{\listtablename \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}
    \addcontentsline{toc}{chapter}{\listtablename}
    \@starttoc{lot}
}

% KJN for preamble
\newcommand{\listsymbolname}{List of Symbols}
\newcommand{\listofsymbols}
{
    \clearpage
    \phantomsection
    \chapter*{\listsymbolname \@mkboth{\uppercase{\listsymbolname}}{\uppercase{\listsymbolname}}}
    \addcontentsline{toc}{chapter}{\listsymbolname}
    The principal symbols used in this thesis are summarised below, and the first equation in which each symbol appears is given.\par
    % The units are shown in square brackets and the first equation where the symbol is used is given.
    \@starttoc{los}
}

\newcommand{\nomenclaturename}{Nomenclature}
\newenvironment{nomenclature}
{
    \clearpage
    \phantomsection
    \chapter*{\nomenclaturename \@mkboth{\uppercase{\nomenclaturename}}{\uppercase{\nomenclaturename}}}
    \addcontentsline{toc}{chapter}{\nomenclaturename}
}
{
    \par
    \newpage
}

\let\stdbibliography\bibliography
\newcommand{\references}[2]
{
    \clearpage
    \phantomsection
    \renewcommand\bibname{References}
    % Added by SPL, 2007-09-07
    % Causes left header to be typeset in ordinary case - not uppercase
    % This should also be added for the bibliography
    \renewcommand\bibsection{\chapter*{\bibname \@mkboth{{\bibname}}{{\bibname}}}}
    \addcontentsline{toc}{chapter}{\bibname}
    \bibliographystyle{#2}
    \stdbibliography{#1}

}
\newcommand{\bib}[2]
{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{chapter}{Bibliography}
    \bibliographystylebib{#2}
%    \renewcommand\@biblabel[1]{\ensuremath{\bullet}} % bullet items, don't number
    \renewcommand\@biblabel[1]{} % KJN
    \bibliographybib{#1}
}

\renewcommand{\chapter}{\clearpage \thispagestyle{plain} \secdef \EETchap \EETchaps}
\newcommand{\EETchap}[2][?]
{
    \refstepcounter{chapter}
    \addcontentsline{toc}{chapter}{\protect \numberline{\thechapter} #1}
    \vspace*{50\p@}
    {
        \parindent \z@ \raggedright
        \ifnum \c@secnumdepth > \m@ne
            \LARGE \bfseries \@chapapp{} \thechapter \par
            \vskip 15\p@
        \fi
        \huge \bfseries #2 \par
        \nobreak
        \vskip 30\p@
    }
    \chaptermark{#1}  % KJN
}
\newcommand{\EETchaps}[1]
{
    \vspace*{50\p@}
    {
        \parindent \z@ \raggedright \huge \bfseries #1 \par
        \nobreak
        \vskip 30\p@
    }
}

\RequirePackage{array}
\newenvironment{where}
{
    \setlength{\@rcwhere}{\textwidth}
    \addtolength{\@rcwhere}{-\@lcsym}
    \addtolength{\@rcwhere}{-\@spwhere}
    \addtolength{\@rcwhere}{-\@eqwhere}
    \addtolength{\@rcwhere}{-3\tabcolsep}
    where \hfill \nopagebreak\\ \hspace*{\@spwhere}
    \begin{tabular}{>{\hfill\(}p{\@lcsym}<{\)}@{ = }p{\@rcwhere}}
}
{\end{tabular}}

% KJN for primary equation referencing
\newcommand{\addsymbol}[2]{\addtocontents{los}{\protect \makenicesymbolline{#1}{#2, {\em Equation~(\theequation)}}}}
%\newcommand{\addsymbol}[2]{\addtocontents{los}{\protect \makenicesymbolline{#1}{#2}}}

% KJN for primary equation referencing
\newcommand{\wheresymbol}[2]{\addtocontents{los}{\protect \makenicesymbolline{#1}{#2, {\em Equation~(\theequation)}}}#1 & #2}

\newlength{\@lcsym} \setlength{\@lcsym}{5em}
\newlength{\@mcsym} \setlength{\@mcsym}{2em}
\newlength{\@rcsym} \setlength{\@rcsym}{\textwidth}
% KJN fix to remove annoying warning about overfull box
\addtolength{\@rcsym}{-8pt}
\addtolength{\@rcsym}{-\@lcsym}
\addtolength{\@rcsym}{-\@mcsym}
\newlength{\@spwhere} \setlength{\@spwhere}{2em}
\newlength{\@eqwhere} \settowidth{\@eqwhere}{ = }
\newlength{\@rcwhere} \setlength{\@rcwhere}{\textwidth}
\addtolength{\@rcwhere}{-\@lcsym}
\addtolength{\@rcwhere}{-\@spwhere}
\addtolength{\@rcwhere}{-\@eqwhere}
\addtolength{\@rcwhere}{-3\tabcolsep}

\newcommand{\makenicesymbolline}[2]
{
    \begin{minipage}[t]{\@lcsym}\hfill \ensuremath{#1} \end{minipage}
    $\hspace*{\@mcsym}$
    \begin{minipage}[t]{\@rcsym}#2 \end{minipage} \par
}

% Special for algorithm
% Needs to be loaded before hyperref unfortunately
% SPL 2007-10-25 does not seem necessary
%\RequirePackage[plain,chapter]{algorithm}
%\RequirePackage{algorithmic}

\RequirePackage{ifpdf}
\ifpdf
%    \RequirePackage[pdftex,a4paper,pdfborder={0 0 0},bookmarks,bookmarksnumbered,bookmarksopenlevel=1,hyperindex,breaklinks,pdfpagelayout=OneColumn,pdfstartview=FitH,pdfview=FitH]{hyperref}
% KJN mods
% Note plainpages and pdfpagelabels fix "destination with same identifier" warning; use pdfstartview, pdfview=FitV for full page view
    \RequirePackage[plainpages=false,pdfpagelabels,pdftex,pdfborder={0 0 0},bookmarks,bookmarksnumbered,bookmarksopenlevel=2,hyperindex,breaklinks,pdfpagelayout=SinglePage,pdfstartview=FitH,pdfview=FitH]{hyperref}
    \AtBeginDocument
    {
        \pdfadjustspacing=1
        \hypersetup
        {
            pdfauthor = {\@author},
            pdftitle = {\@title},
            pdfsubject = {A \@thesistype\ submitted to the Faculty of Engineering and the Built Environment, University of the Witwatersrand, Johannesburg},
            pdfkeywords = {\@keywords}
        }
    }
\else
    \RequirePackage[dvips,a4paper]{hyperref}
\fi

% start KJN
%% Definitions for floats - from IEEE
%%
%% Normal Floats
\intextsep 1.5\baselineskip plus  0.2\baselineskip minus  0.2\baselineskip
\floatsep 1\baselineskip plus  0.2\baselineskip minus  0.2\baselineskip
\textfloatsep 1.7\baselineskip plus  0.2\baselineskip minus  0.4\baselineskip
\@fptop 0pt plus 1fil
\@fpsep 0.75\baselineskip plus 2fil
\@fpbot 0pt plus 1fil
\def\topfraction{1.0}
\def\bottomfraction{.4}
\def\floatpagefraction{0.8}
\def\textfraction{.2}
% end KJN

\endinput
