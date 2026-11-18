# GitHub Pages deployment

The application is deployed from the `main` branch using GitHub Actions. The expected project URL is:

<https://aloisiocosta-prof.github.io/kids/>

## One-time repository setting

In the repository settings, open **Settings → Pages → Build and deployment** and select **GitHub Actions** as the source. The workflow cannot switch this repository setting through the connected GitHub operations used for this change, so this step must be completed once by a repository administrator.

## Automated workflow

The workflow at `.github/workflows/flutter-ci.yml` runs for pushes and pull requests targeting `main`, and can also be started manually from the Actions tab. It:

1. Sets up Flutter 3.50.0 stable and creates the Web and Android platform scaffolding.
2. Resolves packages, checks formatting, analyzes Dart code and runs widget tests.
3. Builds the Web app for WebAssembly with `--base-href /kids/` and content-hashed assets.
4. Uploads `build/web` as the Pages artifact for pushes to `main` or manual runs.
5. Builds a debug Android APK as an additional platform check.
6. Deploys the Pages artifact only after validation succeeds and only outside pull requests.

The workflow uses the official Pages artifact and deployment actions and grants `pages: write` plus `id-token: write` only to the deployment job.

## WebAssembly note

The build produces both WebAssembly and JavaScript output; Flutter selects JavaScript for browsers that do not support the required WasmGC features. Flutter documents that multithreaded WebAssembly rendering additionally requires `Cross-Origin-Embedder-Policy` and `Cross-Origin-Opener-Policy` response headers. GitHub Pages does not expose arbitrary response-header configuration, so this hosting target should be treated as a single-threaded Wasm deployment unless those headers are provided by a compatible proxy/CDN.

## First deployment and troubleshooting

- Complete the one-time **GitHub Actions** Pages source selection above.
- Open **Actions → Flutter CI and GitHub Pages** and inspect the latest run.
- A pull request runs validation but intentionally does not publish a Pages artifact.
- A push to `main` runs validation and then publishes to the URL above.
- If the first deployment is blocked, verify that the repository is public (GitHub Free Pages requirement), that Pages is enabled, and that the Pages environment does not have a protection rule requiring unavailable reviewers.
