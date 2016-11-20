# PatternFly 4 CSS

**PatternFly 4** is the best open source modular design system you'll ever use to build enterprise web applications.

Think of PatternFly as a "skinned" version of [Bootstrap v4](http://v4-alpha.getbootstrap.com/) with additional components and customizations.

This repository is javascript agnostic, you'll find only find CSS here.

## Table of contents

* Quick start
* Bugs and feature requests
* Documentation
* Contributing
* Community
* Versioning
* Creators
* Copyright and license

<!-- If you wish to contribute to PatternFly, please follow the instructions under "Contributing to PatternFly". -->

## Quick start

How to use patternfly with code snippet, with a codepen link

## Motivation

A short description of the motivation behind the creation and maintenance of the project. This should explain why the project exists.

* Does this project solve my problem?
* If so, how?

## Documentation

PatternFly CSS docs uses Pattern Lab.

## Installation

Add this section when we have a /dist

## API doc

How does our API works with link to docs

## Test

How to run a test

## Licensing and Contributors

How to contribute, how to build a dev envioremnt and what should you know about modularity.

## Pattern Lab

PatternFly follows a modified version of [atomic design]. We brake down our UI elements into **basics** and **components**:

  * **Basics** are UI elements that can't be broken down.
  * **Components** are UI simple or complex UI elements built with basics or other components.

With those components we form **templates**.

To achieve this implementation PatternFly uses Pattern Lab


## Pattern Lab Node - Gulp Edition
The Gulp wrapper around [Pattern Lab Node Core](https://github.com/pattern-lab/patternlab-node) providing tasks to interact with the core library and move supporting frontend assets.

## Prerequisites

The Pattern Lab Node - Gulp Edition uses [Node](https://nodejs.org) for core processing, [npm](https://www.npmjs.com/) to manage project dependencies, and [gulp.js](http://gulpjs.com/) to run tasks and interface with the core library. Node version 4 or higher suffices. You can follow the directions for [installing Node](https://nodejs.org/en/download/) on the Node website if you haven't done so already. Installation of Node will include npm.

## Installing

`npm` is a dependency management and package system which can pull in all of the Gulp Edition's dependencies for you. To accomplish this run the following:

```
npm install
```

Running `npm install` from a directory containing a `package.json` file will download all dependencies defined within.

## Getting Started


## Updating?

upgrade notes

## Helpful Commands

These are some helpful commands you can use on the command line for working with Pattern Lab.

### List all of the available commands

To list all available commands type:

```
npm run gulp patternlab:help
```

### Generate Pattern Lab

To generate the front-end for Pattern Lab type:

```
npm run gulp patternlab:build
```

### Watch for changes and re-generate Pattern Lab

To watch for changes, re-generate the front-end, and server it via a BrowserSync server,  type:

```
npm run gulp patternlab:serve
```

BrowserSync should open [http://localhost:3000](http://localhost:3000) in your browser.

Supported by the Red Hat UXD Team :heart:
