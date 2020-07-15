# Processing Examples

## Live site

[https://dkessner.github.io/ProcessingExamples/](https://dkessner.github.io/ProcessingExamples/)


## Adding an example

1. (_First time only_) Clone this repository, either in a GUI git client like 
[GitHub Desktop](https://desktop.github.com/) or from the command line:

    ```
    git clone git@github.com:dkessner/ProcessingExamples.git
    ```

2. Pull changes to your local repo. (`git pull`).

2. Copy your entire sketch folder to the ProcessingExamples directory, and
   verify that the sketch runs.

3. Create a file `index.md` in the sketch folder:

    ```
    # Sketch Name

    You can put any description or notes here

    {% raw %}{% include embed_sketch_and_code.html sources="sketch_name.pde" %}{% endraw %}
    ```

4. Add an entry to the menu in [`_includes/menu.html`](https://github.com/dkessner/ProcessingExamples/blob/master/_includes/menu.html).

5. Add the new sketch folder to your local repo, commit and push your changes.
   (`git add/commit/push`).


## Local testing

GitHub Pages uses the static site generator Jekyll to convert Markdown files
(.md) to HTML.  You can test your local changes to the site using a local
installation of Jekyll.

1. Install [Jekyll](https://jekyllrb.com/).

2. Start a local server.  

    On the command line, in your local ProcessingExamples directory:
    ```
    bundle exec jekyll serve
    ```

3. View the pages in your browser at:
[http://localhost:4000](http://localhost:4000)

[Detailed instructions on GitHub](https://docs.github.com/en/github/working-with-github-pages/testing-your-github-pages-site-locally-with-jekyll)


