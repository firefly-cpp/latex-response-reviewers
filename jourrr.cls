\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jourcl}[2022/12/16 Cover letter for journal submissions]

% include dependencies
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{parskip}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{framed}
\RequirePackage{lipsum}
\RequirePackage[iso,american]{isodate}
\RequirePackage{fontawesome5}

% no indent for whole document
\setlength\parindent{0pt}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

%----------------------------------------------------------------------
% process options
\ProcessOptions\relax

% styling of document
%----------------------------------------------------------------------

% load class
\LoadClass[a4paper,onecolumn]{article}

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

% We thank editor
\def\Introduction#1{\def\@Introduction{#1}}
\newcommand{\pIntroduction}{\@Introduction}

% We thank reviewers
\def\ReviewerThank#1{\def\@ReviewerThank{#1}}
\newcommand{\pReviewerThank}{\@ReviewerThank}
