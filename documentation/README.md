# Building the Docs

## Prerequisites

- Windows OS
- [LabVIEW](https://www.ni.com/en-us/support/downloads/software-products/download.labview.html#369643)
- [AntiDoc](https://gitlab.com/wovalab/open-source/labview-doc-generator) and [AntiDoc CLI](https://gitlab.com/wovalab/open-source/cli-for-antidoc) from VIPM.
- [Python 3.x](https://www.python.org/), pip, and venv.
- [Ruby](https://www.ruby-lang.org/en/) and the [asciidoctor](https://asciidoctor.org/) Gem.

## Building the Docs

Run `build_docs.bat`, located at `<rxn_rover>/documentation/build_docs.bat`, in a terminal. This script will build the API documentation using AntiDoc, convert it to HTML using asciidoctor, then use Sphinx to generate the rest of the documentation and link the API documentation.

**Note:** This script will install Sphinx and its dependencies into a virtual environment located at `<rxn_rover>/documentation/venv`. 
