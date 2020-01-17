# Ruby Course

If you are not familiar with linters and Stickler, read [root level README](../README.md).

Please do the following **steps in this order**:

### Set-up Stickler (Github app) - it will show that your app is free from style errors
1. Install stickler-ci https://github.com/apps/stickler-ci
2. Enable stickler in your repo. You can do it [here](https://stickler-ci.com/).
3. In first commit of your feature branch add a copy of [.stickler.yml](./.stickler.yml) and [.rubocop.yml](./.rubocop.yml)  to the root directory.
    - **Remember** to use both files linked above
    - **Remember** that `.stickler.yml` and `.rubocop.yml` file names start with a dot.
4. **Do not make any changes in config files - they represent style guidelines that you share with your team - which is a group of all Microverse students.**
    - If you think that change is necessary - open a [Pull Request in this repository](../README.md#contributing) and let your code reviewer know about it.
5. When you open your first pull request you should see Stickler's report at `Checks` tab.

### Set-up Rubocop in your local env - it will help you to find style errors
1. Add `gem 'rubocop'` to `Gemfile` (not sure how to use Gemfile? Read [this](https://bundler.io/v1.15/guides/bundler_setup.html)).
2. Run `bundle install`.
3. Copy [.rubocop.yml](./.rubocop.yml) to the root directory of your project
4. **Do not make any changes in config files - they represent style guidelines that you share with your team - which is a group of all Microverse students.**
    - If you think that change is necessary - open a [Pull Request in this repository](../README.md#contributing) and let your code reviewer know about it.
5. Run `rubocop`.
6. Fix linter errors.
7. **IMPORTANT NOTE**: feel free to research [auto-correct options for Rubocop](https://rubocop.readthedocs.io/en/latest/auto_correct/) if you get a flood of errors but keep in mind that correcting style errors manually will help you to make a habit of writing a clean code!


## Troubleshooting

1. All config files are in my repo bu Stickler does not work.
    - Make sure that Stickler app has permission to access your repository. Find Stickler here https://github.com/settings/installations and check its configuration.
    
    ![screenshot](../assets/images/stickler_app_config.png)

    - Try to add a new commit to your Pull Request. Stickler should detect changes in your repo and start checking your code.
2. `while scanning for the next token found character '\t' that cannot start any token` error.
    - Please make sure that you used spaces not tabs for indentation.
3. Check if someone else has had similar problem before [here](https://questions.microverse.org/c/linters-stickler).
4. Stickler does not work and nothing helps 💥 - run rubocop in your local env and correct all errors. **Remember to let your Code Reviewer know that you had problems with Stickler and you used linter in local env.**
