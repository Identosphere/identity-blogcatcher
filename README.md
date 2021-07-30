# Planet Identity Reboot

Inspired by the original [planetidentity.org](https://web.archive.org/web/20161029051802/http://planetidentity.org/) Identity Management feed aggregator, enabled by [Pluto](http://feedreader.github.io/) static site feed-reader, and [GitHub Actions](https://github.com/identosphere/planetid-reboot/blob/master/.github/workflows/ruby.yml). 

Brought to you by Kaliya IdentityWoman, and Infominer.

#### [identosphere.net](https://identosphere.net/)

## Add Your Feeds

Add your personal blog to this feed by editing `planetid.ini` including it's name, link, and link to its rss \ atom feed. 

Enterprise page(s) coming soon.

The template for these pages is in the [planetid](planetid) directory. The html templates use embedded ruby ([ERB](https://www.learnhowtoprogram.com/ruby-and-rails/routing-with-ruby/embedded-ruby)) Feel free to contribute, if there are any improvements you'd like to make.

## Pluto Feed Reader

* [@feedreader](https://github.com/feedreader) [Pluto Planet Guide (Book Edition)](http://feedreader.github.io/) 
  - Free Planet (Static) Website Generator - Auto-Build Web Pages From Published Web Feeds
* [@planet-templates](https://github.com/planet-templates) - [planet-templates.github.io](http://planet-templates.github.io/)
* [web-work-tools/awesome-planet-pluto](https://github.com/web-work-tools/awesome-planet-pluto)

## Try this at home

### Install Dependencies
* Install [Homebrew](https://brew.sh/) (not critical for this, but crucial as a mac user. easily install many softwares)
  * `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) - ([Mac](https://git-scm.com/download/mac))
  * once installed set your user name and email the same as GitHub.
    * `git config --global user.name "FIRST_NAME LAST_NAME"`
    * `git config --global user.email "MY_NAME@example.com"`
* [RBEnv](https://github.com/rbenv/rbenv)
  > `brew install rbenv ruby-build`
  > `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash` (this script checks to see if properly setup)
* `rbenv install 2.6` 
* `brew install sqlite3` 

### Clone this repository

Scroll to the top of this page click the green "code" button and copy its git link.

![](https://i.imgur.com/fL5Mf1X.png)

Open up a terminal (on mac `ctrl + space` and type "terminal")

`git clone https://github.com/Identosphere/identity-blogcatcher.git`

Enter the freshly cloned repository, and set ruby version 2.6 to be used in this folder.

```
cd identity-blogcatcher
rbenv local 2.6
```

## Install Pluto and other ruby packages

To install the planet pluto tools and libraries use ruby's built-in standard package manager / installer e.g.

    $  gem install pluto && gem install nokogiri && gem install sanitize


## Step 2: Build the Starter Planet

Try:

    $ pluto help

to check up on your pluto installation. Resulting in:

```
NAME
    pluto - another planet generator (lets you build web pages from published web feeds)

SYNOPSIS
    pluto [global options] command [command options] [arguments...]

VERSION
    1.2.3

GLOBAL OPTIONS
    -c, --config=PATH - Configuration Path (default: ~/.pluto)
    --help            - Show this message
    -q, --quiet       - Only show warnings, errors and fatal messages
    --verbose         - (Debug) Show debug messages
    --version         - Display the program version

COMMANDS
    about, a      - (Debug) Show more version info
    build, b      - Build planet
    fetch, f      - Fetch feeds
    help          - Shows a list of commands or help for one command
    install, i    - Install template pack
    list, ls, l   - List installed template packs
    merge, m      - Merge planet template pack
    update, up, u - Update planet feeds
```


Now build the sample starter planet. Try:

    $ pluto b planetid.ini -t planetid -o docs

## Open the html files

Now you should have printed html files in the docs directory.. go to your graphical file manager and look for this project in your home directory

## References

- [Pluto Planet Guide (Book Edition)](https://feedreader.github.io) - Official Documentation
- [Pluto Planet Template Packs/Themes](http://planet-templates.github.io) - Blank, Digest, Hacker, Paper, Forty, News, Top 'n' More
- [Talk Notes - New Horizons - Build Your Own (Static) Planet News Site w/ Pluto (and Ruby)](https://github.com/geraldb/talks/blob/master/planet.md)

