%-----------------------------------------------------------------------------
% Author: Rayla Kurosaki
% GitHub: https://github.com/rkp1503
%-----------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rayla-thesis-dissertation}%[Rayla's Thesis/Dissertation's Class]
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
% 3rd Party Packages
%-----------------------------------------------------------------------------
\usepackage{amsmath}
% \usepackage{amssymb}
\usepackage[backend=biber,style=numeric,sorting=ynt]{biblatex}
\usepackage{fancyhdr}
\usepackage{float}
\usepackage{geometry}
\usepackage{graphicx}
\usepackage{lipsum}
% \usepackage{titlesec}
% \usepackage{xcolor}

%-----------------------------------------------------------------------------
% Geometry
%-----------------------------------------------------------------------------
\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}
    
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
            \includegraphics[scale=0.15]{figures/\myLogoLoc}
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
% bibliography settings
%-----------------------------------------------------------------------------
\addbibresource{main.bib}
