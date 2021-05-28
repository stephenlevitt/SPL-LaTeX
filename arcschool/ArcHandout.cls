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

\usepackage{anyfontsize}                        % remove error messages re: font sizes

\RequirePackage{ifxetex}
\ifxetex
    \RequirePackage[uprightscript,
        charter,
        vvarbb,
        scaled=1.05]{newtxmath}                 % LaTeX math font which matches Charter: https://texdoc.org/serve/xcharter-doc.pdf/0
                                                % must be before fontspec: https://tex.stackexchange.com/questions/134515/how-to-combine-latex-fonts-with-system-fonts-in-xelatex
    % \usepackage[T1]{fontenc}
    % \RequirePackage{libertine}                  % https://tex.stackexchange.com/questions/105970/font-problem-with-xelatex
    \RequirePackage{fontspec}                   % font selection when using xelatex and Windows system fonts

    % \setmainfont[                             % when using XeLaTeX to set the Libertine font
    %     Ligatures = TeX,
    %     Extension = .otf,
    %     SmallCapsFeatures={Letters=SmallCaps},
    %     UprightFont    = *_R,
    %     ItalicFont     = *_RI,
    %     BoldFont       = *_RB,
    %     BoldItalicFont = *_RBI,
    % ]{LinLibertine}

    \setmainfont[
        Ligatures=TeX,                                          % [Ligatures=TeX] required for smart quotes, m-dashes etc.
    ]{XCharter}                                                 % LaTeX font, includes OTF version for use with xelatex:
                                                                % https://tex.stackexchange.com/questions/205532/charter-font-with-xelatex
    \newfontfamily\schoolfont{HelveticaNeueLTStd-Lt}[           % Install as a Windows font, use to typeset the school name in the title bar
        Scale=1.1,
        Color=003179,
        BoldFont = Helvetica Neue LT Std
    ]

    \setmonofont[
        Scale=0.85,
    ]{Bitstream Vera Sans Mono}                                 % Install as a Windows font, for code listings - san serif, monospaced;
                                                                % scaled down slightly because when inlined it appears larger than the main font
    % \newfontfamily\quotefont[Ligatures=TeX]{Linux Libertine O}  % LaTeX font which includes an OTF version, use for quotation marks
                                                                % more info: http://tex.stackexchange.com/questions/25249/how-do-i-use-a-particular-font-for-a-small-section-of-text-in-my-document?

    % \newfontfamily\quotefont[Ligatures=TeX]{Libertinus Serif}   % selects Libertine as the quote font:
                                                                % https://tex.stackexchange.com/questions/484435/linux-libertine-font-cannot-be-found


    \RequirePackage[verbose=silent]{microtype}                  % character protusion and font expansion for better alignment at right margin;
                                                                % silence warnings about missing font characters
\else % assuming pdfLaTeX driver
    \pdfminorversion=6                                          % Produce PDF version 1.6 (removes errors when including PDF 1.6 images):
                                                                % https://tex.stackexchange.com/questions/202300/options-controlling-pdf-output
    \RequirePackage{lmodern}                                    % contains some high quality glyphs, allows fonts of arbitrary sizes
    \RequirePackage[T1]{fontenc}
    \RequirePackage{XCharter}                                   % main font for document text, supports font expansion (see microtype)
    \RequirePackage[uprightscript,charter,vvarbb,scaled=1.05]{newtxmath}  % maths font: https://texdoc.org/serve/xcharter-doc.pdf/0
    \RequirePackage[scaled=0.85]{beramono}                      % for code listings, LaTeX Type 1 font
    \newcommand*\quotefont{\fontfamily{LinuxLibertineT-LF}}     % selects Libertine as the quote font
    \RequirePackage[verbose=silent]{microtype}                  % character protusion and font expansion for better alignment at right margin
\fi
%---------------------------------------

\RequirePackage[svgnames]{xcolor}                           % for defining custom colours
\definecolor{SchoolLogoBlue}{HTML}{1A417A}
%---------------------------------------

\setlength{\parskip}{\medskipamount}
\setlength{\parindent}{0pt}
\setlength{\unitlength}{1mm}

\newcounter{qno}
\newcounter{eno}
\newcounter{chno}
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
    \end{center}
    }

    \newcommand{\makeheads}{\hfuzz=\maxdimen\maketitle\hfuzz=0.1pt} % \hfuzz is to remove overfull box warnings for the header
    \newcommand{\omithead}{\renewcommand{\@maketitle}{}}
    \title{}\author{}\date{}  % default these to nothing
    \newcommand{\question}{\addtocounter{qno}{1}\subsection*{Question \theqno}}
    \newcommand{\exercise}{\refstepcounter{eno}\textcolor{SchoolLogoBlue}{\subsubsection*{Exercise \thesection.\theeno}}}  % \textcolor{blue!60!black}
    \newcommand{\challenge}{\addtocounter{chno}{1}\subsection*{Challenge \thechno}}

    \newcommand{\quest}{\addtocounter{qno}{1}\par{\textbf Q\theqno :\quad}}
    % \newcommand{\do}{\addtocounter{eno}{1}\subsubsubsection*{Exercise \theeno}}
    % \newcommand{\guideline}{\addtocounter{eno}{1}\subsubsection*{Guideline \thesection.\theeno}}

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
