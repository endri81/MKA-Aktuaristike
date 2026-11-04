#!/usr/bin/env bash
# Build one week's Beamer PDF: knitr -> pdflatex (twice)
# Usage: ./07_scripts/build_week.sh 01
set -euo pipefail
NN="${1:?usage: build_week.sh NN (e.g. 01)}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WEEK="$ROOT/03_weeks/week_$NN"
cd "$WEEK"
Rscript -e "knitr::knit('week_${NN}_main.Rnw', quiet = TRUE)"
pdflatex -interaction=nonstopmode "week_${NN}_main.tex" > /dev/null
pdflatex -interaction=nonstopmode "week_${NN}_main.tex" > /dev/null
grep -nE '^!|Overfull' "week_${NN}_main.log" || echo "No LaTeX errors or overfull boxes."
cp "week_${NN}_main.pdf" "$ROOT/04_slides_pdf/MKA_Java${NN}.pdf"
echo "PDF: 04_slides_pdf/MKA_Java${NN}.pdf"
