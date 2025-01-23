# Changelog for WP Dev Config Files

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- ## [Unreleased] -->

## [1.2.1] - 2025-01-23

## Changed

-   Fixed webpack custom config not running by adding `prettier.config.mjs` and `webpack.config.mjs` to patch for `node_modules/@wordpress/scripts/utils/configs.js`

[text](config-files/patches/@wordpress+scripts+30.9.0.patch)

## [1.2.0] - 2025-01-23

### Added

-   Added `ignoreFiles` array to `stylelint.config.mjs`.

### Changed

-   Updated class filename rules and comments in `phpcs.xml`.
-   Updated README.md content.

## [1.1.0] - 2025-01-21

### Added

-   Added `.markdownlint-cli2.jsonc` file to allow ignoring specfic directories and files since `.markdownlintignore` is deprecated.

### Changed

-   Changed `.markdownlint.json` to `.jsonc` so comments can be added.

### Removed

-   Removed `.markdownlintignore` as it is deprecated (use `.markdownlint-cli2.jsonc` instead if you are using the markdownlint VSCode extension.

## [1.0.1] - 2025-01-21

### Added

-   Added `'@stylistic/function-comma-space-after': 'always-single-line',` rule and sorted `stylelint.config.mjs`

### Changed

-   Updated `@wordpress/scripts` to 30.9.0.
-   Updated node modules patches with updated `@wordpress/scripts`.
-   Updated VSCode workspace stylelint settings with:

    ```json
    "stylelint.reportDescriptionlessDisables": true,
    "stylelint.reportNeedlessDisables": true,
    "stylelint.reportInvalidScopeDisables": true,
    "editor.codeActionsOnSave": {
    	"source.fixAll.stylelint": "explicit"
    },
    ```

## [1.0.0] - 2025-01-14

### Added

-   Added developer environment files:
    -   `.vscode/settings.json`
    -   `.editorconfig`
    -   `.gitignore`
    -   `.markdownlint.json`
    -   `.prettierignore`
    -   `eslint.config.mjs`
    -   `package.json`
    -   `phpcs.xml`
    -   `prettier.config.mjs`
    -   `stylelint.config.mjs`
    -   `webpack.config.mjs`
-   Added documentation files:
    -   `CHANGELOG.md`
    -   `README.md`
-   Added GitHub gutenberg [eslint-v9 PR branch files](https://github.com/WordPress/gutenberg/pull/65648) for the `@wordpress/eslint-plugin` and `@wordpress/scripts` node modules.
-   Added patches for the `@wordpress/eslint-plugin` and `@wordpress/scripts` node modules changes.
-   Added package.json devDependencies:
    -   `@eslint/js: ^9.18.0`
    -   `@wordpress/scripts: ^30.8.1`
    -   `copy-webpack-plugin: ^12.0.2`
    -   `eslint: ^9.18.0`
    -   `eslint-plugin-jest: ^28.11.0`
    -   `eslint-plugin-react-hooks: ^5.1.0`
    -   `glob: ^11.0.1`
    -   `globals: ^15.14.0`
    -   `patch-package: ^8.0.0`
    -   `prettier: npm:wp-prettier@^3.0.3`
    -   `prettier-plugin-multiline-arrays: ^4.0.2`
    -   `stylelint: ^16.13.2`
    -   `stylelint-config-cssmodules-order: ^1.1.1`
    -   `stylelint-declaration-block-no-ignored-properties: ^2.8.0`
    -   `stylelint-high-performance-animation: ^1.10.0`
    -   `stylelint-plugin-logical-css: ^1.2.1`
    -   `stylelint-use-nesting: ^6.0.0`
    -   `typescript-eslint: ^8.20.0`
    -   `webpack-remove-empty-scripts: ^1.0.4`
-   Added `postinstall: patch-package` script.
