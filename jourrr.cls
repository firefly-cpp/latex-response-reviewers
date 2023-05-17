\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jourrr}[2023/05/16 Response to reviewers template]

% load class
\LoadClass[11pt,a4paper]{article} % Font size and paper type

% include dependencies
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{parskip}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{lipsum}
\RequirePackage[iso,american]{isodate}
\RequirePackage{fontawesome5}
\RequirePackage{geometry}
\RequirePackage{totcount}

% no indent for whole document
\setlength\parindent{0pt}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

%----------------------------------------------------------------------
% process options
\ProcessOptions\relax

% styling of document
%----------------------------------------------------------------------

\RequirePackage{orcidlink}

% set margins
 \newgeometry{ % Defaults for a4
    left=35mm, % default 25
    right=35mm, % default 25
    top=20mm, % default 20
    bottom=45mm} % default 20
\savegeometry{title}
 \newgeometry{ % Defaults for a4
    left=25mm, % default 25
    right=25mm, % default 25
    top=20mm, % default 20
    bottom=20mm} % default 20
\savegeometry{doc}

\setlength{\headheight}{42.0pt}

% set a little indendation for paragraphs
\setlength{\parindent}{0pt}

% space between paragraphs
\setlength{\parskip}{1em}

%----------------------------------------------------------------------
% new command for the information of author
\newcommand{\responseheader}[1]{
%\noindent
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\pagestyle{fancy}
  \fancyhf{}
  % show in the middle
  \fancyhead[C]{\leavevmode\large
  \begin{tabular}[t]{c@{}}
    #1
  \end{tabular}}
}


%----------------------------------------------------------------------
% Your data
%----------------------------------------------------------------------
% % Name and Surname of the reviewer
\def\NameSurname#1{\def\@NameSurname{#1}}
\newcommand{\pNameSurname}{\@NameSurname}
%----------------------------------------------------------------------
% Submission data
%----------------------------------------------------------------------

% journal name
\def\JournalName#1{\def\@JournalName{#1}}
\newcommand{\pJournalName}{\@JournalName}

% title of your manuscript
\def\Title#1{\def\@Title{#1}}
\newcommand{\pTitle}{\@Title}

% manuscript Id
\def\ManuscriptID#1{\def\@ManuscriptID{#1}}
\newcommand{\pManuscriptID}{\@ManuscriptID}

% name of the Editor
\def\toEditor#1{\def\@toEditor{#1}}
\newcommand{\ptoEditor}{\@toEditor}

% name of the Editor
\def\Editor#1{\def\@Editor{#1}}
\newcommand{\pEditor}{\@Editor}

\def\SpecialIssue#1{\def\@SpecialIssue{#1}}
\newcommand{\pSpecialIssue}{\@SpecialIssue}


%
% FIRST PART
%

% Addressing the Person
\def\PersonAddressing#1{\def\@PersonAddressing{#1}}
\newcommand{\pPersonAddressing}{\@PersonAddressing}

% We thank editor
\def\Introduction#1{\def\@Introduction{#1}}
\newcommand{\pIntroduction}{\@Introduction}

% We thank reviewers
\def\ReviewerThank#1{\def\@ReviewerThank{#1}}
\newcommand{\pReviewerThank}{\@ReviewerThank}

% Valediction - Ending of the letter
\def\valediction#1{\def\@valediction{#1}}
\newcommand{\pvalediction}{\@valediction}

% Different predefined valedictions
\newcommand{\yourssincerely}[1]{Yours sincerely,\\}
\newcommand{\yoursfaithfully}[1]{Yours faithfully,\\}
\newcommand{\yourstruly}[1]{Yours truly,\\}
\newcommand{\bestregards}[1]{Best regards,\\}

% Signature
\def\signature#1{\def\@signature{#1}}
\newcommand{\psignature}{\@signature}

% SignaturePath
\def\signaturePath#1{\def\@signaturePath{#1}}
\newcommand{\pSignaturePath}{\@signaturePath}

% Show Signature command
\def \showSignature#1{
\vspace{-2cm}\begin{flushright}\includegraphics[width=4cm,height=4cm,keepaspectratio]{#1}\end{flushright}
}

% Page 2 - N 

\newcounter{refereecounter}
\setcounter{refereecounter}{1}
\newcounter{commentcounter}
\setcounter{commentcounter}{0}

\newcommand{\referee}[0]{\underline{\large The authors’ reply to the Reviewer \therefereecounter:} \\ \newline
\textbf{\Large Referee \therefereecounter:} \addtocounter{refereecounter}{1}\\\setcounter{commentcounter}{1}} 

\newcommand{\response}[1]{\textbf{Response: } #1}

\newcommand{\comment}[1]{\textbf{Comment \thecommentcounter:} #1 \addtocounter{commentcounter}{1}}


