# WP Dev Config Files

<!-- TODO: Update this README with usage steps and move the steps below to the testing repo -->

These configuration files are for standardizing linting and formatting rules across your custom WordPress theme development projects.

<!-- For Plugin development, there are a few changes which you can find in the `plugin-config-files` branch. -->

## Steps for getting eslint working with ESM in WordPress scripts:

1. `npm i @wordpress/scripts eslint patch-package typescript-eslint --save-dev`
2. Replace the `@wordpress/eslint-plugin` package with the one from gutenberg-eslint-v9 (update the package.json version to match the most recent version before committing it)
3. Reload VSCode window
4. Run `npx eslint .` to confirm it's working.

> [!NOTE]
> When adding a npm package, non-official changes to `@wordpress/eslint-plugin` and `@wordpress/scripts` may be overwritten. This is what the patch files are for.

## Steps for creating a new patch

1. `npx patch-package @wordpress/eslint-plugin`
2. Add to package.json scripts: `"postinstall": "patch-package",`

> [!NOTE]
> If you are installing packages from scratch, the `package.json` file inside `@wordpress/eslint-plugin` will not come from the patch so you will need to override it manually the first time.
