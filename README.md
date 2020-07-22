<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">Introduction To Probability</h3>
  <h5 align="center" style="font-weight: normal;">Joseph K. Blitzstein, Jessica Hwang</h5>
  <h3 align="center">Solutions</h3>

  <p align="center">
    A repository of unofficial, contributed solutions to end of chapter exercises.
    <br />
    <a href="https://fifthist.github.io/Introduction-To-Probability-Blitzstein-Solutions/"><strong>Explore solutions »</strong></a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Contributing](#contributing)


<!-- ABOUT THE PROJECT -->
## About The Project

This repository contains contributed solutions to end of chapter exercises in _Introduction to Probability_, 2nd edition by Joe Blitzstein and Jessica Hwang. 

The book contains many fantastic exercises that help develop intuition for thinking probabilistically. The authors provide solutions to some of these exercises on the book [website](https://projects.iq.harvard.edu/stat110/home), but most don't have published solutions. This repository aims to provide said solutions for self-learners.

### Built With

* [LaTeX](https://www.latex-project.org/)
* [tex4ht](https://ctan.org/pkg/tex4ht)
* [make4ht](https://github.com/michal-h21/make4ht)


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* npm
```sh
npm install npm@latest -g
```

* mathjax-node-page
```sh
npm -g install mathjax-node-page
```

### Installation

1. Clone the repository
```sh
git clone https://github.com/Fifthist/Introduction-To-Probability-Blitzstein-Solutions
```
2. Install a full texlive system
```sh
sudo apt-get -qq update
sudo apt-get install -y --no-install-recommends texlive-full pandoc latexmk pdf2svg
```
3. Upgrade `make4ht`. May need to uninstall first if `make4ht` installed with texlive.
```sh
git clone https://github.com/michal-h21/make4ht.git make4ht-latest
cp external/make4ht/make4ht-doc.tex make4ht-latest
cd make4ht-latest
make
make install
```
4. `cd` into the repository and `make` the project. Output is build into `output`.
```sh
cd ../Introduction-To-Probability-Blitzstein-Solutions
make
```

Note: Refer to `.travis.yml`, `travis/_make4ht.sh` and `Makefile`.

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