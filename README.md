# WP Dev Config Files

> [!NOTE]
> This repo has been archived since it's been superseded by the [CassidyDC Development Toolset repo](https://github.com/CassidyDC/development-toolset).

These configuration files are for standardizing linting and formatting rules across your WordPress theme development projects.

<!-- For Plugin development, there are a few changes which you can find in the `plugin-config-files` branch. -->

## Quick Start

1. Clone this [repo](https://github.com/jacobcassidy/wp-dev-config-files) to your project's root directory with the command: **`git clone git@github.com:jacobcassidy/wp-dev-config-files.git`**
2. Customize the script's configuration settings in: _wp-dev-config-files/scripts/settings.sh_
3. Run the installation script in you project's root directory with the command: **`wp-dev-config-files/scripts/install.sh`**
4. Delete the _wp-dev-config-files_ directory after successfully running the installation script
5. Update the `package.json` file details, such as name, description, author, homepage, and repository for your project.
6. Reload VSCode for the new linting and formatting rules to take effect.

> [!NOTE]
> If a file already exists, this script will do nothing with that file. If you want to replace the file, you'll need to delete the file you want replaced and rerun this script, or manually copy/paste the parts you want.

## Features

All options can be turn on/off in the `wp-dev-config-files/scripts/settings.sh` file.

Adds:

-   .editorconfig
-   .gitignore
-   .markdownlint-cli2.jsonc
-   .markdownlint.jsonc
-   .prettierignore
-   CHANGELOG.md
-   composer.json
-   eslint.config.mjs
-   package.json
-   phpcs.xml
-   phpstan.neon
-   prettier.config.mjs
-   README.md
-   stylelint.config.mjs
-   webpack.config.mjs

Runs:

-   `npm install`
-   `composer install`
-   `git init`

> [!IMPORTANT]
> This script does not install any packages, only the configuration files the packages use. You will need to have the packages, e.g., Node, NPM, NPX, Git, Markdownlint, Prettier, Composer, ESLint, PHPCS, PHPStan, and Stylelint, installed before these configuration files can be used.

> [!NOTE]
> This script uses the node module `@wordpress/scripts`, which doesn't currently support modern configuration file types such as `eslint.config.mjs`. The patches included in this script, which automatically install from [wp-scripts-patches](https://github.com/jacobcassidy/wp-scripts-patches) when the script is run, temporary fixes the issue so modern file formats can be used until `@wordpress/scripts` is updated to do so itself.

## Found an Issue?

If you come across any issues, please report them [here](https://github.com/jacobcassidy/wp-dev-config-files/issues).

<!-- ## Setup Steps

1. Add the `config-files` to your project's root directory.
2. Run `npm i` to install the packages and patches
3. Reload VSCode for the new linting and formatting rules to take effect.

> [!NOTE]
> When adding a npm package, non-official changes to `@wordpress/eslint-plugin` and `@wordpress/scripts` may be overwritten. This is what the patches are for and they should automatically be applied as needed.

## Steps for creating a new patch (dev notes)

1. If not already installed, run `npm i patch-package --save-dev`.
2. Run `npx patch-package @wordpress/eslint-plugin` and `npx patch-package @wordpress/scripts`.
3. Add the following script to package.json: `"postinstall": "patch-package"`

> [!NOTE]
> If you are installing packages from scratch, the `package.json` file inside `@wordpress/eslint-plugin` may not come from the patch so you might need to override it manually the first time. -->
