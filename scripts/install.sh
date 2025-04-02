#!/bin/bash

# Constants
ROOT_DIR='wp-dev-config-files'
SCRIPTS_DIR="${ROOT_DIR}/scripts"
EXTRAS_DIR="${ROOT_DIR}/extras"
PATCHES_DIR="${ROOT_DIR}/patches"

# Terminal Base Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Terminal Bright Colors
BRIGHT_BLACK='\033[1;30m'
BRIGHT_RED='\033[1;31m'
BRIGHT_GREEN='\033[1;32m'
BRIGHT_YELLOW='\033[1;33m'
BRIGHT_BLUE='\033[1;34m'
BRIGHT_MAGENTA='\033[1;35m'
BRIGHT_CYAN='\033[1;36m'
BRIGHT_WHITE='\033[1;37m'

# Terminal Format
ITALIC='\033[3m'
BOLD='\033[1m'
RESET='\033[0m'

# Get the script settings
source ${SCRIPTS_DIR}/settings.sh

printf "\n${GREEN}${BOLD}Adding files...${RESET}\n"

if $ADD_CONFIG_COMPOSER; then
  # Add composer.json file to project
  printf "${BLUE}Adding composer.json file...${RESET}\n"
  if [ -f "composer.json" ]; then
    printf "${BLACK}The composer.json file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/composer.json ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}composer.json${RESET}\n"
  fi
fi


if $ADD_CONFIG_EDITORCONFIG; then
  # Add .editorconfig file to project
  printf "${BLUE}Adding .editorconfig file...${RESET}\n"
  if [ -f ".editorconfig" ]; then
    printf "${BLACK}The .editorconfig file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.editorconfig ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}.editorconfig${RESET}\n"
  fi
fi

if $ADD_CONFIG_ESLINT; then
  # Add eslint.config.mjs file to project
  printf "${BLUE}Adding eslint.config.mjs file...${RESET}\n"
  if [ -f "eslint.config.mjs" ]; then
    printf "${BLACK}The eslint.config.mjs file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/eslint.config.mjs ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}eslint.config.mjs${RESET}\n"
  fi
fi

if $ADD_CONFIG_GITIGNORE; then
  # Add .gitignore file to project
  printf "${BLUE}Adding .gitignore file...${RESET}\n"
  if [ -f ".gitignore" ]; then
    printf "${BLACK}The .gitignore file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.gitignore ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}.gitignore${RESET}\n"
  fi
fi

if $ADD_CONFIG_MARKDOWN_LINT_CLI2; then
  # Add .markdownlint-cli2.jsonc file to project
  printf "${BLUE}Adding .markdownlint-cli2.jsonc file...${RESET}\n"
  if [ -f ".markdownlint-cli2.jsonc" ]; then
    printf "${BLACK}The .markdownlint-cli2.jsonc file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.markdownlint-cli2.jsonc ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}.markdownlint-cli2.jsonc${RESET}\n"
  fi
fi

if $ADD_CONFIG_MARKDOWN_LINT; then
  # Add .markdownlint.jsonc file to project
  printf "${BLUE}Adding .markdownlint.jsonc file...${RESET}\n"
  if [ -f ".markdownlint.jsonc" ]; then
    printf "${BLACK}The .markdownlint.jsonc file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.markdownlint.jsonc ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}.markdownlint.jsonc${RESET}\n"
  fi
fi

if $ADD_CONFIG_PACKAGE; then
  # Add package.json file to project
  printf "${BLUE}Adding package.json file...${RESET}\n"
  if [ -f "package.json" ]; then
    printf "${BLACK}The package.json file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/package.json ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}package.json${RESET}\n"
  fi
fi

if $ADD_CONFIG_PHPCS; then
  # Add phpcs.xml file to project
  printf "${BLUE}Adding phpcs.xml file...${RESET}\n"
  if [ -f "phpcs.xml" ]; then
    printf "${BLACK}The phpcs.xml file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/phpcs.xml ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}phpcs.xml${RESET}\n"
  fi
fi

if $ADD_CONFIG_PHPSTAN; then
  # Add phpstan.neon file to project
  printf "${BLUE}Adding phpstan.neon file...${RESET}\n"
  if [ -f "phpstan.neon" ]; then
    printf "${BLACK}The phpstan.neon file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/phpstan.neon ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}phpstan.neon${RESET}\n"
  fi
fi

if $ADD_CONFIG_PRETTIER; then
  # Add prettier.config.mjs file to project
  printf "${BLUE}Adding prettier.config.mjs file...${RESET}\n"
  if [ -f "prettier.config.mjs" ]; then
    printf "${BLACK}The prettier.config.mjs file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/prettier.config.mjs ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}prettier.config.mjs${RESET}\n"
  fi
