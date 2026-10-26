# app-bet-brain-extraction

Skull-strip a T1w volume using FSL's bet, with a configurable fractional intensity threshold and optional robust brain-center estimation / bias-field+neck cleanup.

## Inputs

- `t1` (neuro/anat/t1w)

## Outputs

- `t1_brain` (neuro/anat/t1w) -- Skull-stripped T1w volume produced by FSL's bet.

## Usage

Brainlife.io: run via `faber-app-run`/`faber-app-pipeline` (once registered
with `faber-app-create`), or the web UI.

Locally (outside brainlife): copy `config.json.example` to `config.json`,
fill in real file paths, then run `./main` from this directory. `main` pulls
its own container (`singularity exec docker://...`) -- no local install of
the underlying tool needed, only Singularity itself.

Entrypoint: `brain_extract.py`

## Authors

- Gabriele Amorosino <g.amorosino@gmail.com>

## License

MIT, see `LICENSE`.
