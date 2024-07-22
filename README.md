# Custom Git Hooks
This repo contains custom hooks taliored for development activities at Flash.

## Setup
* To use these hooks in all projects, clone this repo in a directory of your choosing, then run:<br>
`git config --global core.hooksPath "<path/to/this/repo>"`
* Modify `prepare-commit-msg` to point to the appropriate file location
* If you only want it in a specific repo or repos, copy these files into your repo's `.git/hooks` directory

## Usage
Currently, this repo only modifies the prepare-commit-msg hook. Whenever making a commit on an issue branch, the issue name/number will automatically
be added to the start of the commit message assuming the branch follows the `PK-{issue number}-description` format.
