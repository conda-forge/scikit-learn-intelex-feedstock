About scikit-learn-intelex-feedstock-feedstock
==============================================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/scikit-learn-intelex-feedstock/blob/main/LICENSE.txt)


About scikit-learn-intelex-feedstock
------------------------------------

Home: https://uxlfoundation.github.io/scikit-learn-intelex

Package license: Apache-2.0

Summary: Extension for Scikit-learn* is a seamless way to speed up your Scikit-learn application.

Development: https://github.com/uxlfoundation/scikit-learn-intelex

Documentation: https://uxlfoundation.github.io/scikit-learn-intelex

Extension for Scikit-learn is a <strong>free software AI accelerator</strong> designed to deliver over
<strong>10-100X</strong> acceleration to your existing scikit-learn code. The software acceleration is
achieved with vector instructions, AI hardware-specific memory optimizations, threading, and optimizations.
<br/><br/>
With Extension for Scikit-learn, you can:
<ul>
<li>Speed up training and inference by up to 100x with equivalent mathematical accuracy</li>
<li>Benefit from performance improvements across different hardware configurations, including
    <a href="https://uxlfoundation.github.io/scikit-learn-intelex/latest/oneapi-gpu.html" target="_blank">GPUs</a>
    and <a href="https://uxlfoundation.github.io/scikit-learn-intelex/latest/distributed-mode.html" target="_blank">multi-GPU</a>
    configurations
</li>
<li>Integrate the extension into your existing Scikit-learn applications without code modifications</li>
<li>Continue to use the open-source scikit-learn API</li>
<li>Enable and disable the extension with a couple of lines of code or at the command line</li>
</ul>


About scikit-learn-intelex
--------------------------



Package license: 

Summary: Extension for Scikit-learn* (CPU runtime) is a seamless way to speed up your Scikit-learn application.

About scikit-learn-intelex-gpu
------------------------------



Package license: 

Summary: Extension for Scikit-learn* (GPU/DPC++ runtime) — enables oneAPI SYCL-based acceleration.

Current build status
====================


<table><tr>
    <td>GitHub Actions</td>
    <td>
      <a href="https://github.com/conda-forge/scikit-learn-intelex-feedstock/actions/workflows/conda-build.yml">
        <img src="https://github.com/conda-forge/scikit-learn-intelex-feedstock/actions/workflows/conda-build.yml/badge.svg?event=push&branch=main">
      </a>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-scikit--learn--intelex-green.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/scikit-learn-intelex.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/scikit-learn-intelex.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/scikit-learn-intelex.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-scikit--learn--intelex--gpu-green.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex-gpu) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/scikit-learn-intelex-gpu.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex-gpu) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/scikit-learn-intelex-gpu.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex-gpu) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/scikit-learn-intelex-gpu.svg)](https://anaconda.org/conda-forge/scikit-learn-intelex-gpu) |

Installing scikit-learn-intelex-feedstock
=========================================

Installing `scikit-learn-intelex-feedstock` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

How to use
----------

<details>
<summary>With conda</summary>

```
conda install scikit-learn-intelex scikit-learn-intelex-gpu
```

</details>

<details>
<summary>With mamba</summary>

```
mamba install scikit-learn-intelex scikit-learn-intelex-gpu
```

</details>

<details>
<summary>With pixi</summary>

```
# for adding to your local project
pixi add scikit-learn-intelex scikit-learn-intelex-gpu
# for installing globally
pixi global install scikit-learn-intelex scikit-learn-intelex-gpu
```

</details>

Search package versions
-----------------------

It is possible to list all of the versions of `scikit-learn-intelex` available on your platform:

<details>
<summary>With conda</summary>

```
conda search scikit-learn-intelex --channel conda-forge
```

</details>

<details>
<summary>With mamba</summary>

```
mamba search scikit-learn-intelex --channel conda-forge
```

</details>

<details>
<summary>With pixi</summary>

```
pixi search scikit-learn-intelex --channel conda-forge
```

</details>

<details>
<summary>With mamba repoquery, which may provide more information</summary>

```
# Search all versions available on your platform:
mamba repoquery search scikit-learn-intelex --channel conda-forge

# List packages depending on `scikit-learn-intelex`:
mamba repoquery whoneeds scikit-learn-intelex --channel conda-forge

# List dependencies of `scikit-learn-intelex`:
mamba repoquery depends scikit-learn-intelex --channel conda-forge
```

</details>



About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/) and [GitHub](https://github.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance,
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information, please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating scikit-learn-intelex-feedstock-feedstock
=================================================

If you would like to improve the scikit-learn-intelex-feedstock recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/scikit-learn-intelex-feedstock-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks, and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@david-cortes-intel](https://github.com/david-cortes-intel/)
* [@ethanglaser](https://github.com/ethanglaser/)
* [@maria-Petrova](https://github.com/maria-Petrova/)
* [@napetrov](https://github.com/napetrov/)

