% Incremental λ-Calculus
% Paolo G. Giarrusso
% 2014-05-04
# Introduction

This is the homepage for the **Incremental λ-Calculus** project. Our goal is to
extend database technology for low-overhead incremental computation, based on
finite differencing, and apply it to higher-order languages.

# Papers
  - [A theory of changes for higher-order languages — incrementalizing λ-calculi by static differentiation](http://www.informatik.uni-marburg.de/~pgiarrusso/papers/pldi14-ilc-author-final.pdf) (updated version). With Yufei Cai, Tillmann Rendel, and Klaus Ostermann. Accepted at PLDI '14.
<!--	[Old version](http://www.informatik.uni-marburg.de/~pgiarrusso/papers/pldi14-ilc-2014-02-05.pdf).-->

    **Abstract**:

    If the result of an expensive computation is invalidated by a small change
    to the input, the old result should be updated incrementally instead of
    reexecuting the whole computation. We incrementalize programs through their
    *derivative*. A derivative maps changes in the program's input directly to
    changes in the program's output, without reexecuting the original program.
    We present a program transformation taking programs to their derivatives,
    which is fully static and automatic, supports first-class functions, and
    produces derivatives amenable to standard optimization.

    We prove the program
    transformation correct in Agda for a family of simply-typed λ-calculi,
    parameterized by base types and primitives. A precise interface specifies
    what is required to incrementalize the chosen primitives.

    We investigate
    performance by a case study: We implement in Scala the program
    transformation, a plugin and improve performance of a nontrivial program by
    orders of magnitude.

# Credits
This project benefited from code and ideas of many different people:

- Cai Yufei
- Paolo G. Giarrusso
- Tillmann Rendel
- Klaus Ostermann

Further acknowledgments in the paper itself.

# News
- 2014-05-04: Author's version of the paper camera-ready finally online.
- 2014-03-15: The AEC submission was found to "meet or exceed expectations"!
- 2014-02-21: [Link to the AEC submission](ILC/AEC/).
- 2014-02-10: Submission to the artifact evaluation committee (AEC) evaluation
- 2014-02-05: Website online
- 2014-02-03: Our first paper on this project was accepted for PLDI '14! The
  author's version of the camera-ready is available.
<!--
# What we provide

- Source code of our implementation, on [GitHub](https://github.com/ps-mr/LinqOnSteroids).
- the [version of FindBugs](https://github.com/ps-mr/FindBugsBenchmark) we compared our results with.
- a [technical report](SQuOpt/giarrusso-techrep.pdf) accompanying our paper submission,
  also available on [arXiv](http://arxiv.org/abs/1210.6284).

Additionally, we will provide the evaluation data from our new paper submission, including the
raw dataset and scripts to regenerate the graphics and the tables.

The source code for which the evaluation was run corresponds to version
[aosd13-evaluated](https://github.com/ps-mr/LinqOnSteroids/tree/aosd13-evaluated).

The raw evaluation data from a previous evaluation is already available.

- updated evaluation results from version 0.2, which lead to essentially the same
  conclusions.-
the elaboration scripts and statistics

# Releases

- 0.2 --- 2012-04-22 --- [.tar.gz](SQuOpt/tarballs/squopt-v0.2.tar.gz)
    - Renames and refactorings to match the paper.
    - Updated the evaluation code (`COVARIANT_EQUALS`,
      `RUN_FINALIZERS_ON_EXIT` were modified slightly to match FindBugs)
    - Updated PaperTutorial and resynced with the paper
    - Fixed a few bugs.
    - Less type annotations are needed in the optimizer.
- 0.1 --- 2012-04-09 --- [.tar.gz](SQuOpt/tarballs/squopt-v0.1.tar.gz)
    - First release
Note: User documentation is currently missing.

# Code from our paper
Examples from our paper are implemented and tested in class [`ivm.tests.PaperTutorial`](https://github.com/ps-mr/LinqOnSteroids/blob/master/src/test/scala/ivm/tests/PaperTutorial.scala).

# Old evaluation

The evaluation included in the paper was done on release 0.1; the new release
gives similar results.

The code is located in class `performancetests.opaltests.FindBugsAnalyses`.

We provide the raw data collected, together with the script used to produce the
tables included in the paper, based on R and runnable on Unix systems such as
Mac OS X and probably Linux. [Here](SQuOpt/tarballs/evaluation-v0.2.tar.gz) they are.

For those interested only in the resulting graphs,
[here](SQuOpt/EvalRed-new.pdf) are the results.

In our evaluation, we compare our source code analyses with a reference
implementation, namely FindBugs. We altered its source code to disable unrelated
analyses, and provide [the altered code](https://github.com/ps-mr/FindBugsBenchmark).

To ensure reproducibility, we plan to simplify and document the exact steps needed to
reproduce our results.

For the determined impatient, here is the current procedure, which will probably
have a few rough edges and is still untested.

- select a idle and sufficiently powerful machine with a *x operating system -
the evaluation takes currently 1 day and was run on a Linux machine; the
statistics were computed on a Mac OS X machine. The scripts _should_ work
(with minor changes) on any *x system with the needed software.
- download both our source release, our evaluation code, and
[R](http://www.r-project.org/).
- choose the test data to use--we provide a test harness to run the evaluation on
ScalaTest, that is `profileLos.sh`, or on the JDK, that is `profileLosJDK.sh`.
- To reproduce the original evaluation, you need to use the JDK. The binary
  library is in fact available in `data/rt.jar`.
    - Download the [version which was installed on our machine][JDKLink]
and extract it, using for instance `rpm2cpio` (we plan to simplify this step).
    - Adjust `profileLosJDK.sh` to find the copy of `classes.jar` from the extracted
  package.
- Run the chosen test harness. You might need to comment out any invocations to
  `git`; the software assumes to be run on a `git` working copy.
- After the end, move and rename the resulting `LOSTestLog-JDK.csv` or
`LOSTestLog-ScalaTest.csv` as `LOSTestLog-JDK-new-eval.csv` 
inside `squoptEval-v0.2` (the folder of the extracted evaluation).
- In the same directory, run `make newgraph`, which will save the reproduced
evaluation results by overwriting `EvalRed-new.pdf`.

-->

# Contacts
For any question or suggestion, feel free to contact me, Paolo G. Giarrusso, at
pgiarrusso (at) informatik !dot! uni-marburg !dot! de.

[JDKLink]: http://rpmfind.net/linux/RPM/centos/updates/6.2/x86_64/Packages/java-1.6.0-openjdk-1.6.0.0-1.43.1.10.6.el6_2.x86_64.html
