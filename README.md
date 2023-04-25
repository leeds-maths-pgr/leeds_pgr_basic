# PGR Basic

This is a simple pandoc template and stylesheet initially written to be used for the School of Maths PGR conference.

## Requirements

To develop this theme, you will need:

+ [sass](https://sass-lang.com/) 3.7+,
+ [pandoc](https://pandoc.org/) 2.9+,
+ a recent version of make, and
+ python 3.5+.

## Development

The basic workflow is as follows:

- Run `make test_html` to generate a test site.
- Run `make serve` in a separate terminal to serve the test site locally on [localhost:8000](https://localhost:8000).
- Edit the scss and template files.
- Run `make test_html` to regenerate the site.
- Check how it looks on the browser.

If you add new templates or scss files, remember to add them to the respective variables at the top of the Makefile.


## Usage Notes

The pandoc template is derived from [pwp-theme](https://git.sr.ht/~quantum/pwp-theme) and uses a few variables to keep the site design consistent.
See the `test/content` directory for an example of how to generate content for the website.

The following variables should be set in a metadata file at the project root.

- `site_name`: (optional, string) The name of the website.
- `navbar`: A list of navbar elements. A navbar element is a dictionary with two keys:
  - `link`: A URL to which the navbar element should link to.
  - `display`: The string which the navbar element should show.

The following variables should be set in the metadata header at the start of a file.

- `title`: The document title.
- `display_title`: The title to display.
