<!-- ABOUT THE PROJECT -->
## About The Project

This repository contains contributed solutions to end of chapter exercises in _Introduction to Probability_, 2nd edition by Joe Blitzstein and Jessica Hwang. 

The book contains many fantastic exercises that help develop intuition for thinking probabilistically. The authors provide solutions to some of these exercises on the book [website](https://projects.iq.harvard.edu/stat110/home), but most don't have published solutions. This repository aims to provide said solutions for self-learners.

  <p>
    <a href="https://fifthist.github.io/Introduction-To-Probability-Blitzstein-Solutions/"><strong>Explore solutions »</strong></a>
    <br />
    <a href="https://fifthist.github.io/solved-problems-in-probability/"><strong>Solved Problems: Part I »</strong></a>
  </p>

<!-- CONTRIBUTING -->
## Contributing

Any contributions are **greatly appreciated**.

1. If adding a new chapter, add a reference entry to `chapters/index.tex`
```
\subimport*{chapters/2/}{index}
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
