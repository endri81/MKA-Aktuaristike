# Dataset-et sintetike — Metoda Kompjuterike në Aktuaristikë

Të gjitha skedarët janë **të simuluar** (jo të dhëna reale). Riprodhohen me `python3 generate_datasets.py` (seed 2026).
Parametrat e vërtetë janë dhënë më poshtë që studentët të krahasojnë vlerësimet në R me të vërtetën.

| Skedari | Rreshta | Përdorimi (java) | Parametrat e vërtetë |
|---|---|---|---|
| `mortality_table_synthetic.csv` | 111 | Tabelat e jetës, lifecontingencies, Lee–Carter (bazë) | Gompertz–Makeham: M (A=0.0005, B=0.000022, c=1.105), F (A=0.0003, B=0.000009, c=1.112); e0 ≈ 76.3 M / 81.2 F |
| `motor_portfolio_synthetic.csv` | 10 000 | GLM Poisson/Gamma, tarifimi, modeli kolektiv | log λ = −2.3 + 0.02·max(30−mosha,0) + 0.01·max(mosha−65,0) + 0.015·mosha_mjetit + 0.25·[Tiranë] + 0.10·[naftë] + log(ekspozimi); ashpërsi Gamma (formë 2, mesatare 900 €) |
| `individual_claims_synthetic.csv` | 3 000 | Përshtatja e shpërndarjeve, EVT, VaR/TVaR | 95% Lognormale(μ=7, σ=0.9); 5% Pareto (α=1.8) mbi pragun 20 000 € |
| `runoff_triangle_synthetic.csv` | 55 | Chain-Ladder, Mack, Bootstrap | Vite aksidenti 2016–2025; model zhvillimi 40/65/80/88/93/96/98/99/99.5/100%; rritje 4%/vit |
| `lapse_policies_synthetic.csv` | 2 000 | Kaplan–Meier, Nelson–Aalen, **modeli Cox** | Weibull PH (formë 1.3, shkallë 6); β_mosha = −0.02, β_prima = 0.002 (për €), HR_online = 1.5, HR_bankë = 0.8; censurim U(0.5, 10) |
| `stock_prices_gbm_synthetic.csv` | 756 | Kalibrimi i σ, **Cox–Ross–Rubinstein**, Black–Scholes | GBM: S0=100, μ=7%, σ=25% |
| `short_rate_cir_synthetic.csv` | 240 | **Cox–Ingersoll–Ross**, Vasicek, çmimi i obligacioneve | κ=0.5, θ=3.5%, σ=0.08, r0=2% (simulim i saktë me χ² jo-qendror) |
| `credibility_portfolio_synthetic.csv` | 72 | Bühlmann, Bühlmann–Straub (`actuar::cm`) | θ_kontratë ~ Gamma(20, 0.04); variancë brenda = 0.25²·100/vëllim |

Leximi në R:
```r
d <- read.csv("lapse_policies_synthetic.csv")
```

## Të dhëna REALE për Shqipërinë

| Skedari | Përmbajtja | Burimi |
|---|---|---|
| `albania_lifetables_HLD_1950_2011.csv` | Tabela jete të plota/të shkurtuara (m(x), q(x), l(x), d(x), L(x), T(x), e(x)) për 1950, 1955, 1960, 1969, 1979, 1989, 2011; Sex: 1=M, 2=F (e0 2011: M 74.8, F 79.4) | Human Life-Table Database, lifetable.de |
| `albania_life_expectancy_eurostat_demo_mlexpec.csv` | Jetëgjatësia e pritur sipas moshës (0–85+) dhe gjinisë, 2013–2024 (e0 2024: M 78.4, F 82.4) | Eurostat, demo_mlexpec |

Shënim: Eurostat **nuk** publikon tabelë të plotë jete (`demo_mlifetable`) për Shqipërinë; vetëm jetëgjatësinë sipas moshës. Ushtrim i mirë: rindërto q(x) nga e(x).
