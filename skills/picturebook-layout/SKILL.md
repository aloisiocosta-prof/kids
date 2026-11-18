---
name: picturebook-layout
description: Typeset an illustrated children's picturebook for digital reading and print, preserving text-image hierarchy, safe areas, page numbering and accessible exports.
---

# Picturebook layout

## Format gate

Before layout, ask whether the book is digital, print or both. For print, obtain the printer's exact trim size, bleed, safe margins, color profile, cover/spine requirements, binding, PDF standard and image resolution. Do not invent these values.

For digital output, confirm portrait/landscape orientation, target device range, spread behavior, font embedding and whether narration is embedded or supplied separately.

## Page system

- Keep a consistent grid, margins, folios and title hierarchy.
- Preserve adequate contrast and readable type for the selected age band.
- Place text in visually quiet areas without obscuring faces, hands, important objects or actions.
- Use no more than a few short text blocks per page; do not shrink text to force content into an illustration.
- Keep text editable and separate from generated image pixels.
- Use page-turn rhythm and whitespace intentionally.
- Ensure reading order and navigation are clear.

## Cover and end matter

Include cover, title page, dedication (if requested), 30+ narrative pages, credits/colophon and back cover as separate elements. Cover and end matter do not count toward the 30 narrative-page minimum.

## Web reading UI

For Flutter, support page navigation, progress count, narration play/pause, text-size control and simple contents/return navigation. Do not add hotspots/minigames unless directly tied to the story and tested with target readers and responsible adults.

## Delivery

Provide editable source/layout plus digital PDF and, if specified, print PDF. Keep one manifest connecting page number, text, image asset, narration asset and QA status.
