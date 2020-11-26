# Latex class for IITK Thesis #

Defines document class `iitkthesis`, to create formatted front matter
using commands `\maketitle`, `\certificate`, `\declaration` and
`\abstract` after defining the basic variables `\title`, `\author`,
`\rollno`, `\degree`, `\department`, `\submissiondate` and a few
more. Check [`example.pdf`](./example.pdf) for a sample.

Implements guidelines in
[this `thesisguide`](http://www.iitk.ac.in/doaa/data/thesisguide.pdf).

To use, clone the repository, copy [`example.tex`](./example.tex) to
`thesis.tex` as a boiler plate and update as necessary. Modifying is
as simple as follows.

## Boilerplate ##
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

## List of class variables ##
An exhaustive list of variables is as follows:

+ `rollno`: Candidate Roll No.
+ `degree`: Ph.D., M.Tech. or M.Des. (in full form)
+ `department`: Name of the Department
+ `submissiondate`: in Month, Year
+ `logo`: The IITK logo importable by `graphicx` package. Vector
  version available at [`images/iitk-logo.pdf`](./images/iitk-logo.pdf).
+ `institute`: Full name of the institute.
+ `abbrevinst`: Abbreviated name of the institute.
+ `instaddress`: One line address of the institute.
+ `advisors`: Advisors list as to be publised on the certificate.
+ `advisornames`: Names in running text as in --- Alpha, Beta and
  Gamma.
+ `advisenum`: List of advisors names to be used in a list. Each element
  in the list starts with `\item`.

## Further Reference ##

1. Procedure: [https://www.iitk.ac.in/doaa/data/Procedure_for_PhD_Thesis_Submission.pdf](https://www.iitk.ac.in/doaa/data/Procedure_for_PhD_Thesis_Submission.pdf)
2. Guidelines: [http://www.iitk.ac.in/doaa/data/thesisguide.pdf](http://www.iitk.ac.in/doaa/data/thesisguide.pdf)
3. Thesis Processing Form: [https://www.iitk.ac.in/doaa/data/processing-form.docx](https://www.iitk.ac.in/doaa/data/processing-form.docx)
4. Upload Link: [https://oag.iitk.ac.in/studoaiitk](https://oag.iitk.ac.in/studoaiitk)
5. Thesis Processing Cell: [https://iitk.ac.in/doaa/tpc/](https://iitk.ac.in/doaa/tpc/)
6. Start point to create `iitk-thesis.cls` tex: [http://students.engr.scu.edu/~sschaeck/latexforthesis/](http://students.engr.scu.edu/~sschaeck/latexforthesis/) 
7. LaTeX cls guide: [http://texdoc.net/texmf-dist/doc/latex/base/clsguide.pdf](http://texdoc.net/texmf-dist/doc/latex/base/clsguide.pdf)
