# elc - Edit Last Command Output

`elc` is a shell script that allows you to edit the output of the last executed command for certain commands.

## Usage

Run `elc` to capture and edit the output of the last executed command. The script is designed to work with specific commands that generate output you may want to modify.

## Installation

To install `elc` using Homebrew:

```bash
brew install bradly/elc/elc
```

## Configuration

The behavior of `elc` can be configured using environment variables:

- `LAST_COMMAND_OUTPUT`: Path where the last command's output is saved. Default: `$TMPDIR/last_command_output.txt`.
- `EDITOR_COMMAND`: The command used to open the output for editing. Default: `fpp -a`.
- `COMMANDS_TO_WRAP`: An array of commands to wrap and capture their output. Default: `find`, `fd`, `grep`, `rg`.

## Man Page

The detailed usage and options for `elc` are available in the [man page](docs/elc.1).

## Bug Reports and Contributions

Please report any bugs or contribute to the project by opening an [issue on GitHub](https://github.com/bradly/elc/issues).

## License

This script is licensed under the MIT License.

## Author

Written by Bradly Feeley.
