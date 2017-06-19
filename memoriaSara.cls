\ProvidesClass{memoriaSara}[]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{book}%
}
\ProcessOptions\relax
\LoadClass{book}


\usepackage[spanish,es-tabla]{babel} %Paquete que incluye los idiomas
\usepackage[utf8]{inputenc}
\usepackage{graphicx} %Paquete de introducción de gráficos
\graphicspath{ {Imagenes/} }
\usepackage{fancyhdr} %Paquete de introducción de encabezado
\usepackage{hyperref} %Paquete de enlaces en el texto
\usepackage{float} %Para ejecutar el comando \begin{figure}[H] ..... \end{figure}, que coloca los gráficos dónde se quiere
\usepackage[left=2.5cm,top=3.25cm,right=2.5cm,bottom=3.25cm, marginparsep=58pt,marginparwidth=2mm,headheight=15.8pt]{geometry}  %Paquete de márgenes de página
\usepackage{etoolbox}
\usepackage{appendix}
\usepackage[labelfont=bf]{caption}
\usepackage{enumerate}
\setlength{\parindent}{0cm}
\setlength{\parskip}{4mm} 

\usepackage{rotating}
\usepackage{booktabs}

\usepackage{listings,appendix,emptypage,verbatim,array}


\expandafter\def\csname ver@subfig.sty\endcsname{}


\usepackage[colorinlistoftodos,prependcaption,textsize=tiny,textwidth=2cm]{todonotes}

\renewcommand{\appendixname}{Apéndice}
\renewcommand{\appendixtocname}{Apéndice}
\renewcommand{\appendixpagename}{Apéndice}


\makeatletter
\pretocmd{\chapter}{\addtocontents{toc}{\protect\addvspace{15\p@}}}{}{}
\pretocmd{\section}{\addtocontents{toc}{\protect\addvspace{-8\p@}}}{}{}
\pretocmd{\subsection}{\addtocontents{toc}{\protect\addvspace{-8\p@}}}{}{}
\makeatother


\pagestyle{fancy} %Estilo de la página del paquete del encabezado

\fancyhf{}
\fancyhead[RO]{\leftmark} % En las páginas impares, parte derecha del encabezado, aparecerá el nombre de capítulo
\fancyhead[LE]{\rightmark} % En las páginas pares, parte izquierda del encabezado, aparecerá el nombre de sección
\cfoot{\thepage}