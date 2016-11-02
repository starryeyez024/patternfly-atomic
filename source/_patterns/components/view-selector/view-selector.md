---
title: View Control
---
## Overview

This is a piece of the [toolbar pattern](http://www.patternfly.org/pattern-library/forms-and-controls/toolbar/#_design).

Uses Bootstrap .btn and .btn-link classes to style buttons contained in the View Selector.

## Accessibility

Write accessibility, aria tags, tab index and other notes to make this component accessible.

## Usage

| Class | Usage |
| -- | -- |
| `.pf-view-selector` **Applied to:** `<div>`|  **Outcome:** Makes a view selector **Required:** No **Remarks:** No styling; this class is for future customization. |
| `.btn .btn-link` **Applied to:** `button` | **Outcome:** Bootstrap styles for individual buttons in the selector. **Required:** Yes |
| `.pf-view-selector__btn-link` **Applied to:** `btn-link` | **Outcome:** Applies Patternfly styles including hover state. **Required:** Yes |
| `.pf-view-selector__btn-link--active` **Applied to:** `pf-view-selector__btn-link` | **Outcome:** Highlights the active selection. **Required:** On the active selection only. |
