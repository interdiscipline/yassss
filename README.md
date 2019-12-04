# Yassss - Yet another simple static site starter
## [gb Studio](http://grantblakeman.com), built by [Grant Blakeman](http://instagram.com/gb)

### Basics

**Yassss** is a [Jekyll](https://jekyllrb.com/) app that builds CDN-ready static content with proper asset cache-busting. It assumes deployment to Amazon S3 via CircleCI. In addition to the base Jekyll install, it adds support for a `content` section/tag that is parsed with [Markdown](https://daringfireball.net/projects/markdown/). It has some opinionated structure to the javascript and sass/css and accompanying linting, but that can be easily changed/removed.

The goal of Yassss is simple and unambitious: provide a quick, easy way to spin up a new static site, using Jekyll, without much tinkering. It has opinions and maybe you agree with them and will also find it useful.

### Setup

Use this repo as a template—no need to clone it or fork it unless you’re planning to contribute.

Be sure to copy `_config.example.yml` and name it `_config.yml`. If you are planning on deploying with CircleCI, leave the `.example` version in place and set your environment variables. Yasss uses specific versions of Ruby and Node. If you’re new to managing multiple ruby/node versions, you may want to check the [Detailed Install](https://github.com/gblakeman/yassss/blob/master/DETAILED_INSTALL.md) instructions.

Install everything with:

`yarn install`

The `bundle install` command will be run first. You can always run it separately as well.

### Deployment

Connect your repo to a [CircleCI](https://circleci.com) account.

Make sure the following environment variables are set:

* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`

Tweak the `.circleci/config.yml` file to observe the branches you wish to deploy on. By default it deploys to Production when commits are made to `production` and to Staging when commits are made to either `staging` or `master`.

All builds run [HTML Proofer](https://github.com/gjtorikian/html-proofer) in addition to js/sass linting.

### Content

Any Markdown files added to the `_content` directory can be called via the `content` tag and will be parsed through the Markdown parser.

```
{% content about.md %}
```

### Assets

Yassss uses the [`jekyll-assets`](https://github.com/envygeeks/jekyll-assets) plugin to manage assets. Place all assets within the `_assets` directory and use the `asset` tag to call them.

```liquid
{% asset yassss.scss %}
{% asset yassss.js %}
```

```css
body {
  background-image: asset_url("'{{ bg.png }}'");
}
```

[More info…](https://github.com/envygeeks/jekyll-assets)

#### Bourbon & Normalize

The default Sass setup takes advantage of [Bourbon](https://www.bourbon.io) and [Normalize](https://github.com/necolas/normalize.css). If you do not wish to use them, remove their references in the core `yassss.scss` file and remove their files from the `_assets/css/vendor` directory.

### Other Jekyll Plugins

Both [`jekyll-sitemap`](https://github.com/jekyll/jekyll-sitemap) and [`jekyll-feed`](https://github.com/jekyll/jekyll-feed) are included in the basic config and enabled by default. Either or both can be easily disabled/removed based on your needs.
