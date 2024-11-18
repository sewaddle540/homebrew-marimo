# Marimo Command

A simple command-line tool for managing and growing your digital marimo moss ball. Grow your marimo virtually, monitor growth, and manage water quality to simulate the experience of nurturing a real marimo.

## Features

- Manage marimo growth
- Display and manage water quality
- Rename your marimo
- Reset marimo growth
- Compatible with `zsh`

## Requirements

- **zsh** (Z Shell) is required to run this command. If zsh is not installed, it will be installed via Homebrew or APT. However, for environments without pre-installed zsh, you may need to install it manually.

## Installation

- Replace `yourusername` with your GitHub username.
### Homebrew (macOS or Linux)

```bash
brew tap yourusername/marimo
brew install marimo
```

### APT(Debian/Ubuntu)

1.Add the repository to your source list:

```bash
sudo add-apt-repository ppa:yourusername/marimo
sudo apt-get update
```

2.Install the package:

```bash
sudo apt-get install marimo
```

### Manual Installation
1.Clone the repository:

```bash
git clone https://github.com/yourusername/marimo.git
cd marimo
```

2.Install the script:

```bash
sudo cp marimo /usr/local/bin/
sudo chmod +x /usr/local/bin/marimo
```

3.(Optional) Install the manual page:

```bash
sudo cp man/marimo.1 /usr/share/man/man1/
sudo gzip /usr/share/man/man1/marimo.1
```


## Usage

Run `marimo` to manage marimo growth:

```bash
marimo [-wq] [-cw] [-n] [-r]
```

### Options

- `-wq`:Display water quality (displayed by default)
- `-cw`:Change water (sets water quality to 100%)
- `-n`:Rename your marimo
- `-r`:Reset marimo growth

### Examples
```bash
$ marimo
Marimo  Water-Quality:96%  Size:5.021007mm

$ marimo -wq
Marimo  Water-Quality:96%  Size:5.021028mm

$ marimo -n
Change name?: Marimari
Changed name.
Marimari  Water-Quality:96%  Size:5.021056mm

$ marimo -cw
Chaged water.
Marimari  Water-Quality:100%  Size:5.021077mm

$ marimo -r
Do you want to reset marimo growth? (y/n): n
Marimari  Water-Quality:100%  Size:5.021091mm

$ marimo -r
Do you want to reset marimo growth? (y/n): y
Reseted marimo.
Marimo  Water-Quality:100%  Size:1.000000mm

```
