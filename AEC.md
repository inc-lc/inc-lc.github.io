% Incremental λ-Calculus: Artifact Evaluation
% Yufei Cai
  Paolo G. Giarrusso
  Tillmann Rendel
  Klaus Ostermann
% University of Marburg

This is the submission to the PLDI 2014 Artifact Evaluation
Committee for the paper:

  * Yufei Cai, Paolo G. Giarrusso, Tillmann Rendel, Klaus Ostermann.  
    [**A Theory of Changes for Higher-Order Languages:**  
    **Incrementalizing λ-Calculi by Static Differentiation.**](http://www.informatik.uni-marburg.de/~pgiarrusso/papers/pldi14-ilc-author-final.pdf)  
    *To appear* at PLDI, ACM 2014.

We submit three artifacts:

 1. A **machine-checked formalizations** of our theoretical results,
    in the dependently-typed programming language Agda.

 2. A **prototype implementation** of our ideas in Scala.

 3. The **raw data** and **detailed graphs** of our benchmark.

Quick Start
===========

  * Download the [Virtual Machine Image](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/ilc-vm.ova) (~1.8GiB).

  * Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) version 4.3.6 ([why?](#why-virtualbox-4.3.6)).

  * Boot the downloaded virtual machine with VirtualBox.  
    (You need 1.5GB of RAM and ~4.5GiB of disk space).

  * You will be automatically logged in on a Ubuntu system.

The virtual machine contains everything you need to interact with
our artifacts:

  * A local copy of this website
    (`start-here.html` on the desktop).

  * Our artifacts
    (subfolders of `ilc` on the desktop, links to the READMEs on the desktop).

  * Necessary software (Emacs, Eclipse, ...) and configuration.

More information about the virtual machine image is available
[below](#virtual-machine-image).

Other Download Options
======================

The Virtual Machine image (see [below](#virtual-machine-image))
is probably the easiest way to interact with our artifacts, but
we also provide the following alternatives:

  * Formalization in Agda.

    Reviewers can [download the Agda code](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/ilc-agda.zip),
    [view Agda code in their browser](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/agda/README.html)
    or use the virtual machine image (see below).
    More information about this artifact is in
    [`agda/README.agda`](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/agda/README.html).

    Note that the virtual machine image includes Agda (for type
    checking) and Emacs (for viewing and editing). We are not
    aware of any other Agda IDE. If you don't want to use Emacs,
    you can [view the Agda code in your browser](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/agda/README.html).
    It is fully syntax-highlighted and cross-referenced, so for
    just reading the code, you don't lose much over using Emacs.

  * Implementation in Scala.

    Reviewers can [download the Scala code](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/ilc-scala-prototype.zip)
    or use the virtual machine image (see below).
    More information about this artifact is in
    [`scala-prototype/README.md`](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/scala-prototype/README.html).

    Note that the virtual machine image includes SBT (for
    compilation) and the Eclipse-bases Scala IDE (for viewing and
    editing). If you want to use a different IDE for Scala, you
    have to [download the Scala code](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/ilc-scala-prototype.zip)
    and set up SBT and the IDE of your choice.

    If you install SBT on your own machine, make sure to run it with at least 8M of
    stack space and 1G of heap size (by passing `-Xss8M -Xmx1024m` to the JVM
    running SBT, or equivalently `-J-Xss8M -J-Xmx1024m` to SBT itself).

  * Benchmark results.

    Reviewers can [download the data](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/ilc-graphs.zip),
    [view the data in their browser](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/graphs/README.html)
    or use the virtual machine image (see below).
    More information about this artifact is in
    [`graphs/README.md`](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/graphs/README.html).

Virtual Machine Image
=====================

The following virtual machine image contains all artifacts as
well as the software we used to create and use the
artifacts. Except maybe for Agda or Scala power users, this is
probably the easiest way to interact with the artifacts.

  * [Virtual Machine Image](http://www.informatik.uni-marburg.de/~pgiarrusso/ILC/AEC/ilc-vm.ova) (~1.8GiB)

This virtual machine contains a Ubuntu system.
Inside the virtual machine, you will also find on the desktop:

  * a copy of this website inside the `ilc-website` folder (minus the VM image itself)
  * our artifacts in the `ilc` folder
  * support software inside `support-software`

How to interact with the Agda codebase
--------------------------------------

On the left-hand side you will also find links for Emacs and a terminal; Emacs
is already set up for working with Agda, and the Agda README contains
basic instructions for working with Emacs and for finding more information.

On the desktop, there's a link to the Agda README which will open in Emacs.

How to interact with the Scala codebase
---------------------------------------

For compiling the Scala codebase and running tests, we preinstalled SBT and
configured it to have enough memory (1G) and stack (8M) to compile and run our
code with the big datasets we use. We reduced the maximum benchmark size to fit
the virtual machine memory - we originally ran them with 4G of RAM on a 64bit
virtual machine, but we preferred creating a 32bit VM with less RAM. Details on
how to change the configuration are in the README for the Scala codebase.

We also preloaded Eclipse with the correct version of the Scala plugin (Scala
IDE 3.0.2) on the virtual machine, and preloaded our project for it. However,
Eclipse cannot compile the project from scratch unless SBT has already compiled
the source code before. So for example, you have to compile with SBT once after
each "clean" in Eclipse.

Virtual machine survival guide
------------------------------

The VM is a mostly standard Ubuntu Linux 12.04 LTS system. Should you be
unfamiliar with Ubuntu, or should you need info on the configuration, here is
some survival information which might get you started.

* Icons for programs you need should be either on the left or on the desktop; if
not, click on the icon on the top left corner to access the "Dash" and follow
instructions.

* After you maximize a window, you need to hover over the left-hand corner to see
the close/minimize/demaximize buttons.

* This virtual machine is set up for:
    - Timezone: UTC.
    - Keyboard layout: US (apparently your layout does not make a difference).

    To change those settings, use the "System Settings" icon (on the left).

* The main user has username `vagrant` and password `vagrant`. To perform
privileged operations, you might be asked for password of this user.

* Should you need Haskell (for the Agda codebase), you should just need to install
haskell-platform.

Why VirtualBox 4.3.6?
---------------------

We package the virtual machine in the standardized OVF format. Therefore, at
least in *theory* the virtual machine should work with other versions of
VirtualBox. It should even work with VMWare, though the guest contains optimized
drivers for VirtualBox (VirtualBox Guest Additions 4.3.6) but not for VMWare (so
it will at least be less performant on VMWare).

However, we have only tested running the VM on OS X, Windows and Linux systems
with VirtualBox 4.3.6, and workarounded the VirtualBox bugs we did find (we had
to disable 3D acceleration to ensure scrolling would work in Emacs). Whether
other VirtualBox versions will work depends entirely on VirtualBox and is
outside of our control --- even though usually VirtualBox does work.