fi

if $ADD_CONFIG_PRETTIER_IGNORE; then
  # Add .prettierignore file to project
  printf "${BLUE}Adding .prettierignore file...${RESET}\n"
  if [ -f ".prettierignore" ]; then
    printf "${BLACK}The .prettierignore file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.prettierignore ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}.prettierignore${RESET}\n"
  fi
fi

if $ADD_CONFIG_STYLELINT; then
  # Add stylelint.config.mjs file to project
  printf "${BLUE}Adding stylelint.config.mjs file...${RESET}\n"
  if [ -f "stylelint.config.mjs" ]; then
    printf "${BLACK}The stylelint.config.mjs file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/stylelint.config.mjs ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}stylelint.config.mjs${RESET}\n"
  fi
fi

if $ADD_CONFIG_VSCODE_RECOMMENDATIONS; then
  # Add .vscode/extensions.json file to project
  printf "${BLUE}Adding .vscode/extensions.json file...${RESET}\n"

  # Ensure the .vscode directory exists
  mkdir -p .vscode

  if [ -f ".vscode/extensions.json" ]; then
    printf "${BLACK}The .vscode/extensions.json file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.vscode/extensions.json ./.vscode/
    # Print success message
    printf "${GREEN}Added file: ${BOLD}.vscode/extensions.json${RESET}\n"
  fi
fi

if $ADD_CONFIG_VSCODE_SETTINGS; then
  # Add .vscode/settings.json file to project
  printf "${BLUE}Adding .vscode/settings.json file...${RESET}\n"

  # Ensure the .vscode directory exists
  mkdir -p .vscode

  if [ -f ".vscode/settings.json" ]; then
    printf "${BLACK}The .vscode/settings.json file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.vscode/settings.json ./.vscode/
    # Print success message
    printf "${GREEN}Added file: ${BOLD}.vscode/settings.json${RESET}\n"
  fi
fi

if $ADD_CONFIG_WEBPACK; then
  # Add webpack.config.mjs file to project
  printf "${BLUE}Adding webpack.config.mjs file...${RESET}\n"
  if [ -f "webpack.config.mjs" ]; then
    printf "${BLACK}The webpack.config.mjs file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/webpack.config.mjs ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}webpack.config.mjs${RESET}\n"
  fi
fi

if $ADD_DOC_CHANGELOG; then
  # Add CHANGELOG.md file to project
  printf "${BLUE}Adding CHANGELOG.md file...${RESET}\n"
  if [ -f "CHANGELOG.md" ]; then
    printf "${BLACK}The CHANGELOG.md file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${EXTRAS_DIR}/CHANGELOG.md ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}CHANGELOG.md${RESET}\n"
  fi
fi

if $ADD_DOC_README; then
  # Add README.md file to project
  printf "${BLUE}Adding README.md file...${RESET}\n"
  if [ -f "README.md" ]; then
    printf "${BLACK}The README.md file already exists. Skipping creation.${RESET}\n"
  else
    # Copy/Paste file
    cp ${EXTRAS_DIR}/README.md ./
    # Print success message
    printf "${GREEN}Added file: ${BOLD}README.md${RESET}\n"
  fi
fi

if $ADD_PATCH_FILES; then
  # Add /patches/ files to project
  printf "${BLUE}Adding patch files...${RESET}\n"
  # Ensure the .vscode directory exists
  mkdir -p patches
  # Copy/Paste file
  cp ${PATCHES_DIR}/*.patch ./patches/
  # Print success message
  printf "${GREEN}Added patch files${RESET}\n"
fi

if $RUN_COMPOSER_INSTALL; then
  # Install composer dependencies
  printf "\n${BLUE}Running 'composer install'...${RESET}\n"
  composer install
  # Print success message
  printf "${GREEN}${BOLD}Composer installation finished${RESET}\n"
fi

if $RUN_NPM_INSTALL; then
  # Install npm dependencies
  printf "\n${BLUE}Running 'npm install'...${RESET}\n"
  npm install
  # Print success message
  printf "${GREEN}${BOLD}NPM installation finished${RESET}\n"
fi

if $INSTALL_GIT_LOCAL_REPO; then
  # Initialize Git
  printf "\n${BLUE}Initialization Git...${RESET}\n"
  if [ -d .git ]; then
    printf "${BLACK}The .git directory already exists. Skipping initialization.${RESET}\n"
  else
    git init
    # Print success message
    printf "${GREEN}${BOLD}Git initialization finished${RESET}\n"
  fi
fi

printf "\n${MAGENTA}${BOLD}wp-dev-config-files installation is all finished!${RESET}\n\n"
