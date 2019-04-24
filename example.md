---
title: Title
author: Author
date: Date
#revealjs-theme: black
#transition: slide
---

# Vertical Topic Branches

## Topic Branches

If the first slide with content uses a level-2 header, the slides will be broken
up into vertical topic branches. If using this approach, each level-1 header
should be its own slide (with no content). The level-1 slides will be the
vertical "topic" branches.

Start a new topic by using a single level-1 header.

## Topic Example

```markdown
# Topic One

## Slide One

Content

## Slide Two

Content

# Topic Two
```

## Non-Topic Example

```markdown
# Slide One

content

# Slide Two

Content

Other level headers can be used here
```

# Style

## Themes

The default theme is "Black". Change theme with `revealjs-theme` value in the
YAML meta-data block. Supported themes:

`Black`, `White`, `League`, `Sky`, `Beige`, `Simple`, `Serif`, `Blood`, `Night`,
`Moon`, `Solarized`

## Transitions

The default transition is "Slide". Supported transitions:

`None`, `Fade`, `Slide`, `Convex`, `Concave`, `Zoom`

## Per-Slide Transitions {data-transition="zoom"}

Transitions can be changed for a specific slide using options:

- `data-transition`
  - content
- `data-background-transition`
  - background

# Formatting

## Code Blocks

"Fenced" code blocks can be specified like this:

```perl
use strict;
print "Hello world\n";
```

## Images

![Image]

[Image]: https://publicdomainvectors.org/photos/Binary-Network.png {height=100px}

```markdown
![Image1](imagefile.png)

![Image2]
[Image2]: imagefile.png {height=100px}

<img class="plain" src="imagefile.png"/>
```

## Columns

Columns can be created using div blocks.

:::::: {.columns}

::: {.column width="40%"}
This is the first column.
:::

::: {.column width="60%"}
This is the second column.
:::

::::::

## Tables

Markdown tables (not compatible with Beamer PDF)

```markdown
| ONE | TWO     | THREE
|-----|---------|------
| a   | alpha   | 10982
| b   | bravo   | 309
| c   | charlie | 2093
```

## Quotes

> This is a block quote.

# Presentation

## Presenter Notes

Slides can include presenter notes. Open them with the `S` key.

::: notes

This is my note.

- It can contain Markdown
- like this list

:::

## Incremental Lists

Content can be produced incrementally by wrapping in an `incremental` div block.

::: incremental

- Item One
- Item Two

:::

## Paused Content

Content can be paused

. . .

...And then resumed by separating with "`. . .`".

## Fragment Styles

[current-visible]{.fragment .current-visible}

[highlight-red]{.fragment .highlight-red} [highlight-green]{.fragment .highlight-green}

[highlight-blue]{.fragment .highlight-blue} [flash-blue]{.fragment .highlight-current-blue}

[fade-out]{.fragment .fade-out} [fade-in-then-out]{.fragment .fade-in-then-out}

[fade-in-then-semi-out]{.fragment .fade-in-then-semi-out} [control order]{.fragment data-fragment-index=1}

[grow]{.fragment .grow} (broken) <!-- https://github.com/hakimel/reveal.js/issues/2126 -->

[shrink]{.fragment .shrink} (broken) <!-- https://github.com/hakimel/reveal.js/issues/2126 -->

## Transitions

# Backgrounds

## Color Background {data-background="#ff0000"}

## Tiled Background {data-background-image="https://publicdomainvectors.org/photos/Binary-Network.png" data-background-repeat="repeat" data-background-size="100px"}

## GIF Background {data-background-image="http://i.giphy.com/90F8aUepslB84.gif"}

## Video Background { data-background-video="http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" }

<!-- vim: set ft=markdown spell : -->
