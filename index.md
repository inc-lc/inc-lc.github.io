% Incremental λ-Calculus
% Paolo G. Giarrusso

# Introduction

This is the homepage for the **Incremental λ-Calculus** project. Our goal is to
extend database technology for low-overhead incremental computation, based on
finite differencing, and apply it to higher-order languages.

# Sources

On GitHub!

- [Scala prototype --- inc-lc/ilc-scala](https://github.com/inc-lc/ilc-scala)
- [Agda machine-checked proofs --- inc-lc/ilc-agda](https://github.com/inc-lc/ilc-agda).

# Papers
  - [A theory of changes for higher-order languages — incrementalizing λ-calculi by static differentiation](resources/pldi14-ilc-author-final.pdf) (updated version). With Yufei Cai, Tillmann Rendel, and Klaus Ostermann. PLDI '14, pp. 145--155.

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
- 2015-03-16: [Slides of the Paris talk online](resources/2015-01-22 ILC Paris.pdf).
- 2015-01-22:
  [Talk about ILC project at the Paris Diderot (Paris 7) University](http://blaisorblade.github.io/blog/2015/01/15/a-talk-on-ilc/).
- 2014-06-07: Sources online on GitHub --- see
  [inc-lc/ilc-scala](https://github.com/inc-lc/ilc-scala) and
  [inc-lc/ilc-agda](https://github.com/inc-lc/ilc-agda).
- 2014-05-04: Author's version of the paper camera-ready finally online.
- 2014-03-15: The AEC submission was found to "meet or exceed expectations"!
- 2014-02-21: [Link to the AEC submission](AEC.html).
- 2014-02-10: Submission to the artifact evaluation committee (AEC) evaluation
- 2014-02-05: Website online
- 2014-02-03: Our first paper on this project was accepted for PLDI '14! The
  author's version of the camera-ready is available.

# Contacts
For any question or suggestion, feel free to contact me, Paolo G. Giarrusso, at
paolo !dot! giarrusso (at) uni-tuebingen !dot! de.
