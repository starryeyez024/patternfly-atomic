---
title: Tabs
---
## Overview

See [Bootstrap tabs](http://v4-alpha.getbootstrap.com/components/navs/#tabs) for complete tabs documentation.

## Accessibility
role="tabpanel" should be used for the div that wraps the tab contents.

## Accessibility

| Attribute | Value | Usage |
| -- | -- | -- |
| `role` **Applied to:** `<nav>` | "navigation" |  **Outcome:** [Refer to this explanation for more details](http://a11yproject.com/posts/aria-landmark-roles/)   **Required:** Yes, until implicit mapping for `<nav>` is fully supported  |
| `role` **Applied to:** `<ul>` | "tablist" |  **Outcome:** Identifies the `<ul>` list as a tablist to assistive device users   **Required:** Yes |
| `role` **Applied to:** `<a>` | "tab" |  **Outcome:** Identifies the `<a>` link as a tab to assistive device users   **Required:** Yes |
| `role` **Applied to:** `<div>` that wraps the tab contents | "tabpanel" |  **Outcome:** Identifies the tab contents to assistive device users   **Required:** Yes  **Note:** Examples on this page do not show tab contents. |
| `aria-selected` **Applied to:** `li.active` | "true" |   **Outcome:** Communicates which page is selected to assistive device users   **Required:** Yes |


## Usage

| Class | Usage |
| -- | -- |
| `.pf-nav-tabs` **Applied to:** `ul` |  **Outcome:** Displays the menu in Patternfly secondary uderline style rather than the default square tab style **Required:** No **Remarks:** Always use it with `.nav` and `.nav-tabs`. |
