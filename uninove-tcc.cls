%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade
%% Nove de Julho
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is Martin Mariano, contato@martinmariano.com
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

%% Para compilar corretamente, você deve utilizar a engine XelateX

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uninove-tcc}[2019/04/06 Classe para construção de TCC de bacharelado UNINOVE]

% Run in non-stop mode
\DeclareOption{nonstop}{\nonstopmode}

\ProcessOptions\relax

% Use article class as the base class.
\LoadClass[
	% -- opções da classe memoir --
	12pt,				% tamanho da fonte
	openright,			% capítulos começam em pág ímpar (insere página vazia caso preciso)
	oneside,			% para impressão em recto e verso. Oposto a oneside
	a4paper,			% tamanho do papel.
	% -- opções da classe abntex2 --
	%chapter=TITLE,		% títulos de capítulos convertidos em letras maiúsculas
	%section=TITLE,		% títulos de seções convertidos em letras maiúsculas
	%subsection=TITLE,	% títulos de subseções convertidos em letras maiúsculas
	%subsubsection=TITLE,% títulos de subsubseções convertidos em letras maiúsculas
	% -- opções do pacote babel --
	english,			% idioma adicional para hifenização
	brazil				% o último idioma é o principal do documento
	]{abntex2}

% XeLaTeX packages.
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

% Fonte: Times New Roman
% Dependendo de sua distribuição, você deve fazer o download do pacote de
% fontes ttf-mscore ou semelhante, que contém a fonte Times New Roman
\setmainfont
[Path=/usr/share/fonts/TTF/,
ItalicFont=timesi,
BoldFont=timesbd,
BoldItalicFont=timesbi]
{times.ttf}

% Novas variáveis, pois o preambulo da UNINOVE é fixo
\newcommand{\curso}[1]{
  \renewcommand{\imprimircurso[1]{#1}}
}

\newcommand{\linhadepesquisa}[1]{
  \renewcommand{\imprimirlinhadepesquisa[1]{#1}}
}

\newcommand{\imprimircurso}[1]{#1}
\newcommand{\imprimirlinhadepesquisa}[1]{#1}

% Preambulo muda no inicio e ao fim
\renewcommand{\imprimirpreambulo}{
  Projeto de Pesquisa apresentado ao Curso de Bacharelado em 2019 da
  Universidade Nove de Julho como requisito parcial para obtenção do grau de
  Bacharel em \imprimircurso\\.
  \par
  \vspace*{0.25cm}
  Linha de Pesquisa: \imprimirlinhadepesquisa\\.
  \par
  \vspace*{0.25cm}
  Orientador: \imprimirorientador.
}

\newcommand{\imprimirpreambuloaprovacao}{
  Projeto de Pesquisa apresentado ao Curso de Bacharelado em 2019 da
  Universidade Nove de Julho como requisito parcial para obtenção do grau de
  Bacharel em \imprimircurso\\, sob orientação do Prof. Dr. \imprimirorientador.
}

% Alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center

    \vspace*{1cm}

    {\ABNTEXchapterfont\large\uppercase\imprimirinstituicao}

    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    \vfill

    \large\imprimirlocal

    \large\imprimirdata

    \vspace*{1cm}
  \end{capa}
}


% Conteudo padrao da Folha de Rosto
\renewcommand{\folhaderostocontent}{
  \begin{center}

    %\vspace*{1cm}
    {\ABNTEXchapterfont\large\imprimirautor}

    \vspace*{\fill}\vspace*{\fill}
    \begin{center}
      \ABNTEXchapterfont\bfseries\Large\imprimirtitulo
    \end{center}
    \vspace*{\fill}

    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
          \SingleSpacing
         \imprimirpreambulo
       \end{minipage}%
       \vspace*{\fill}
    }%

    {\abntex@ifnotempty{\imprimirinstituicao}{
        {\large\imprimirlocal} %<<<< isto imprime o local
        \par
        {\large\imprimirdata} %<<<< isto imprime a data
        \vspace*{\fill}
      }
    }

    %{\large\imprimirorientadorRotulo~\imprimirorientador\par}
    %\abntex@ifnotempty{\imprimircoorientador}{%
    %   {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
    }%
    %\vspace*{\fill}

    %{\large\imprimirlocal} %<<<< isto imprime o local
    %\par
    %{\large\imprimirdata} %<<<< isto imprime a data
    \vspace*{1cm}

  \end{center}
}

% Assinatura do professor orientador
\newcommand\namegroup[1]{%
   \begin{minipage}[t]{0.5\textwidth}
   %\vspace*{1.5cm}  % leave some space above the horizontal line
   \hrule
   \vspace{1mm} % just a bit more whitespace below the line
   \centering
   \begin{tabular}[t]{c}
   #1
   \end{tabular}
 \end{minipage}
}

% data e assinatura ao fim da página de aprovação
 \newcommand{\dataeassinatura}{
    \begin{tabular}{cc}
      Data:
      \overline{\quad\qquad}
      /
      \overline{\quad\qquad}
      /
      \overline{\quad\qquad}
    \end{tabular}%
    \namegroup{Assinatura do professor orientador}
 }