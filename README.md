# Latex class for IITK Thesis #

Defines document class `iitkthesis`, to create formatted front matter
using commands `\maketitle`, `\certificate`, `\declaration` and
`\abstract` after defining the basic variables `\title`, `\author`,
`\rollno`, `\degree`, `\department`, `\submissiondate` and a few more.

The boilerplate code is as follows, (also available in
[`example.tex`](./example.tex)).

```tex
\documentclass{iitkthesis}

\usepackage{lipsum}

\usepackage{libertine}

\title{When my thesis has its own latex class, and the title is so
  long that it does not fit into one line}

\author{Raghav Brahmadesam Venkataramaiyer}
\rollno{14119266}
\degree{Doctor of Philosophy}
\department{Design Programme}
\submissiondate{February 2021}

\advisors{%
\advisor{Dr. Vinay P. Namboodiri}{\textsc{cse iitk}}{}
}

\advisornames{{Dr. Vinay P. Namboodiri}}

\advisenum{%
  \item {Dr. Vinay P. Namboodiri}
}

\begin{document}
\frontmatter
\maketitle
\certificate
\declaration

\abstract{\lipsum}

\mainmatter
\chapter{Introduction}

\lipsum[1-4]

\section{The first blood}
\lipsum[5-12]

\subsection{Blaze of glory}
\lipsum[14-28]

\paragraph{Bon Jovi}
\lipsum[29-31]

\end{document}
```

An exhaustive list of variables is as follows:

+ `rollno`: Candidate Roll No.
+ `degree`: Ph.D., M.Tech. or M.Des. (in full form)
+ `department`: Name of the Department
+ `submissiondate`: in Month, Year
+ `logo`: The IITK logo importable by `graphicx` package. Vector
  version available at [`images/logo.pdf`](./images/logo.pdf).
+ `institute`: Full name of the institute.
+ `abbrevinst`: Abbreviated name of the institute.
+ `instaddress`: One line address of the institute.
+ `advisors`: Advisors list as to be publised on the certificate.
+ `advisornames`: Names in running text as in --- Alpha, Beta and
  Gamma.
+ `advisenum`: List of advisors names to be used in a list.
