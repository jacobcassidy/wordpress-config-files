# WP Dev Config Files

This is for Theme development. For Plugin development, there are a few changes which you can find in the `plugin-config-files` branch.

[!NOTE] When adding a npm package, any changes to `@wordpress/eslint-`plugin`and`@wordpress/scripts` is overwritten.

## Steps for getting eslint working with ESM in WordPress scripts:

1. `npm i @wordpress/scripts eslint patch-package typescript-eslint --save-dev`
2. Replace the `@wordpress/eslint-plugin` package with the one from gutenberg-eslint-v9 (update the package.json version to match the most recent version before committing it)
3. Reload VSCode window
4. Run `npx eslint .` to confirm it's working.

## Steps for creating a new patch:

1. `npx patch-package @wordpress/eslint-plugin`
2. Add to package.json scripts: `"postinstall": "patch-package",`

NOTE: If you are installing from scratch, the package.json file in @wordpress/eslint-plugin will not come from the patch so you will need to override it manually the first time.
