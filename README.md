# Pequenos Protagonistas — Flutter Web + Android

Aplicativo demonstrativo independente para criar uma prévia de um livro infantil personalizado. A referência de pesquisa é o fluxo público do site Kidoo; este projeto não é afiliado à Kidoo e não reutiliza sua marca, textos promocionais, depoimentos ou ilustrações.

## O que já está implementado

- Landing page responsiva com identidade visual própria.
- Jornada em três etapas: protagonista, universo da aventura e revisão.
- Nome, idade, descrição visual, personagens adicionais e dedicatória.
- Seleção opcional de foto local por `image_picker`.
- Seleção de tema, estilo e mensagem principal.
- Prévia demonstrativa local da capa e de trechos de história.
- Teste inicial de widget.

## Limites importantes da versão 0.1

- A prévia é determinística e local; não há geração por IA nem PDF final.
- Não há autenticação, checkout, provedor de pagamento, backend, banco de dados, upload remoto, WhatsApp ou e-mail.
- A foto não é transmitida: fica apenas em memória enquanto a tela estiver aberta.
- Não foram acessadas áreas autenticadas ou endpoints privados do site de referência.

## Requisitos

- Flutter 3.50.0 (stable) / Dart 3.14.0 ou versão compatível posterior.
- Android SDK configurado para build Android.

## Preparar e executar

```bash
flutter create --platforms=web,android --project-name=pequenos_protagonistas .
python scripts/set_android_min_sdk.py
flutter pub get
dart format .
flutter analyze
flutter test
flutter run -d chrome --wasm
flutter build web --wasm
flutter build apk --debug
```

## Publicação no GitHub Pages

A aplicação será publicada em <https://aloisiocosta-prof.github.io/kids/> por GitHub Actions. Antes do primeiro deploy, configure **Settings → Pages → Build and deployment → Source → GitHub Actions**.

O workflow `.github/workflows/flutter-ci.yml` valida formatação, análise estática, testes e build Android; nas publicações de `main`, também compila WebAssembly e publica `build/web` com `--base-href /kids/`. Pull requests validam o código, mas não fazem deploy. Consulte [`docs/github-pages-deployment.md`](docs/github-pages-deployment.md) para detalhes e limitações de cabeçalhos HTTP do Wasm no GitHub Pages.

## Instalar REA no ambiente local do Codex

O projeto inclui instaladores em `scripts/`:

**Windows PowerShell**

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\install-rea.ps1
```

**macOS/Linux**

```bash
./scripts/install-rea.sh
```

Os scripts chamam `rea-agents` para configurar o cliente Codex; eles exigem Node.js 22.23.4+, 24.22.1+ ou 26.12.1+ e exibem o plano interativo para revisão. Ao final, reinicie o Codex.

## Estrutura

```text
.
├── .agents/skills/reference-site-reconstruction/SKILL.md
├── docs/reverse-engineering-notes.md
├── docs/github-pages-deployment.md
├── lib/main.dart
├── scripts/
├── test/widget_test.dart
├── AGENTS.md
└── pubspec.yaml
```

## Licença

MIT para os arquivos originais deste projeto. O REA é um projeto externo; a licença e os termos aplicáveis são os publicados no repositório oficial.
