# TODO.sh

[![Shell](https://img.shields.io/badge/Language-Shell-blue)](https://www.gnu.org/software/bash/)
[![License](https://img.shields.io/github/license/unpwnabl/TODO.sh)](./LICENSE)

A simple TODO list viewer written in Bash.

## Features
- Lightweight and portable
- Reads from a plain text `TODO.txt` file
- Command-line interface for quick usage
- Easy to customize and extend

## Installation
Download the `TODO.sh` file into the desired directory and make the script executable:
```bash
git clone https://github.com/unpwnabl/TODO.sh.
chmod +x TODO.sh
```

## Usage
Prepare a TODO.txt file that is readable in the directory and run:
```bash
./TODO.sh
```

### Code
- ```[]``` Empty check box
- ```[X]``` Filled check box
- ```[!]``` Important check box 

### Example
Given a TODO.txt file inside the working directory:

```text
TODO
[] Clean the house
[X] Learn a new word
[X] Finish project
[] Meet Emma at local pub
[!] Dance party at 9:00pm
```
Running the script will display:
```markdown
TODO
[] Clean the house
[X] Learn a new word
[X] Finish project
[] Meet Emma at local pub
[!] Dance party at 9:00pm
```

## License
This project is licensed under the [GPL-3.0 License](https://www.gnu.org/licenses/gpl-3.0.html)
