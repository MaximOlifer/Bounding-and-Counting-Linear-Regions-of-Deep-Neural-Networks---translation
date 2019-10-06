\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecture-notes}[2019/07/04 LaTeX class for lecture notes]
\LoadClass[a4paper,12pt]{article}

\newif\if@russian

\DeclareOption{russian}{\@russiantrue}

\ProcessOptions\relax

\if@russian
    \RequirePackage[T2A]{fontenc}
    \RequirePackage[utf8]{inputenc}
    \RequirePackage[russian]{babel}

    % добавить точку после номера теоремы. LaTeX в примерах http://www.ccas.ru/voron/download/voron05latex.pdf
 
\fi

\renewcommand{\[}{\begin{equation}}
\renewcommand{\]}{\end{equation}}

\newtheorem{Theorem}{Теорема}
\newtheorem{Lemma}{Лемма}
\newtheorem{Definition}{Определение}
\newtheorem{Corollary}{Следствие}
\newenvironment{Proof}{\par\noindent{\bf Доказательство.}}{\hfill$\scriptstyle\blacksquare$}