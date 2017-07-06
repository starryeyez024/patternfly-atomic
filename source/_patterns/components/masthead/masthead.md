---
title: Masthead
---
## Overview

See [Bootstrap tabs](http://v4-alpha.getbootstrap.com/components/navs/#tabs) for complete tabs documentation.

## Accessibility
`<a href="#main">Skip to main content</a>` Should be included as the first keyboard-accessible element to enable keyboard-only users to skip the navigation and access the main contents of the page. This link becomes visible on focus only.

## Accessibility

| Attribute | Value | Usage |
| -- | -- | -- |
| `role` **Applied to:** `<header>` | "banner" |  **Outcome:** [Refer to this explanation for more details](https://www.w3.org/TR/wai-aria/roles#banner)   **Required:** Yes  |
| `aria-label` **Applied to:** `<button>` parent of `.fa-bars` | "Site navigation" |  **Outcome:** Provides a text label for the icon button that opens the navigation when navigation is hidden   **Required:** Yes |
| `alt` **Applied to:** `<img>` | "" |  If providing text for the image would be redundant, such as an application icon that is followed by an application name, then alt text should be empty `alt=""`.    **Outcome:** Communicates to assistive technology that the image does not include additional meaningful content.    **Required:** Yes, `alt` attributes are required for all `<img>` elements |
| `alt` **Applied to:** `<img>` | description of image, or text displayed in image |  If an image includes text, such as a logotype that displays the application name, then provide the same text as the `alt` value.    **Outcome:** Provides a text-alternative of the image to assistive technology     **Required:** Yes, `alt` attributes are required for all `<img>` elements |
| `role` **Applied to:** `<nav>` | "navigation" |  **Outcome:** [Refer to this explanation for more  details](http://a11yproject.com/posts/aria-landmark-roles/)   **Required:** Yes, until implicit mapping for `<nav>` is fully supported  |
| `aria-label` **Applied to:** `<nav>` | "Utilities navigation" |  **Outcome:** Provides a text label for the Utilities navigation to help differentiate it relative to the Site navigation   **Required:** Yes |
