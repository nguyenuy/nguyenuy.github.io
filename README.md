# Uy Nguyen's Personal Website

This repository contains the source code for my personal website, [nguyenuy.github.io](https://nguyenuy.github.io/), built with the [Hugo](https://gohugo.io/) static site generator and the [PaperMod](https://github.com/adityatelange/hugo-PaperMod) theme.

## Local Development

To run the site on your local machine, you'll need to have the **extended** version of Hugo installed. You can find installation instructions in the [official Hugo documentation](https://gohugo.io/installation/).

1.  **Clone the repository**

    This project uses a git submodule for the theme, so be sure to clone it recursively to pull down the theme's source code as well.

    ```bash
    git clone --recurse-submodules https://github.com/nguyenuy/nguyenuy.github.io.git
    cd nguyenuy.github.io
    ```

2.  **Run the Hugo server**

    ```bash
    hugo server
    ```

    The site will be available at `http://localhost:1313/`.

## Theme Management

This project uses the PaperMod theme as a git submodule.

### Updating the Theme

To update the theme to the latest version from its remote repository, run the following command from the root of this project and commit the result:

```bash
git submodule update --remote --merge
```

### Theme Documentation

For detailed information on theme configuration, features, and customization options, please refer to the official PaperMod Wiki.