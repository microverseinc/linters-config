# Javascript & React & Redux Course


If you are not familiar with linters and Stickler, read [root level README](../README.md).

Please do the following **steps in this order**:

1. Install eslint
   1. run `npx eslint --init`
   2. How would you like to use ESLint? Select `To check syntax, find problems, and enforce code style`
   3. Which framework does your project use? Select `None of this` (if that project is non-react project) or `React` (if that is a react-redux project)
   4. Where does your code run? Select `Browser`
   5. How would you like to define a style for your project? Select `Use a popular style guide`
   6. Which style guide do you want to follow? Select `Airbnb`
   7. What format do you want your config file to be in? Select `JavaScript`
   8. Would you like to install them now with npm? Select `Y` to install all the necessary packages for eslint.
   9. After that it generate a `.eslintrc.js` file and with that we successfully installed eslint

2. Install stickler-ci https://github.com/apps/stickler-ci
3. Enable stickler in your repo. You can do it [here](https://stickler-ci.com/).
4. In first commit of your feature branch add a copy of [.stickler.yml](./.stickler.yml)
    - **Remember** to use file linked above
    - **Remember** that `.stickler.yml` file name starts with a dot
5. When you open your first pull request you should see Stickler's report at `Checks` tab.




## Troubleshooting

1. All config files are in my repo bu Stickler does not work.
    - Make sure that Stickler app has permission to access your repository. Find Stickler here https://github.com/settings/installations and check its configuration.
    
    ![screenshot](../assets/images/stickler_app_config.png)

    - Try to add a new commit to your Pull Request. Stickler should detect changes in your repo and start checking your code.
2. `while scanning for the next token found character '\t' that cannot start any token` error.
    - Please make sure that you used spaces not tabs for indentation.
3. Check if someone else has had similar problem before [here](https://questions.microverse.org/c/linters-stickler).
    Please make sure that you used spaces not tabs for indentation.
4. Stickler does not work and nothing helps 💥 - run `eslint` in your local env: 
    - run `npx eslint --init` [Follow that Install eslint instruction :point_up:] (not sure how to use npm? Read [this](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm))
    - run `npx eslint .`
    - fix linter errors
    - **Remember to let your Code Reviewer know that you had problems with Stickler and you used linter in local env.**
