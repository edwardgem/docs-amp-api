# docs-amp-api

Customer-facing AMP API documentation site.

## Structure

- `openapi/v1.yaml`: published OpenAPI artifact (stable customer surface)
- `site/index.html`: API reference UI (Redoc)
- `site/quickstart.md`: integration quickstart content
- `scripts/sync_openapi.sh`: syncs spec from docgen output into `openapi/v1.yaml`

## Local workflow

```bash
cd /Users/edwardc/Projects/docs-amp-api
./scripts/sync_openapi.sh
./scripts/build_site.sh
```

## Publish Sequence (Team Standard)

When you are ready to publish updated online docs, run these commands in order:

```bash
cd /Users/edwardc/Projects/docs-amp-api
make sync
make build
make check
```

Notes:
- `make check` already runs `build`, so a shorter equivalent is:
  - `make sync`
  - `make check`
- After checks pass, commit and push updates (especially `openapi/v1.yaml`) to `main`.
- GitHub Actions workflow `docs-site` will publish the site from `main`.

## Source of truth

Spec is generated in:
- `/Users/edwardc/Projects/docs-backend-docgen/output/openapi.draft.yaml`

This repo publishes the curated customer-facing copy at:
- `openapi/v1.yaml`
