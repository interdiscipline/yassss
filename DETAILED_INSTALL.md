# Yassss
Yassss is a [Jekyll](https://jekyllrb.com/) app that builds static content

## Pre-requisites

This boilerplate relies on specific versions of Jekyll, Ruby (see the `.ruby-version` file), and Node (see the `.nvmrc` file).

### Ruby

You will need to use a version manager like [rbenv](https://github.com/rbenv/rbenv) to install and use Ruby `2.7.3`.

If you do not have rbenv, easiest way to install it is using [Homebrew](https://github.com/rbenv/rbenv#homebrew-on-macos):

```sh
$ brew install rbenv ruby-build
```

> Be sure to follow the instructions to add the correct bits to your shell profile (usually `~/.bash_profile` or `~/.zshrc`).

If they are already installed, you may need to upgrade them to be able to install newer Rubies like `2.7.3`:

```sh
$ brew upgrade rbenv ruby-build
```

### Node

You may also need to use a version manager like [nvm](https://github.com/nvm-sh/nvm) to install and use Node `12.14.0`.

You can follow the [installation instructions](https://github.com/nvm-sh/nvm/blob/master/README.md#installation-and-update) or use [Homebrew](https://brew.sh). Technically the brew installation is not supported, but it seems to work fine.

```sh
$ brew install nvm
```

> Be sure to follow the instructions to add the correct bits to your shell profile (usually `~/.bash_profile` or `~/.zshrc`).

## Installing Ruby 2.7.3 with rbenv

Once rbenv has been installed (or if you already have it installed), navigate into the repo directory.

Test which ruby is currently used in the directory:

```sh
$ rbenv which ruby
```

You should get a result like:

```sh
/Users/gblakeman/.rbenv/versions/2.7.3/bin/ruby
```

If you do not, install Ruby `2.7.3`:

```sh
$ rbenv install 2.7.3
```

After installing, run:

```sh
$ rbenv rehash
$ rbenv which ruby
```

You should now see:

```sh
/Users/gblakeman/.rbenv/versions/2.7.3/bin/ruby
```

## Installing and using Node 12.14.0 with nvm

Once `nvm` is installed, navigate into the repo directory and install `12.14.0`:
```sh
$ nvm install 12.14.0
```

### Using `nvm`

After `14.20.0` is installed, when you navigate into the repo directory, set your Node version:

```sh
$ nvm use 14.20.0
```

## Install Jekyll and everything else

```sh
$ yarn install
```

Be sure to copy `_config.example.yml` and name it `_config.yml`. If you are planning on deploying with CircleCI, leave the `.example` version in place and set your environment variables. The config file may contain sensitive data, so it does not get checked in to Github.

## Running the Jekyll site locally

```sh
$ yarn start
```

In your browser, navigate to:
[http://localhost:4000/](http://localhost:4000/)

_Note: you may need to stop and restart the Jekyll server when you change you `config.yml` file or other top-level files._

**To stop the server:** `Ctrl-C`
