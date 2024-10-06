# Stories

|        Downloads               |         Resources             |
|:------------------------------:|:------------------------------|
| [Download][stories]            | [Wiki][wiki]                  | 
| [Core Rules][core]             | [Email an idea][issues email] |
|                                | [Issues Board][board]         |

*The Book of Stories* contains all the procedures a player might need for the BIND tabletop RPG.

# Getting the Book

Download the [pdf][stories] then take it to your local, friendly, print-shop.
Everything in the book has been optimized for reading on paper.
Reading two-columns of blinding-white PDF on a monitor will only give you a headache.

## Compiling the Book Yourself

1. Clone this repo.
1. Install the required packages:
    * For Debian/ Mint/ Ubuntu: `apt install inkscape make texlive-full git-lfs latexmk`.
    * For Arch Linux: `pacman -S inkscape make git git-lfs texlive-binextra texlive-latexextra texlive-fontsrecommended texlive-fontsextra && git lfs install`
    * For Void Linux: `xbps-install inkscape make texlive-full git-lfs texlive-latexmk`.
1. Enter the repo, and do `make all`.

For full setup instructions, see the [wiki][compiling].

## Contents

Inside, players can find:

- How to make random characters.
- How to make bespoke characters.
- Building a backstory with Story Points.
- Gaining and spending XP.
- Details on each race's cultural norms.

[compiling]: https://gitlab.com/bindrpg/core/-/wikis/dev/Compiling
[issues email]: mailto:contact-project+bindrpg-stories-47773063-issue-@incoming.gitlab.com
[board]: https://gitlab.com/bindrpg/stories/-/issues
[wiki]: https://gitlab.com/bindrpg/core/-/wikis/home

[core]: https://gitlab.com/bindrpg/metabind/-/jobs/artifacts/master/raw/complete/Core_Rules.pdf?job=build
[stories]: https://gitlab.com/bindrpg/metabind/-/jobs/artifacts/master/raw/complete/Stories.pdf?job=build
[resources]: https://gitlab.com/bindrpg/config/-/jobs/artifacts/master/raw/resources.pdf?job=build
