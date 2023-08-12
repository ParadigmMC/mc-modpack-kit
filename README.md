# mc-modpack-kit

**mc-modpack-kit** is a GitHub Actions workflow template designed to streamline the release process of Minecraft modpacks. It automates tasks like version extraction, building the modpack, and publishing it to platforms like Modrinth and CurseForge.

## Features

- Automates the modpack release process using GitHub Actions workflows.
- Extracts loader type and game version information from `pack.toml` files.
- Builds the modpack using the `packwiz` tool.
- Publishes the modpack to Modrinth and CurseForge platforms.
- Provides an update workflow for managing modpack updates.

## Usage

1. **Fork this repository:** Fork this repository to your own GitHub account.

2. **Set up secrets:** In your forked repository, go to "Settings" -> "Secrets" and add the following secrets:

   - `MODRINTH_TOKEN`: Token for authenticating with Modrinth.
   - `MODRINTH_ID`: Modrinth project ID.
   - `CURSEFORGE_TOKEN`: Token for authenticating with CurseForge.
   - `CURSEFORGE_ID`: CurseForge project ID.

3. **Initializing your modpack:**

   - Before you start, make sure to initialize your modpack by generating a `pack.toml` file using the `packwiz` tool. You can use the following command:
     ```
     packwiz init
     ```

4. **Release Please Pull Requests:**

   The workflow automatically handles releases using the Release Please GitHub Action. To trigger a new release, create a pull request (PR) that updates the `CHANGELOG.md` file with the changes for the new release. Once the PR is merged into the `main` branch, the workflow will automatically generate a new release based on the PR's changes.

5. **Update Workflow:**

   The project also includes an update workflow that helps you manage modpack updates more efficiently:

   - **Workflow:** `.github/workflows/update.yml`
   - **Description:** Automatically updates the modpack by checking for changes in the `pack.toml` file.

   To use the update workflow:

   1. Enable the update workflow by uncommenting and customizing the necessary sections in `.github/workflows/update.yml`.
   2. Trigger the update workflow manually or set up a schedule to check for updates periodically.

## License

This project is licensed under the [CC0 1.0 Universal License](LICENSE).

## Acknowledgments

- This project utilizes various GitHub Actions and tools for automating the modpack release process.
- Big thanks ❤️ for [Rafii](https://github.com/Rafii2198) for helping to set this up!
- Special thanks to the GitHub community for their contributions and support.

---

For detailed usage instructions and customization options, please refer to the [documentation](https://github.com/yourusername/mc-modpack-kit/wiki).

Feel free to contribute, open issues, or suggest improvements! 🚀
