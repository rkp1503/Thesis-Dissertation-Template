%-----------------------------------------------------------------------------
% Author: Rayla Kurosaki
% GitHub: https://github.com/rkp1503
%-----------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rayla-thesis-dissertation}[Rayla's Thesis and Dissertation Class]
\LoadClass[twoside]{report}

%-----------------------------------------------------------------------------
% Defining new commands
%-----------------------------------------------------------------------------
\newcommand{\myUniversity}[1]{\newcommand{\myUniversityLoc}{#1}}
\newcommand{\myCollege}[1]{\newcommand{\myCollegeLoc}{#1}}
\newcommand{\myDepartment}[1]{\newcommand{\myDepartmentLoc}{#1}}
\newcommand{\myLogo}[1]{\newcommand{\myLogoLoc}{#1}}
\newcommand{\myTitle}[1]{\newcommand{\myTitleLoc}{#1}}
\newcommand{\myName}[1]{\newcommand{\myNameLoc}{#1}}
\newcommand{\myAdvisor}[1]{\newcommand{\myAdvisorLoc}{#1}}
\newcommand{\submissionDate}[1]{\newcommand{\submissionDateLoc}{#1}}

%-----------------------------------------------------------------------------
% 3rd party packages
%-----------------------------------------------------------------------------
\usepackage{amsmath}
\usepackage[backend=biber,style=numeric,sorting=ynt]{biblatex}
\usepackage{fancyhdr}
\usepackage{float}
\usepackage{geometry}
\usepackage{graphicx,epstopdf}
\usepackage{lipsum}

%-----------------------------------------------------------------------------
% Geometry
%-----------------------------------------------------------------------------
\geometry{left=2cm,right=2cm,top=2cm,bottom=2cm}
\setlength\parindent{0pt}

%-----------------------------------------------------------------------------
% Setting figures directory
%-----------------------------------------------------------------------------
\graphicspath{{figures/}}
    
%-----------------------------------------------------------------------------
% Custom Title Style
%-----------------------------------------------------------------------------
\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \begin{center}
        \newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
        \textsc{\LARGE \myUniversityLoc}\\[0.5cm]
        \textsc{\Large \myCollegeLoc}\\[0.5cm]
        \textsc{\large \myDepartmentLoc}\\[0.5cm]
        \begin{figure}[H]
            \centering
            \includegraphics[scale=0.15]{\myLogoLoc}
            \label{fig:logo}
        \end{figure}
        \HRule\\[0.4cm]
        {\huge \textbf{\myTitleLoc}}\\[0.4cm]
        \HRule\\[1.5cm]
    \end{center}
    \begin{align*}
        &\text{By:} & &\text{\myNameLoc}\\
        &\text{Research Advisor:} & &\text{\myAdvisorLoc}\\
        &\text{Submission Date:} & &\text{\submissionDateLoc}
    \end{align*}
}

%-----------------------------------------------------------------------------
% Custom Headers and Footers
%-----------------------------------------------------------------------------
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.4pt}
\fancyhead{}
\fancyhead[LE]{\myTitleLoc}
\fancyhead[CE]{}
\fancyhead[RE]{}
\fancyhead[LO]{}
\fancyhead[CO]{}
\fancyhead[RO]{\myTitleLoc}
\renewcommand{\footrulewidth}{0.4pt}
\fancyfoot{}
\fancyfoot[LE]{\thepage}
\fancyfoot[CE]{}
\fancyfoot[RE]{\myNameLoc}
\fancyfoot[LO]{\myNameLoc}
\fancyfoot[CO]{}
\fancyfoot[RO]{\thepage}

%-----------------------------------------------------------------------------
% Custom referencing
%-----------------------------------------------------------------------------
% Referencing Chapters
\newcommand{\chpref}[1]{Chapter~\ref{#1}}
% Referencing Sections
\newcommand{\secref}[1]{Section~\ref{#1}}
% Referencing Appendicies
\newcommand{\appref}[1]{Appendix~\ref{#1}}
% Referencing an equation
\renewcommand{\eqref}[1]{Equation~(\ref{#1})}
% Referencing a system of equations
\newcommand{\sysref}[1]{System~(\ref{#1})}
% Referencing a figure
\newcommand{\figref}[1]{Figure~\ref{#1}}
% Referencing a table
\newcommand{\tabref}[1]{Table~\ref{#1}}

%-----------------------------------------------------------------------------
% Bibliography settings
%-----------------------------------------------------------------------------
\addbibresource{main.bib}
