%On définit une nouvelle classe définie à partir de book
\ProvidesClass{diapo}
\LoadClassWithOptions{beamer}

\setbeamersize{text margin left = 0pt}
\setbeamersize{text margin right = 0pt}

%La base (mettre english si rapport de stage en anglais)
\usepackage[utf8]{luainputenc}
\usepackage[T1]{fontenc}
\usepackage[english]{babel}

% Pour définir une commande en plusieurs langues
\newcommand{\multilangnewcommand}[3]{%
  \newcommand{#1}{%
    \iflanguage{english}{#2}{%
    \iflanguage{french}{#3}{%
    }}%
  }%
}

% To define a command with multiple optional arguments
\usepackage{xargs}

% To include file
\usepackage{filecontents}

% Outline of the presentation
\multilangnewcommand{\outline}{Outline}{Sommaire}

%Pour pouvoir mettre des images
\usepackage{graphicx}

%Pour pouvoir modifier les énumérations
\iflanguage{french}{\frenchbsetup{StandardLists=true}}
%\usepackage{enumitem}
%\usepackage[ampersand]{easylist}
%\setlist[]{leftmargin=*}

%Pour souligner sur plusieurs lignes
\usepackage{ulem}
\normalem

%Pour plus de maths et de chimie
\usepackage{amsmath,amsfonts,amssymb,amsthm,dsfont,bm}
\usepackage[overload]{empheq}
\usepackage[version=3]{mhchem} %Chimie
\usepackage{siunitx}  %Utilisation des unités SI


%Pour encadrer
\usepackage{fancybox}

%Si vous avez besoin de mettre du code source par exemple:
% \begin{lstlisting}
% Put your code here.
% \end{lstlisting}
% Ou:
% \lstinputlisting[language=Python]{source_filename.py}
\usepackage{listings}

% Pour du pseudo-code

\usepackage[english,noend]{algorithm2e}
\SetKwInput{Input}{Input}
\SetKwInput{Output}{Output}
\SetKwInput{Parameters}{Parameters}
\SetKwFor{BinarySearch}{Binary search on}{}{end}
\SetKw{Return}{Return}
\SetKw{And}{and}
\SetKw{From}{from}
\SetKw{To}{to}
\SetKw{Between}{between}
\setlength{\algomargin}{0em}
\DontPrintSemicolon
\setlength{\algomargin}{0em}

%Pour les tableaux
\usepackage{array} %Centrer les tableaux
\usepackage{multirow} %multiligne et multicolonne
\usepackage{rotating} %Rotate header column
\usepackage{arydshln} %ligne en pointillé
\usepackage[hang, small,labelfont=bf,up,textfont=it,up]{caption} %Nom des tables personnalisés
\usepackage{booktabs} %Tables avec des lignes marquées

%Pour que les caractères sous l'accolade soient en taille normale
\newcommand\displayUB[2]{\underbrace{#1}_{\displaystyle #2}}

%On définit l'envirronnement propre au théorème
\theoremstyle{plain} % default (corps en italique)
\newtheorem{thm}{Théorème}
%\newtheorem{lem}[thm]{Lemme}
\newtheorem{prop}[thm]{Proposition}
\theoremstyle{definition} % (corps en texte normal)
\newtheorem{conj}{Conjecture}
\newtheorem*{rmq}{Remarque}

%Comme les minipages mais avec une taille adaptée au contenu
\usepackage{varwidth}

%Pour dessiner
\usepackage{xcolor}
\definecolor{bottle green}{RGB}{9, 106, 9}
\definecolor{kaki}{rgb}{.5,.5,0}
\definecolor{argon orange}{RGB}{237, 128, 0}
\definecolor{argon gray}{RGB}{83, 86, 90}

%Pour dessiner
\usepackage{tikz}
\usetikzlibrary{calc,arrows,automata}
\usetikzlibrary{decorations,decorations.pathreplacing}
\usetikzlibrary{patterns}
\usepackage{tikzscale}
\usepackage{pgfplots}

% Gnuplot picture
\usepackage{latexsym, keyval, ifthen, moreverb, gnuplot-lua-tikz}
\usepackage{gnuplottex}

% Symbole euro
\usepackage{eurosym}

% Pour barrer du text (oblique)
\usepackage{cancel}
\newcommand\Ccancel[2][black]{\renewcommand\CancelColor{\color{#1}}\cancel{#2}}

% Fix parenthesis spaces
\let\originalleft\left
\let\originalright\right
\def\left#1{\mathopen{}\originalleft#1}
\def\right#1{\originalright#1\mathclose{}}

% Raccourci utile
\newcommand{\red}[1]{\textcolor{red}{#1}} % texte en rouge
\newcommand{\tbc}{\red{\texttt{To be completed}}}
\newcommand{\todo}[1]{\red{\texttt{(TO DO: #1)}}}
\def\ds{\displaystyle}
\newcommand{\ie}{i.e.,~}
\newcommand{\eg}{e.g.,~}
\newcommand{\NP}{\operatorname{NP}}

% Template beamer
\input{template_theme.tex}

% Mathematic command
\input{math_command.tex}

