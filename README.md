# visku-api-validator

Docker container action to Validate API descriptions

## Overview

This GitHub Action uses [Spectral](https://github.com/stoplightio/spectral) to lint OpenAPI Specification (OAS) files. It supports JSON/YAML formats and provides out-of-the-box support for OpenAPI 3.x and 2.0

## Usage

To use this action in your GitHub workflow, add the following step to your `.github/workflows/build.yml` file:

```yaml
name: Build and Test
on:
  workflow_call:
  push:
    branches-ignore:
      - main
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Lint OpenAPI file
        uses: ./visku-api-validator
        with:
          file_path: 'path/to/your/openapi/file.json'

## License

See the [LICENSE](LICENSE.md) file for license rights and limitations (MIT).