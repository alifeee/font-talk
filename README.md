# Font Talk

A talk about fonts, for Front-End Sheffield (FES) March 2024 

Using [reveal.js](https://revealjs.com/).

## Convert `TTF` to `WOFF` font

```bash
sudo apt-get install woff-tools
sfnt2woff font.ttf
```

### In bulk

```bash
find . -name "*.ttf" -exec sfnt2woff {} \;
```

## Create `CSS` from `WOFF` files

```bash
find . -name "*.woff" -exec ./filename_to_css.sh {} \;
```

## Make presentation into a PDF

See <https://revealjs.com/pdf-export/>

## Shortcuts

From <https://www.devopsschool.com/blog/complete-reveal-js-reference-cheatsheet/>

![Screenshot of list of keyboard shortcuts for RevealJS](images/revealjs_shortcuts.png)
