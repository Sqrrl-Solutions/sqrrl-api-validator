# visku-api-validator

Docker container action to Validate API descriptions

## Overview

This GitHub Action uses [Spectral](https://github.com/stoplightio/spectral) to lint OpenAPI Specification (OAS) files. It supports JSON/YAML formats and provides out-of-the-box support for OpenAPI 3.x and 2.0, Arazzo, and AsyncAPI.

## Usage

To use this action in your GitHub workflow, add the following step to your `.github/workflows/your-workflow.yml` file:

```yaml
name: Lint OpenAPI Specification
on: [push, pull_request]
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Lint OpenAPI file
        uses: ./ # Uses an action in the root directory
        with:
          file_path: 'path/to/your/openapi/file.yaml'