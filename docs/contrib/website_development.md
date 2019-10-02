# Developing the Website

Under the hood, the website uses [MkDocs Material](https://squidfunk.github.io/mkdocs-material) to generate static pages.

## Creating Pages

MkDocs Material uses [Markdown](https://daringfireball.net/projects/markdown/) as the source language.
See the [specification](https://github.github.com/gfm/) for more details.
After you create the Markdown file, you will need to add it to the index in `mkdocs.yml` (the site-wide configuration file).

## Previewing Changes

First, you need to install [Python](https://python.org).
After doing so, use `pip` to install the `mkdocs-material` and `pymdown-extensions` packages.

Finally, run `python3 -m mkdocs serve`.

!!! note "Windows Users"
    If you use Windows, do not include the `3` in `python3`. Just put `python` instead.
