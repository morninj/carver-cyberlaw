\ProvidesClass{carver-cyberlaw}

\LoadClass[12pt]{article}

% Change font to Times New Roman
\RequirePackage[xetex]{graphicx}
\RequirePackage{fontspec,xunicode}
\setmainfont{Times New Roman}

% Margins
\RequirePackage[top=0.75in,bottom=0.75in,left=1.5in,right=1.5in]{geometry}

% Remove paragraph indentation
\setlength{\parindent}{0pt}

% Set paragraph vertical space
\setlength{\parskip}{\baselineskip}

% Format section and subsection titles
\RequirePackage{titlesec}
\titleformat
    {\section}              % Command
    {\bfseries}             % Format
    {\Roman{section}. }     % Label
    {0em}                   % Separator
    {}                      % Before code
\titlespacing{\section}{0pt}{0pt}{-\parskip}
\titleformat
    {\subsection}                           % Command
    {\bfseries}                             % Format
    {\hspace{2em}\Alph{subsection}. }       % Label
    {0em}                                   % Separator
    {}                                      % Before code
\titlespacing{\subsection}{0pt}{0pt}{-\parskip}

% Format title and author
\makeatletter
    \renewcommand\@maketitle{%
        {\centering{}\bfseries \@title \par}
        {\centering{}\bfseries \@author \par}
    }
\makeatother

% Make footnote references flush with the left margin
\RequirePackage[hang,flushmargin]{footmisc} 

% Add spacing between footnote reference and footnote text
\makeatletter
    \long\def\@makefntext#1{\leavevmode%
      \@thefnmark\hspace{1em}\nobreak
      \relax#1%
    }
\makeatother

% Format page numbers as Page X of Y
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt} % Remove header rule
\fancyhead{} % Remove all header contents
\cfoot{\small Page \thepage\ of \pageref{LastPage}}
