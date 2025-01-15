/**
 * Prettier configuration.
 * @see https://prettier.io/docs/en/configuration.html
 */
import wpConfig from "@wordpress/prettier-config";

const config = {
	...wpConfig,
	plugins: ["prettier-plugin-multiline-arrays"],
	overrides: [
		...wpConfig.overrides,
		{
			files: "*.json",
			options: {
				multilineArraysWrapThreshold: 0,
			},
		},
	],
	printWidth: 120,
};

export default config;
