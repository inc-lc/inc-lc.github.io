% Incremental λ-Calculus
% Paolo G. Giarrusso

# Introduction

This is the homepage for the **Incremental λ-Calculus** project. Our goal is to
extend database technology for low-overhead incremental computation, based on
finite differencing, and apply it to higher-order languages.

# Publications
  - [Incremental λ-Calculus in Cache-Transfer Style --- Static Memoization by
    Program Transformation](https://link.springer.com/chapter/10.1007/978-3-030-17184-1_20).
    Paolo G. Giarrusso, Yann Régis-Gianas and Philipp Schuster. ESOP 2019.
    Supersedes Chapter 17 of Giarrusso's PhD thesis.
    - [Extended version](https://github.com/yurug/cts/blob/ae1bf7b4b7ef82167324c7ce18dc3785b7dcaab7/static-caching-extended.pdf).
    - Supplementary material: [Implementation and Coq
      formalization](https://github.com/yurug/cts).
  - [A theory of changes for higher-order languages — incrementalizing λ-calculi
    by static differentiation](resources/pldi14-ilc-author-final.pdf) (updated
    version). Yufei Cai, Paolo G. Giarrusso, Tillmann Rendel and Klaus Ostermann.
    PLDI 2014, pp. 145--155.
    - [Scala prototype --- inc-lc/ilc-scala](https://github.com/inc-lc/ilc-scala)
    - [Agda machine-checked proofs --- inc-lc/ilc-agda](https://github.com/inc-lc/ilc-agda).

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

  - [Optimizing and Incrementalizing Higher-order Collection Queries by AST
    Transformation](resources/giarrusso-phd-thesis-2020-final.pdf).
    Paolo G. Giarrusso's PhD thesis.
    Some highlights:
    - A novel, simpler correctness proof for ILC on simply-typed λ-calculus,
      where validity is captured by a logical relation (Ch. 12-13-14).
    - A reformulation of that proof using (step-indexed) logical relations and
      operational semantics, for simply-typed λ-calculus (without or with
      recursion) and untyped λ-calculus (Appendix C).

    Chapter 17 is superseded by the extended version of the ESOP'19 paper.
    - [Agda machine-checked proofs --- inc-lc/ilc-agda/Thesis](https://github.com/inc-lc/ilc-agda/tree/master/Thesis/), for Ch. 12-14.

# Related papers
By other authors:

- [Seminaïve evaluation for a higher-order functional
  language](https://dl.acm.org/doi/abs/10.1145/3371090).
  Michael Arntzenius and Neel Krishnaswami. POPL 2020.

# Credits
This project benefited from code and ideas of many different people:

- Cai Yufei
- Paolo G. Giarrusso
- Tillmann Rendel
- Klaus Ostermann
- Lourdes Del Carmen Gonzàlez Huesca
- Yann Régis-Gianas
- Philipp Schuster

Further acknowledgments in each publication.

# News
- 2020-01-23: Updated version of this page and of Giarrusso's PhD thesis.
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
p !dot! giarrusso (at) gmail !dot! com.
