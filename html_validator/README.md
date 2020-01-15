# HTML

To validate your HTML files use the [w3 validation service](https://validator.w3.org/) where you can either upload your files or copy paste your HTML markup:

- [Validate by File Upload](https://validator.w3.org/#validate_by_upload)
- [Validate by Direct Input](https://validator.w3.org/#validate_by_input)

### Using the command line to validate your HTML files

1. Make sure you have [Nodejs](https://nodejs.org/) and [npm](https://www.npmjs.com/get-npm) installed on you system.
2. Run `npx html-validator-cli --quiet --file index.html` to run the validator over the `index.html` file.

The `--quiet` will only list `errors`. If you also want to see the `warnings` use the `--verbose` flag instead.

As an alternative, you can also install the [`html5validator`](https://github.com/svenkreiss/html5validator) using `pip`:

```sh
pip install --user html5validator
html5validator index.html
```
