\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{constitution}[2009/05/15 v0.0.1 Document class for typesetting a constitution]

\LoadClass{report}

\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}

\setcounter{secnumdepth}{3}

\titleclass\article{straight}[\part]
\titleformat{\article}[display]{\filcenter\normalfont\bfseries}{Article \thearticle}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}
\renewcommand\thearticle{\Roman{article}}

\titlecontents{article}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}

\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\section}[runin]{\normalfont\scshape}
{Section \thesection.}{.5em}{}[\quad]
\renewcommand{\thesection}{\arabic{section}}

\titleformat{\subsection}[runin]{\normalfont}{\alph{subsection}.}{.5em}{\bfseries}[\quad]
\titlespacing{\subsection}{\parindent}{*2}{\wordsep}
\renewcommand{\thesubsection}{\alph{subsection}}

\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii}}