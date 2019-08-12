# HTML & CSS3 Course

If you are not familiar with linters and Stickler, read [root level README](../README.md).

Please do the following **steps in this order**:

1. Install stickler-ci https://github.com/apps/stickler-ci
2. Enable stickler in your repo.
3. In first commit of your feature branch add a copy of [.stickler.yml](./.stickler.yml) and [stylelint.config.js](./stylelint.config.js).
    - **Remember** to use both files linked above
    - **Remember** that `.stickler.yml` file name starts with a dot
4. When you open your first pull request you should see Stickler's report at `Checks` tab.


## Troubleshooting

1. `while scanning for the next token found character '\t' that cannot start any token` error.
    Please make sure that you used spaces not tabs for indentation.
2. Stickler does not work and nothing helps 💥 - run [stylelint](https://stylelint.io/) in your local env:
    - run `npm install stylelint stylelint-config-recommended --save-dev`  (not sure how to use npm? Read [this](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm))
    - copy [stylelint.config.js](./stylelint.config.js) to the root directory of your project
    - run `npx stylelint .`
