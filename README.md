# Favicon Maker for Rails

This is a very simple gem that adds a rake task to your Rails project for generating favicons of various sizes and formats from a single source file by making use of the [FaviconMaker](https://github.com/follmann/favicon_maker) library.

## Install

Add the following line to your Gemfile:

    gem 'favicon_maker_rails'

## Usage

1. Place your PNG favicon* in app/assets/images, calling it favicon.png.
2. Type `rake favicon` in your terminal.
3. Your generated favicons will be output into your public directory.

*: The largest size used is 228x228 for Apple Retina displays, I recommend using an image this size or larger for best results.

## TODO

* Add options for customizing source and output directories?
* Allow additional output options.

## Copyright

Copyright (c) 2012 Adam Michel. See LICENSE for details.
