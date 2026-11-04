# Metoda Kompjuterike në Aktuaristikë (MFM2SII09)

Leksione javore 7-orëshe në formë workshop-i: Beamer (Singapore) + knitr + R.
Master i Shkencave në Inxhinieri Matematike në Aktuaristikë · FIMIF · UPT.
Titullari: Prof. Asoc. Dr. Endri Raço (e.raco@fimif.edu.al)

## Struktura

| Dosja | Përmbajtja |
|---|---|
| `00_admin/` | Programi i lëndës, kalendari, shënime administrative |
| `01_template/` | Template-i Beamer Singapore (i detyrueshëm) dhe logot UPT/FIMIF |
| `02_data/` | Të gjitha CSV-të e kursit (sintetike + reale) dhe `README_datasets.md` |
| `03_weeks/week_NN/` | Burimet `.Rnw` të çdo jave (`week_NN_main.Rnw`, `week_NN_hourK.Rnw`, zgjidhjet) |
| `04_slides_pdf/` | PDF-të e kompiluara, gati për studentët |
| `05_assessment/` | Kolegiumi, detyra e kursit, provimi përfundimtar |
| `06_references/` | Literatura dhe vinjetat e paketave |
| `07_scripts/` | Skriptet ndihmëse (p.sh. kompilimi i një jave) |

## Ecuria

| Java | Tema | Statusi |
|---|---|---|
| 01 | Bazat e R në aktuaristikë | ✅ gati (324 slide) |
| 02 | Analiza e të dhënave, `stats`, `tvm` | ✅ gati |
| 03 | Libraritë për jo-jetën (`actuar`) | ⏳ |
| 04 | Rezervat (`ChainLadder`), kredibiliteti | ⏳ |
| 05 | `lifecontingencies`, tabelat e vdekshmërisë | ⏳ |
| 06 | Tabela aktuariale, funksione të përziera, SOA | ⏳ |
| 07 | Sigurime rritëse/zbritëse, anuitete | ⏳ |
| 08 | R në financë, put–call parity | ⏳ |
| 09 | Opsionet europiane dhe amerikane | ⏳ |
| 10 | Black–Scholes · kolegium | ⏳ |
| 11 | Cox–Ross–Rubinstein (binomial) | ⏳ |
| 12 | Përsëritje, detyra e kursit | ⏳ |

## Kompilimi i një jave

```sh
./07_scripts/build_week.sh 01
```

Kërkon: R (`knitr`, `ggplot2`, `dplyr`) dhe një shpërndarje TeX me `pdflatex`.
Kompilimi i plotë i një jave (~300 slide) zgjat rreth 15 minuta.

## Të dhënat

- **Sintetike**: parametrat e vërtetë janë në `02_data/README_datasets.md`; slide-et krahasojnë gjithmonë vlerësimin me të vërtetën.
- **Reale**: `albania_lifetables_HLD_1950_2011.csv` (Human Life-Table Database), `albania_life_expectancy_eurostat_demo_mlexpec.csv` (Eurostat).
