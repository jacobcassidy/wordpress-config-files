# WP Dev Config Files

These configuration files are for standardizing linting and formatting rules across your custom WordPress theme development projects.

<!-- For Plugin development, there are a few changes which you can find in the `plugin-config-files` branch. -->

## Setup Steps

1. Add the `config-files` to your project root directory.
2. Run `npm i` to install the packages and patches
3. Reload VSCode for the new linting and formatting rules to take effect.

> [!NOTE]
> When adding a npm package, non-official changes to `@wordpress/eslint-plugin` and `@wordpress/scripts` may be overwritten. This is what the patches are for and they should automatticlly be applied as needed.

## Steps for creating a new patch (dev notes)

1. If not already installed, run `npm i patch-package --save-dev`.
2. Run `npx patch-package @wordpress/eslint-plugin` and `npx patch-package @wordpress/scripts`.
3. Add the following script to package.json: `"postinstall": "patch-package"`

> [!NOTE]
> If you are installing packages from scratch, the `package.json` file inside `@wordpress/eslint-plugin` may not come from the patch so you might need to override it manually the first time.
