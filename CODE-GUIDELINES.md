# PatternFly Code Guidelines

This guide is inspired by people we follow and respect:

- **[Mark Otto](http://markdotto.com/):** [Code Guideline](http://codeguide.co/)
- **[Robert Harris](http://csswizardry.com/):** [CSS Guidelines](http://cssguidelin.es/)
- **[Gravity Department](http://gravitydept.com/)**: [Style Guide Field Manual](http://manuals.gravitydept.com/code/css/style-guide)
- **[Hugo Giraudel](http://hugogiraudel.com/):** [SASS Guidelines](https://sass-guidelin.es/)

Thank you :heart:

## Table of content


<!--
- Use Harry Roberts Guidelines
- changes: comments, license, Preprocessor and how to work with bootstrap.

Write a . Bullets for each section.

- sourcemap?
- performance: sice of the CSS and amount of selectors
-->

# Golden rule

Enforce these, or your own, agreed upon guidelines at all times. Small or large, call out what's incorrect. For additions or contributions to this Code Guide, please open an issue on GitHub.

> Every line of code should appear to be written by a single person, no matter the number of contributors.

This set of rules generate some constraints and conventions. If you ran into instances where a convention isn’t obvious or a solution could be handled in a few different ways, contact the PatterFly community and have a conversation about how to handle it and update this guidelines if needed.


# HTML

**Practicality over purity**. Strive to maintain HTML standards and semantics, but not at the expense of practicality. Use the least amount of markup with the fewest intricacies whenever possible.

<!-- ============================================================================================== -->

## Syntax

- Use soft tabs with two spaces—they're the only way to guarantee code renders the same in any environment.
- Nested elements should be indented once (two spaces).
- Always use double quotes, never single quotes, on attributes.
- Don't include a trailing slash in self-closing elements—the HTML5 spec says they're optional.
- Don’t omit optional closing tags (e.g. </li> or </body>).
- Lowercase tag name.
- Lowercase attribute name.
- Don't add a value to a boolean attribute.
- Avoid HTML comments.
- Use HTML5 elements where appropriate, e.g., `article`, `aside`, `figure`, `figcaption`, `header`, `footer`, `main`, `nav`, `section`.

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Page title</title>
  </head>
  <body>
    <img src="images/company-logo.png" alt="Company">
    <h1 class="hello-world">Hello, world!</h1>
    <input type="text" disabled>
  </body>
</html>
```

<!-- ============================================================================================== -->

## Attribute order

HTML attributes should come in this particular order for easier reading of code.

- `class`
- `id`, `name`
- `data-*`
- `src`, `for`, `type`, `href`, `value`
- `title`, `alt`
- `role`, `aria-*`

Classes make for great reusable components, so they come first. Ids are more specific and should be used sparingly (e.g., for in-page bookmarks), so they come second.

```html
<a class="..." id="..." data-toggle="modal" href="#">
  Example link
</a>

<input class="form-control" type="text">

<img src="..." alt="...">
```

<!-- ============================================================================================== -->

## Reducing markup

Whenever possible, avoid superfluous parent elements when writing HTML. Many times this requires iteration and refactoring, but produces less HTML. Take the following example:

```html
<!-- Bad -->
<span class="avatar">
  <img src="...">
</span>

<!-- Good -->
<img class="avatar" src="...">
```

<!-- ============================================================================================== -->

# CSS

Before we discuss how we write out our rulesets, let’s first familiarise ourselves with the relevant terminology:

```
[selector] {
  [property]: [value];
  [<--declaration--->]
}
```

For example:

```sass
.foo {
  display: block;
  background-color: green;
  color: red;
}
```

<!-- ============================================================================================== -->

## Syntax

- Use soft tabs with two spaces—they're the only way to guarantee code renders the same in any environment.
- When grouping selectors, keep individual selectors to a single line.
- Include one space before the opening brace of declaration blocks for legibility.
- Blank line between rules
- Place closing braces of declaration blocks on a new line.
- Include one space after `:` for each declaration.
- Each declaration should appear on its own line for more accurate error reporting.
- End all declarations with a semi-colon, even the last one.
- Comma-separated property values should include a space after each comma (e.g., `box-shadow`).
- Don't include spaces after commas within `rgb()`, `rgba()`, `hsl()`, `hsla()`, or `rect()` values. This helps differentiate multiple color values (comma, no space) from multiple property values (comma with space).
- Don't prefix property values or color parameters with a leading zero (e.g., `.5` instead of `0.5` and `-.5em` instead of `-0.5em`).
- Lowercase all hex values, e.g., `#fff`. Lowercase letters are much easier to discern when scanning a document as they tend to have more unique shapes.
- Use shorthand hex values where available, e.g., `#fff` instead of `#ffffff`.
- Quote attribute values in selectors, e.g., `input[type="text"]`.  They’re only optional in some cases, and it’s a good practice for consistency.
- Avoid specifying units for zero values, e.g., `margin: 0;` instead of `margin: 0px;`.

Questions on the terms used here? See the syntax section of the [Cascading Style Sheets article](https://en.wikipedia.org/wiki/Cascading_Style_Sheets#Syntax) on Wikipedia.

```sass
/* Bad */
.selector, .selector-secondary, .selector[type=text] {
  padding:15px;
  margin:0px 0px 15px;
  background-color:rgba(0, 0, 0, 0.5);
  box-shadow:0px 1px 2px #CCC,inset 0 1px 0 #FFFFFF
}

/* Good */
.selector,
.selector__element,
.selector[type="text"] {
  padding: 15px;
  margin-bottom: 15px;
  background-color: rgba(0,0,0,.5);
  box-shadow: 0 1px 2px #ccc, inset 0 1px 0 #fff;
}
```

<!-- ============================================================================================== -->

## Declaration order

Related property declarations should be grouped together following the order:

1. Positioning
1. Box model
1. Typographic
1. Visual

Positioning comes first because it can remove an element from the normal flow of the document and override box model related styles. The box model comes next as it dictates a component's dimensions and placement.

Everything else takes place inside the component or without impacting the previous two sections, and thus they come last.

For a complete list of properties and their order, please see [Field CSS Manuals]( http://manuals.gravitydept.com/code/css/properties).

```sass
.declaration-order {
  /* Positioning */
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 100;

  /* Box-model */
  display: block;
  float: right;
  width: 100px;
  height: 100px;

  /* Typography */
  font: normal 13px "Helvetica Neue", sans-serif;
  line-height: 1.5;
  color: #333;
  text-align: center;

  /* Visual */
  background-color: #f5f5f5;
  border: 1px solid #e5e5e5;
  border-radius: 3px;

  /* Misc */
  opacity: 1;
}
```

<!-- ============================================================================================== -->

## Prefixed properties

PatternFly uses [Autoprefixer](https://github.com/postcss/autoprefixer) to deal with CSS vendor prefixes.

**Do not add vendor prefixes to your CSS.**

```sass
/* Bad */
.selector {
  -webkit-box-shadow: 0 1px 2px $color;
          box-shadow: 0 1px 2px $color;
}

/* Good */
.selector {
  box-shadow: 0 1px 2px $color;
}
```

<!-- ============================================================================================== -->

## Single declarations

To improve error detection in instances where a rule set includes only one declaration, remove line breaks for readability and faster editing. Any rule set with multiple declarations should be split to separate lines.

```sass
/* Single declarations on one line */
.span1 { width: 60px; }
.span2 { width: 140px; }
.span3 { width: 220px; }

/* Multiple declarations, one per line */
.sprite {
  display: inline-block;
  width: 16px;
  height: 15px;
  background-image: url(../img/sprite.png);
}

.icon           { background-position: 0 0; }
.icon-home      { background-position: 0 -20px; }
.icon-account   { background-position: 0 -40px; }
```

<!-- ============================================================================================== -->

## Shorthand notation

Strive to limit use of shorthand declarations to instances where you must explicitly set all the available values. Common overused shorthand properties include:

- `padding`
- `margin`
- `font`
- `background`
- `border`
- `border-radius`

Often times we don't need to set all the values a shorthand property represents. For example, HTML headings only set top and bottom margin, so when necessary, only override those two values. Excessive use of shorthand properties often leads to sloppier code with unnecessary overrides and unintended side effects.

The Mozilla Developer Network has a great article on [shorthand properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Shorthand_properties) for those unfamiliar with notation and behavior.

```sass
/* Bad */
.element {
  margin: 0 0 10px;
  background: red;
  background: url("image.jpg");
  border-radius: 3px 3px 0 0;
}

/* Good */
.element {
  margin-bottom: 10px;
  background-color: red;
  background-image: url("image.jpg");
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
```

<!-- ============================================================================================== -->

## Comment and Organization

Code is written and maintained by people. Ensure your code is descriptive, well commented, and approachable by others. Great code comments convey context or purpose. Do not simply reiterate a component or class name.

Be sure to write in complete sentences for larger comments and succinct phrases for general notes.

Follow this comment structure:

1- License header
1- DocBlock
1- Sections
1- Line


```sass
/**
* Copyright 2016 Red Hat, Inc
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/



/*
 * Component heading
 *
 * Sometimes you need to include optional context for the entire component. Do that up here if it's important enough.
 */


// Section level Comment

.selector {
  line-height: 1.5; // Line level Comment
  color: #333;
}
```

### 1. License header

PatternFly is license under the [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0).

- Always the Apache v2.0 license header on each scss files:
- Leave three blank lines bellow

### 2. DocBlock

- Includes the name of the component and a optional comment.
- Leave three blank lines bellow

### 3. Section

The Section comment works as a section divider or a describes a block of code.
- Leave three blank lines above
- Leave one blank lines bellow

### 4. Line

- Describes a specific line of code.


<!-- ============================================================================================== -->

## Naming Selectors

Add any useful or specific meaning via a mechanism that will not inhibit your and your team’s ability to recycle and reuse CSS.

- Keep classes lowercase and use dashes (not underscores or camelCase).
- Avoid excessive and arbitrary shorthand notation. `.btn` is useful for button, but `.s` doesn't mean anything.
- Keep classes as short and succinct as possible.
- Use meaningful names; use structural or purposeful names over presentational.
- Use `.js-*` classes to denote behavior (as opposed to style), but keep these classes out of your CSS.
- Apply these same rules when creating Sass variable names.

```sass
// Bad
.t { ... }
.red { ... }
.header { ... }

// Good
.tweet { ... }
.important { ... }
.tweet-header { ... }
```

### Namespace

To avoid conflicts PatterFly prefixes all classes with “pf-”. This also differentiates PatternFly and Bootstrap class names.

```sass
// Bad
.selector {
  ...
}

// Good
.pf-selector {
  ...
}
```

### IDs and classes

Always use classes, avoid using an ID.

```sass
// Bad
#some-form {
  color: #000;
}

// Good
.some-form {
  color: #000;
}

```

Use classes over generic element tag for optimum rendering performance. Avoid using several attribute selectors (e.g., [class^="..."]) on commonly occurring components. Browser performance is known to be impacted by these.


<!-- ============================================================================================== -->

### BEM

The [BEM methodology](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/) is a better way to decouple CSS from HTML, and modularise class names so they can be extended.

Class name structure follows the `{{pf-block}}__{{element}}--{{modifier}}` structure

```sass
.block__element--modifier {}
```

Example:

```html
<div class="pf-panel panel--collapsible">
  <div class="panel_title">
    <h1>Heading</h1>
  </div>

  <div class="panel_content">
    <p>Lorem ipsum dolor sit amet.</p>
  </div>
</div>
```

```sass
.panel {}                     // Block
.panel--collapsible {}        // Modifier of block

.panel_title {}               // Element

.panel_content {}             // Element
.panel_content--unpadded {}   // Modifier of element
```

**Why it’s better**

- All the selectors have same specificity.
- Every element is defined via a block.
- Every modifier is defined via a block or element.
- Each class name imparts structural info without binding to exact HTML.



<!-- ============================================================================================== -->

## Specificity

Always keep selectors as shallow as possible. Avoid Sass nesting, but if you must do it follow the [inception rule](http://thesassway.com/beginner/the-inception-rule) and never go more than three layers deep.

```sass
// Bad
.header .search-box input[type=search] + .button {}

.search-box {
  .btn {}
}


// Good
.search__button {}
```

### Nesting

Avoid unnecessary nesting. Limit nesting to the following use cases:

1. Modifiers of a style block
1. Media queries
1. Parent selectors
1. States
1. Overwrite Bootstrap
1. Pseudo-classes and pseudo-elements

#### 1. Style block modifiers

If the rule is only a few lines long, the modifier can be nested inside the parent like so:

```sass
.alert {
    border: 1px solid gray;
    color: gray;

    // Error Alert
    &--error {
        border-color: red;
        color: red;
    }
}
```

For longer style blocks don't nest the modifier code as it reduced the legibility of the code.

#### 2. Media queries

Component-specific media queries should be nested inside the component block. Use [Bootstrap responsive breakpoints mixins](http://v4-alpha.getbootstrap.com/layout/overview/#responsive-breakpoints
) and remember that PatternFly is mobile first.

Do progressive enhancement, not gracefully degrade.


```sass
.pf-nav {

    // Styles for small view ports and up
    @include media-breakpoint-up(sm) { ... }
}
```

#### 3. Parent selectors

Make use of Sass’s parent selector mechanism. This allows all rules for a given component to be maintained in one location.

```sass
.pf-primary-nav {
    // Nav appearing in header: Right-align navigation when it appears in the header
    .pf-header & {
        margin-left: auto;
    }
}
```

All styles for `.pf-primary-nav` should be found in one place, rather than scattered throughout multiple partial files.

#### 4. States

States of a component should be included as a nested element. This includes hover, focus, and active states:

```sass
.btn {
    background: blue;

    &:hover, &:focus {
        background: red;
    }
}
```

#### 5. Overwrite Bootstrap

Keep PatterFly code DRY. Reuse as much as we can get from Bootstrap.

```sass
// PatterFly card block
.pf-card {
  border: none;

  // Overwrite Bootstrap card header element
  .card-header{
    background: $pf-card-cap-bg;
    border-bottom-color: $pf-card-border-color;
  }

  // Overwrite Bootstrap card footer element
  .card-footer{
    background: $pf-card-footer-bg;
    border-top-color: $pf-card-border-color
  }
}

// PatterFly card modifier
.pf-card--accented {
  border-top: 2px solid $color-pf-blue-300;
}    
```

**To overwrite Bootstrap:**

- Be precise and accurate, introduce as little modifications as possible to achieve the design.
- Base your styles on the original bootstrap scss file.
- Bootstrap uses a modified version of BEM: `{{block}}-{{element}}-{{modifier}}`. Create a new `pf-` block element to live beside the Bootstrap block instead of a modifier.

### !important

Never use `!important` to raise the specificity of a rule. In well architected CSS this should never be required. If you think it is, rewrite the rules being inherited with high specificity that are causing problems.

```sass
// Bad
.some-form {
  color: #000 !important;
}
```

<!-- ============================================================================================== -->


## Sass

PatternFly uses [Sass](http://sass-lang.com/) to preprocess CSS. Follow this rules of using sass.

We limit our use of Sass to:

- variables
- mixins
- color functions
- math functions
- nesting

Please don't use loops or conditional statements unless absolutely necessary.

### Operators in Sass

For improved readability, wrap all math operations in parentheses with a single space between values, variables, and operators.

```sass
// Bad
.element {
  margin: 10px 0 @variable*2 10px;
}

// Good
.element {
  margin: 10px 0 (@variable * 2) 10px;
}
```

### Variables

A new variable should be created only when all of the following criteria are met:

- the value is repeated at least twice
- the value is likely to be updated at least once
- all occurrences of the value are tied to the variable (i.e. not by coincidence).
- variable format should follow the `$component-modifier-state-property` order.

Basically, there is no point declaring a variable that will never be updated or that is only being used at a single place.


### Mixins

The rule of thumb is that if you happen to spot a group of CSS properties that always appear together for a reason (i.e. not a coincidence), you can put them in a mixin instead.

Another valid example would be a mixin to size an element, defining both width and height at the same time. Not only would it make the code lighter to type, but also easier to read.

The keyword for using mixins is **simplicity**:

- Don't over-engineer
- Don’t over think your code
- above all keep it simple.

If a mixin ends up being longer than 20 lines or so, then it should be either split into smaller chunks or completely revised.


```sass
// Helper to size an element
// @param {Length} $width
// @param {Length} $height

@mixin size($width, $height: $width) {
  width: $width;
  height: $height;
}
```

### @extend

Treat @extend with resect. Use @extend only for maintaining relationships within selectors. If two selectors are characteristically similar, that is the perfect use-case for @extend. If they are unrelated but share some rules, a @mixin might suit you better.


- Stick to extending placeholders, not existing CSS selectors. Use extend on %placeholders primarily, not on actual selectors.
- Extend a placeholder as few times as possible in order to avoid side effects.
- When extending classes, only extend a class with another class, never a complex selector.
- Directly extend a %placeholder as few times as possible.
- Avoid extending general ancestor selectors (e.g. .foo .bar) or general sibling selectors (e.g. .foo ~ .bar). This is what causes selector explosion.

```sass
%button {
  display: inline-block;
  // … button styles

  // Relationship: a %button that is a child of a %modal
  %modal > & {
    display: block;
  }
}

.button {
  @extend %button;
}

// Good
.modal {
  @extend %modal;
}

// Bad
.modal {
  @extend %modal;

  > .button {
    @extend %button;
  }
}
```
