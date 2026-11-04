# MKA · Java 1 — Bazat e R në aktuaristikë

Burimet e leksionit 7-orësh (Beamer, Singapore, knitr).

## Skedarët

- `week_01_main.Rnw` — preambula e template-it, setup i knitr, përfshin orët dhe shtojcën.
- `week_01_hourK.Rnw` (K = 1..7) — një orë mësimi.
- `week_01_hourK_sol.Rnw` — zgjidhjet e ushtrimeve të orës K (shtojca, me lidhje \shkoTe / \kthehu).
- `week_01_data/` — CSV-të e përdorura (sintetike + reale: HLD, Eurostat).
- `logo_upt.png`, `logo_fimif.png` — logot.

## Kompilimi

```r
knitr::knit("week_01_main.Rnw")   # ekzekuton gjithë kodin R
```
```sh
pdflatex week_01_main.tex
pdflatex week_01_main.tex          # herën e dytë për navigimin Singapore
```

Paketat R: `knitr`, `ggplot2`, `dplyr` (vetëm Zgjerim, Ora 5).

## Për të shkurtuar leksionin

- Ora 6 dhe slide-et me etiketën **[Zgjerim]** janë jashtë bërthamës së syllabusit (3 h leksion + 2 h seminar).
- Për të hequr një orë: komento rreshtin përkatës `<<hourK, child=...>>=` dhe zgjidhjet e saj në `week_01_main.Rnw`.
