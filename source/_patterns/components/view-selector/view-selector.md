---
title: View Control
---
## Overview

This element does not have its own design but can be seen in the [toolbar pattern](http://www.patternfly.org/pattern-library/forms-and-controls/toolbar/#_design).

Uses Bootstrap `.btn` and `.btn-link` classes to style buttons contained in the View Selector.

## Accessibility

Aria tags: The container is marked as role="group" aria-label="View selector". For each button, aria-label is used to name the view that will be selected by the button.

## Usage

| Class | Usage |
| -- | -- |
| `.pf-view-selector` **Applied to:** `<div>`|  **Outcome:** Makes a view selector **Required:** No **Remarks:** No styling; this class is for future customization. |
| `.btn .btn-link` **Applied to:** `button` | **Outcome:** Bootstrap styles for individual buttons in the selector. **Required:** Yes |
| `.pf-view-selector__btn-link` **Applied to:** `btn-link` | **Outcome:** Applies Patternfly styles including hover state. **Required:** Yes |
| `.active` **Applied to:** `pf-view-selector__btn-link` | **Outcome:** Highlights the active selection. **Required:** On the active selection only. |
