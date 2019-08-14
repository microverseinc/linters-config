# Javascript & React & Redux Course


If you are not familiar with linters and Stickler, read [root level README](../README.md).

Please do the following **steps in this order**:

1. Install stickler-ci https://github.com/apps/stickler-ci
2. Enable stickler in your repo.
3. In first commit of your feature branch add a copy of [.stickler.yml](./.stickler.yml) and [eslint.config](./eslint.config) .
    - **Remember** to use both files linked above
    - **Remember** that `.stickler.yml` file name starts with a dot
4. When you open your first pull request you should see Stickler's report at `Checks` tab.


## Troubleshooting

1. `while scanning for the next token found character '\t' that cannot start any token` error.
    Please make sure that you used spaces not tabs for indentation.
2. Stickler does not work and nothing helps 💥 - run rubocop in your local env:
    - run `npm install eslint eslint-config-airbnb --save-dev`  (not sure how to use npm? Read [this](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm))
    - run `npx eslint --init`
    - copy [eslint.config](./eslint.config) to the root directory of your project
    - run `npx eslint .`
    - fix linter errors
    - **Remember to let your Code Reviewer know that you had problems with Stickler and you used linter in local env.**
