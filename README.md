<!-- ABOUT THE PROJECT -->
<img src="https://www.travis-ci.com/fifthist/Introduction-To-Probability-Blitzstein-Solutions.svg?branch=master">
Contributed solutions to end of chapter exercises in <i>Introduction to Probability</i>, 2nd edition by Joe Blitzstein and Jessica Hwang. 

The book contains many fantastic exercises that help develop intuition for thinking probabilistically. The authors provide solutions to some of these exercises on the book [website](https://projects.iq.harvard.edu/stat110/home), but most don't have published solutions. This repository aims to provide solutions for self-learners.

  <p>
    <a href="https://fifthist.github.io/Introduction-To-Probability-Blitzstein-Solutions/"><strong>Solutions »</strong></a>
  </p>

<!-- CONTRIBUTING -->
## How to Contribute

1. If adding a new chapter, add a reference entry to `chapters/index.tex`
```
\subimport*{chapters/[chapter number]/}{index}
```
2. If adding a new section, add a reference entry to `chapters/[chapter number]/sections/index.tex`
```
\subimport*{sections/[section name]/}{index}
```
3. Solution files are named `[problem number].tex` and placed in the `chapters/[chapter number]/sections/[section name]/problems` directory.
4. An entry for the new solution file is added to `chapters/[chapter number]/sections/[section name]/index.tex`
```
\subsection{problem [problem number]}
\input{problems/[problem number]}
```

