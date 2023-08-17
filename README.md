<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://github.com/jh-devv/mc-modpack-kit/assets/122896463/003f8682-7e4f-4797-bdc8-2610a5d505de">
   <source media="(prefers-color-scheme: light)" srcset="https://github.com/jh-devv/mc-modpack-kit/assets/122896463/55e900a0-6de4-49e7-a9b0-2a8c764c9a4a">
  <img alt="Logo">
</picture>
<br></br>

[![Use this template](https://img.shields.io/badge/use%20this-template-blue?logo=github&style=for-the-badge)](https://github.com/badges/shields/generate)
![GitHub Actions Badge](https://img.shields.io/badge/GitHub%20Actions-2088FF?logo=githubactions&logoColor=fff&style=for-the-badge)![Minecraft Badge](https://img.shields.io/badge/Minecraft-62B47A?logo=minecraft&logoColor=fff&style=for-the-badge)

**mc-modpack-kit** is a GitHub Actions workflow template designed to streamline the release process of Minecraft modpacks. It automates tasks like version extraction, building the modpack, and publishing it to platforms like Modrinth and CurseForge.

**Important**: To maintain a clear and organized version history, it is strongly recommended to follow the [Conventional Commit Messages](https://www.conventionalcommits.org/en/v1.0.0/) format for your commit messages. This format ensures consistency and enables automated versioning and changelog generation.

You can read more at the ["Usage" section](#usage)
if you have any issues, please read this before making an issue: ["Known issues"](#common-issues)

## Features

- Automates the modpack release process using GitHub Actions workflows.
- Extracts loader type and game version information from `pack.toml` files.
- Builds the modpack using the `packwiz` tool.
- Publishes the modpack to Modrinth and CurseForge platforms.
- Provides an update workflow for managing modpack updates.

## Usage

1. **Fork this repository:** Fork this repository to your own GitHub account.

2. **Set up secrets and permissions:**
     In your forked repository, go to "Settings" -> "Secrets" and add the following secrets:

   - `MODRINTH_TOKEN`: Token for authenticating with Modrinth.
   - `MODRINTH_ID`: Modrinth project ID.
   - `CURSEFORGE_TOKEN`: Token for authenticating with CurseForge.
   - `CURSEFORGE_ID`: CurseForge project ID.
  
    For permissions in your forked repository, go to "Settings" -> "Actions" -> "General" -> "Workflow permissions".
    Enable "Allow GitHub Actions to create and approve pull requests"

3. **Initializing your modpack:**

   - Before you start, make sure to initialize your modpack by generating a `pack.toml` file using the `packwiz` tool. Install it via the instructions provided [here](https://packwiz.infra.link/installation/). You can use the following command once you have installed it on your machine:
     ```sh
     packwiz init
     ```

4. **Conventional commits:**
   - Maintain a well-documented history with [**Conventional Commit Messages**](https://www.conventionalcommits.org/en/v1.0.0/).
   - Format: `<type>(<scope>): <subject>`
     - Example: `feat(mod): add new mod`

5. **Release Please PRs:**
   - Streamline your releases even further with Release Please.
   - Automatically generate changelogs and handle versioning by following Conventional Commits.
   - Push changes to `main`, and Release Please will create PRs with changes since the last release.
   - Merge PRs for new versions, and Release Please will manage versioning and changelogs.

6. **Update Workflow:**

   The project also includes an update workflow that helps you manage modpack updates more efficiently:

   - **Workflow:** `.github/workflows/update.yml`
   - **Description:** Automatically updates the modpack by checking for changes in the `pack.toml` file.

   To use the update workflow:

   1. Trigger the update workflow manually or set up a schedule to check for updates periodically.

## Common issues

These are some common issues with mc-modpack-kit and how to fix them

- Why isn't release pr being created?:
   There could be multiple reasons for this, some of them include:
   1. Workflow permissions:
      - For permissions in your forked repository, go to "Settings" -> "Actions" -> "General" -> "Workflow permissions". Enable "Allow GitHub Actions to create and approve pull requests"
   2. You need to use [**Conventional Commit Messages**](https://www.conventionalcommits.org/en/v1.0.0/)
   3. You have older releases/tags on your GitHub repo, please remove them

**If you have any more issues, please post them to [Issues](https://github.com/jh-devv/mc-modpack-kit/issues) or contact me via the detais in my GitHub profile!**

## License

This project is licensed under the [CC0 1.0 Universal License](LICENSE).

## Acknowledgments

- This project utilizes various GitHub Actions and tools for automating the modpack release process.
- Big thanks ❤️ for [Rafii](https://github.com/Rafii2198) for helping to set this up!
- Special thanks to the GitHub community for their contributions and support.

---

<!---For detailed usage instructions and customization options, please refer to the [documentation](https://github.com/yourusername/mc-modpack-kit/wiki).-->

Feel free to contribute, open issues, or suggest improvements! 🚀
