% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "1.0",
%     date            = "24 January 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/01/24 v1.0 Dissertate Class]
% If you need to change font size etc. 
\LoadClass[12pt, oneside, a4paper]{book}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}


% for links in references
\usepackage{hyperref}

% ---- Chapter/section formatting
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage{titlesec, blindtext, color}
\newcommand{\hsp}{\hspace{10pt}}

% Chapter format -- using fncychap
\usepackage[Sonny]{fncychap}

%  Section and subsections -- using titlesec
\titleformat{\section}[hang]{\Large\scshape}{\thesection.}{1em}{}
\titleformat{\subsection}[hang]{\large\itshape}{\thesection.}{1em}{}
\titleformat{\subsubsection}[hang]{\normalfont\itshape}{\thesection.}{1em}{}


% ----- From original template -- it's a mystery

\RequirePackage{kvoptions}
\DeclareStringOption{School}[]
\ProcessKeyvalOptions*
\RequirePackage{packages/\Dissertate@School/style}

\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{lettrine}
\RequirePackage{natbib}
% \RequirePackage[natbib=true, maxbibnames=3,doi=false,isbn=false,url=false]{biblatex}
%\renewcommand{\bibnumfmt}[1]{[#1]}

\makeatother
%\RequirePackage[width=5.75in, letterpaper]{geometry}
%\RequirePackage{fancyhdr}

\RequirePackage{geometry}
 \geometry{
    a4paper,
    right=30mm,
    left=30mm,
    top=30mm,
    bottom=30mm
 }



\usepackage[titletoc]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
% \setcounter{tocdepth}{1}

\RequirePackage{url}
\usepackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
\renewcommand{\cftsecfont}{\normalsize \scshape}
% \usepackage{fixltx2e}
%\usepackage{ragged2e}

\renewcommand\bibname{References}
\renewcommand\listfigurename{List of figures}
%\RaggedRight

\parindent 12pt

\RequirePackage{color}
\usepackage{epigraph}
\usepackage{hyperref}
\usepackage{xcolor}
\RequirePackage{url}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{siunitx}
\RequirePackage{physics}
%\sisetup{per-mode=symbol}
\DeclareSIUnit\year{yr}
\RequirePackage{cleveref}
\usepackage[T1]{fontenc}
\usepackage{kpfonts}%  for math    
\usepackage[mono=false]{libertine}%  serif and sans serif
\sisetup{range-phrase = \text{--}}
\sisetup{separate-uncertainty = true}
\sisetup{math-micro=\text{µ},text-micro=µ}
\DeclareSIUnit\gauss{G}
\DeclareMathOperator*{\argmax}{arg\,max} 
\providecommand\condprob[2]{P\left(#1\,\middle\vert\,#2\right)}
\newcommand{\overbar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent#1%
}

\iffalse

% Align reference numbers so that they do not cause an indent
\newlength\mybibindent
\setlength\mybibindent{0pt}
\makeatletter
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}
\makeatother
\fi
