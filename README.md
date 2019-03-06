# linters-config

## Linters

Linter is a tool that analyzes source code to flag programming errors, bugs, stylistic errors, and suspicious constructs (soruce: [Wikipedia](https://en.wikipedia.org/wiki/Lint_(software))).

There are a few reasons for using linters:

1. Catching syntax errors is more efficient. There is no need to debug simple mistakes like typos - linter does it for you.
2. Entire codebase looks like wrtten by one person.
3. Programmers can focus on solving problems, instead of cleaning up the code.

--------------

You can find linters for most of programming languages, e.g. Rubocop for Ruby or ESLint for javascript.


Also, there are many ways you can integrate a linter in your workflow:
- text editor plugin
- git hook
- Github app.


## Stickler

Stickler is an app, that can be integrated into Github repo. It uses multiple linters that can be configured according to programmer needs.

With Stickler enabled you can see:

- linting result in your PR
- `Checks` tab in your PR
- comments under problematic line of code



See more: https://stickler-ci.com/

## How to use this repo?

Each directory contains Stickler's config files specific to one programming language and README file with detailed instructions. Follow those instructions in order to set up Stickler in your repo.
