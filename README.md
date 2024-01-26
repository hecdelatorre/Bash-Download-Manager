
#  Bash Download Manager

This project is a command-line tool for downloading files from the internet using the Aria2c download utility. It allows the user to specify the number of downloads, the download directory, and the links to the files to download.

## Getting Started

To use this tool, follow these steps:

1. Clone the repository to your local machine.
    ```bash
    git clone https://gitlab.com/hecdelatorre/bash-download-manager.git
    ```

2. Install Aria2c on your system:

   - **Debian:**
     ```bash
     sudo apt-get update
     sudo apt-get install aria2
     ```

   - **Fedora:**
     ```bash
     sudo dnf install aria2
     ```

   - **Arch:**
     ```bash
     sudo pacman -S aria2
     ```

3. Make the script executable:
    ```bash
    chmod +x index.sh
    ```

4. Run the script:
    ```bash
    ./index.sh
    ```

   Alternatively, you can run the script without cloning the repository using:
   ```bash
   bash -c "$(curl -fsSL https://gitlab.com/hecdelatorre/bash-download-manager/-/raw/main/index-min.sh)"
   ```

## Usage

The tool will guide you through the process of setting up your download. You will be prompted to enter the following information:

- The number of downloads you want to perform
- The download directory (you can leave this empty to use the default directory)
- Whether you want to create a new folder in the download directory
- The links to the files you want to download

Once you have entered all the information, the tool will download the files using Aria2c and record the download time. It will then display a summary of the downloaded files and the download time.

## Contributing

If you would like to contribute to this project, please submit a pull request.

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

