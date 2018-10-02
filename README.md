# Chainpoint Homebrew Taps

This is a [Homebrew](https://brew.sh/) tap for macOS. You can learn more about third-party taps [here](https://docs.brew.sh/Taps).

A tap is a collection of formulas that can be installed using the `brew` command.

This tap contains formula for use in the [Chainpoint](https://chainpoint.org) Network.

## How do I install these formulae?

First setup the `tap` which will allow you to install any formula in this repo. Its only required to do this once.  The `brew update` and `brew upgrade` commands will work as expected with taps as well.

```
brew tap chainpoint/taps
```

The following formulae can then be installed:

### Chainpoint CLI

Command-line program for interacting with the Chainpoint Network. Installs `chainpoint` and `chp` binaries.

Repository: [chainpoint/chainpoint-cli](https://github.com/chainpoint/chainpoint-cli)

```
brew install chainpoint
```
