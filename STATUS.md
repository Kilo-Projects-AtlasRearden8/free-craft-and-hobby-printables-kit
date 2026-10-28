# STATUS

## What was built

A fillable, printable hobby and craft printables kit for Asdale Dynamics, LLC, containing four templates in both Markdown source and printable HTML:

| Template | Markdown | Printable HTML |
|----------|----------|----------------|
| Project Planner | `project-planner.md` | `project-planner.html` |
| Supply List | `supply-list.md` | `supply-list.html` |
| Pattern Tracker | `pattern-tracker.md` | `pattern-tracker.html` |
| Completion Log | `completion-log.md` | `completion-log.html` |

Shared resources:
- `print.css` — print-optimized stylesheet with `@media print` and `@media screen` rules
- `LICENSE` — MIT License, copyright line exactly `Copyright (c) 2026 Asdale Dynamics, LLC`
- `README.md` — kit overview, credits Asdale Dynamics, LLC, links to dylanasdale.github.io
- `STATUS.md` — this file

Template contents:
- **Project Planner**: project overview, materials needed, tools & notions, project steps/milestones, progress log, modifications & notes, budget tracker, completion checklist, final rating
- **Supply List**: yarn/fiber, fabric & textiles, notions & hardware, tools, patterns & references, shipping/misc, summary totals, shopping list, stores/sources, budget notes
- **Pattern Tracker**: pattern details, yarn used, size/version made, row/round tracker, stitch/pattern notes, progress sessions, issues & solutions, blocking/finishing, rating & review, photos/links
- **Completion Log**: project summary (20 rows), monthly breakdown, category totals, stash changes, skills learned, favorite projects, most challenging project, gifted/donated/sold, year in review, notes & memories

All HTML templates are fillable in-browser (form fields, checkboxes, selects) and print-optimized with clean `@media print` styling.

## How to run it

1. **Print directly**: Open any `.html` file in a web browser and press `Ctrl/Cmd + P` (or File > Print). Set margins to "Minimum" or "None" for best results.
2. **Fill digitally first**: Type into form fields in the browser, then print or save as PDF.
3. **Edit source**: Modify `.md` files in any text editor, then regenerate HTML with pandoc if needed:
   ```
   pandoc project-planner.md -o project-planner.html --css=print.css --standalone
   ```
4. **No account, no internet, no secrets required** — fully local-first, offline-capable.

## Verification results

- All 4 HTML files validated as well-formed (no parse errors) using Python's `html.parser`.
- CSS file is syntactically valid standard CSS.
- Git initialized, all 11 files committed on branch `master` (commit `999a0ad`).
- No `.github/workflows` files present.
- No secrets, API keys, or personal data in any file.
- LICENSE copyright line verified: `Copyright (c) 2026 Asdale Dynamics, LLC`.
- README credits Asdale Dynamics, LLC and links to dylanasdale.github.io.
- Commit message is plain, no `Co-authored-by` trailers.
- No push, no remote repository created.

## Known gaps

- No automated build/test pipeline (intentionally no CI/workflow files per requirements).
- HTML files link to a shared `print.css` — must stay in the same folder for styling to apply.
- Pandoc is optional; HTML regeneration requires pandoc to be installed separately.
- Markdown files are source documents only; no automated sync between `.md` and `.html` edits.
- No JavaScript interactivity beyond native HTML form fields (intentional, keeps it simple and print-focused).
- Templates are sized for US Letter / A4 via CSS `@page`; very large projects may need multiple printed pages.