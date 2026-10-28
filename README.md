# Free Craft & Hobby Printables Kit

A collection of **fillable, printable** templates for hobbyists and crafters. No account needed — just download, fill in, and print.

## What's Included

| Template | Markdown | Printable HTML |
|----------|----------|----------------|
| **Project Planner** | `project-planner.md` | `project-planner.html` |
| **Supply List** | `supply-list.md` | `supply-list.html` |
| **Pattern Tracker** | `pattern-tracker.md` | `pattern-tracker.html` |
| **Completion Log** | `completion-log.md` | `completion-log.html` |

## Quick Start

1. **Print directly** — Open any `.html` file in your browser and print (Ctrl/Cmd + P)
2. **Edit first** — Open `.md` files in any text editor, fill in your details, then print the HTML version
3. **Use digitally** — The HTML files have fillable form fields you can complete in-browser before printing

## Features

- **Fillable forms** — Type directly in the browser before printing
- **Print-optimized** — Clean layouts with `@media print` styles
- **No dependencies** — Pure HTML/CSS, works offline
- **Accessible** — Semantic HTML, good contrast, keyboard navigable
- **Letter & A4 ready** — CSS handles both paper sizes

## Usage Tips

- For best results, use **Print to PDF** first to preview
- Set margins to "Minimum" or "None" in print dialog
- The Markdown files are source — edit them, then regenerate HTML if needed (see below)

## Regenerating HTML from Markdown

If you edit the `.md` files and want to update the HTML:

```bash
# Requires pandoc
pandoc project-planner.md -o project-planner.html --css=print.css --standalone
```

Or use any Markdown-to-HTML converter you prefer.

## Credit

Created by **Asdale Dynamics, LLC** — beginner-friendly AI education, books, and practical tools.

- Book: *The Massive AI Manual*
- Hub: [dylanasdale.github.io](https://dylanasdale.github.io)

## License

MIT License — see [LICENSE](LICENSE) for details.
Copyright (c) 2026 Asdale Dynamics, LLC