\LoadClass[a4paper,10pt]{article}
	\NeedsTeXFormat{LaTeX2e}
	\ProvidesClass{woodnblog}[2025/01/15 Nathan Wood contact@nwoodweb.xyz]

	% Requisite packages
	\RequirePackage[margin=1.5in]{geometry}
	\RequirePackage{xcolor}
	\RequirePackage{graphicx}
	\RequirePackage{amsmath,amsfonts,amssymb}
	\RequirePackage{fancyhdr}  % custom headers/footers
	\RequirePackage{lastpage}
	\RequirePackage[utf8]{inputenc}
	\RequirePackage[english]{babel}
	\RequirePackage{indentfirst}
	\RequirePackage{float}
	\RequirePackage{listings}
	\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
	\ProcessOptions\relax

	% Article Class Edit

	% Green Title Color
	\definecolor{titlecol}{HTML}{005f00}

	% Blue Section, Bold, and Italic Color
	\definecolor{sectioncol}{HTML}{120A8F}
	\definecolor{boldcol}{HTML}{120A8F}

	% Listing background color
	\definecolor{listingbg}{HTML}{ffffea}

	%URL SETUP
	\RequirePackage[colorlinks=true]{hyperref}

	\newcommand{\titlecolor}{\color{titlecol}}
	\newcommand{\sectioncolor}{\color{sectioncol}}


	\renewcommand{\maketitle}{%
		\begingroup
		\fontsize{24}{32}
		\fontseries{b}
		\fontshape{sl}
		\selectfont
		\titlecolor
		\@title
		\medskip
		\endgroup
		%
	}
	\renewcommand{\section}{%
	\@startsection
	{section}{1}{0pt}{-1.5ex plus -1ex minus -0.45ex}%
	{1ex plus .2ex}{\large\fontseries{b}\selectfont\sectioncolor}%
	}
	
	\renewcommand{\subsection}{%
	\@startsection
	{subsection}{2}{0pt}{-1.25ex plus -1ex minus -0.2ex}%
	{0.75ex plus .1ex}{\normalsize\fontseries{b}\selectfont\sectioncolor}%
	}
	% page number / total pages

	\pagestyle{fancy}
	\lhead{\@title}
	\chead{}
	\rhead{}
	\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{1pt}
	
	\newcommand{\name}[1]{%
		\lfoot{#1}
		}
	\newcommand{\license}[1]{%
		\cfoot{#1}
	}
	
	\rfoot{\thepage/\pageref{LastPage}}

	% Code listings

	\lstdefinestyle{mystyle}{
		backgroundcolor = \color{listingbg},
		basicstyle = \small,
		keywordstyle = \bfseries,
		commentstyle = \color{sectioncol},
		numbers = left,
		numbersep = 5pt,
		showtabs = false,
	}
	\lstset{style=mystyle}
