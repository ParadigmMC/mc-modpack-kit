<div align="center">
  <img src="https://github.com/jh-devv/mc-modpack-kit/assets/122896463/003f8682-7e4f-4797-bdc8-2610a5d505de" alt="Logo">
</div>

<p align="center">Streamline the Minecraft Modpack Release Process with GitHub Actions!</p>

<p align="center">
  <a href="https://github.com/badges/shields/generate">
    <img src="https://img.shields.io/badge/use%20this-template-blue?logo=github&style=for-the-badge" alt="Use this template">
  </a>
  <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF?logo=githubactions&logoColor=fff&style=for-the-badge" alt="GitHub Actions Badge">
  <img src="https://img.shields.io/badge/Minecraft-62B47A?logo=minecraft&logoColor=fff&style=for-the-badge" alt="Minecraft Badge">
</p>

---

> [!IMPORTANT]
> The repo has just moved from using just `feat`, `fix` and `chore` to using `feat`, `fix`, `chore`, `mod` and `update`!

**mc-modpack-kit** is a GitHub Actions workflow template designed to simplify the release process of Minecraft modpacks using a structured monorepo approach. It automates essential tasks such as versioning, modpack building, and publishing on platforms like Modrinth and CurseForge.

### Key Features

1. **Monorepo Structure**

   Embrace the power of organization with a monorepo-style architecture. Each subdirectory represents a different modpack version or loader type, streamlining your management of multiple modpack variations within a single repository.

   Example subdirectories:
   - `fabric/`: Fabric loader version.
   - `forge/`: Forge loader version.

   You can create more just by initializing packwiz in the said directory of your choosing.

2. **Automated Releases**

   Experience effortless version control with Release Please, which generates changelogs and handles version releases automatically, in sync with your pull requests. Maintain clarity with Conventional Commit Messages.

   Examples:
    - `feat(modpack/<mod>): <description>` for adding new features, configurations or content.
    - `chore(modpack/<mod>): <description>` for routine maintenance tasks or cleanups.
    - `update(modpack/<mod>): update <mod>` for updating mods to newer versions.
    - `mod(modpack/<mod>): add <mod>` for introducing new mods to the modpack.
       
4. **Mod Updates**

   Update your mods effortlessly by utilizing the `update.yml` workflow located in `.github/workflows/update.yml`. This action efficiently updates all mods across all subdirectories.

### Getting Started

1. **Fork the Repository**

   Start by forking this repository to your GitHub account.

2. **Set Up Secrets and Permissions**

   - Navigate to "Settings" -> "Secrets" and add the following secrets:
     - `MODRINTH_TOKEN`, `MODRINTH_ID` for Modrinth authentication.
     - `CURSEFORGE_TOKEN`, `CURSEFORGE_ID` for CurseForge authentication.
   - Enable "Allow GitHub Actions to create and approve pull requests" under "Settings" -> "Actions" -> "General" -> "Workflow permissions".

3. **Initialize Your Modpack**

   - Generate a `pack.toml` file using `packwiz` (installation instructions [here](https://packwiz.infra.link/installation/)) within a modpack folder.
   - Begin by running `packwiz init`, preferably within the `main` directory.
  
4. **Set a release channel**
   - By default this template uses the `beta (0.1.0)` channel, you can switch it to `release (1.0.0)` when you are ready!
   - This can be done via executing `.github/workflows/bump-version-release.yml`!

5. **You are good to go!**
   - You can now merge the release PR that release please has made, sit back and enjoy a cup of coffee! ☕ ^-^

### Troubleshooting and Support

If you encounter any issues or need assistance, consult the [Issues](https://github.com/jh-devv/mc-modpack-kit/issues) page or reach out via my GitHub profile.

### License

This project is licensed under the [CC0 1.0 Universal License](LICENSE).

### Acknowledgments

- This project makes effective use of GitHub Actions and various tools to automate the modpack release process.
- A heartfelt ❤️ thank you to [Rafii](https://github.com/Rafii2198) for helping with this!
- Special thanks to the GitHub community for their contributions and support.

---

Contributions, feedback, and improvements are warmly welcomed! Let's propel this project forward together! 🚀
