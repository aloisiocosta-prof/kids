# Caderno de engenharia reversa — referência Kidoo

**Data da inspeção:** 18/11/2026  
**Referência pública:** https://kidoo.kids/  
**Página de exemplos:** https://kidoo.kids/livros-infantis-personalizados  
**Limite:** inspeção documental das páginas públicas; nenhuma conta foi criada e nenhuma compra foi iniciada.

## Evidências observadas

| ID | Página | Observação pública | Estado |
|---|---|---|---|
| OBS-01 | / | A página apresenta a proposta de um livro infantil personalizado em que a criança é protagonista. | Observado |
| OBS-02 | / | O fluxo promocional é descrito em três etapas: personalização, garantia do livro e entrega digital. | Observado |
| OBS-03 | / | Os campos mencionados publicamente incluem nome, idade, características físicas; foto e dedicatória aparecem como opções. | Observado |
| OBS-04 | / | A página apresenta categorias de aventura, família/pets, estilos visuais e temas. | Observado |
| OBS-05 | /livros-infantis-personalizados | Há uma página pública de exemplos e uma descrição de estilos, temas, personagens adicionais, narração e livro de colorir. | Observado |
| OBS-06 | / | A navegação aponta para uma área do cliente em app.kidoo.kids; a leitura pública foi redirecionada para uma página de entrada, sem acesso à área autenticada. | Observado |

## Não observado / não verificado

- Formulário real após o CTA e seus estados de validação.
- Estrutura de dados, backend, APIs privadas e armazenamento de fotos.
- Checkout, provedor de pagamento, webhooks e política de reembolso.
- Pipeline de IA/geração de imagens, geração de PDF, áudio e entrega real por e-mail/WhatsApp.
- Painel autenticado, biblioteca e recuperação de pedidos.
- Alegações comerciais e depoimentos exibidos no site não foram auditados de forma independente.

## Decisões desta implementação

1. Criar produto independente com identidade visual, textos e componentes originais.
2. Reproduzir a jornada de alto nível: apresentação → dados do protagonista → tema/estilo/mensagem → revisão.
3. Permitir selecionar foto localmente usando image_picker; nesta versão o arquivo permanece em memória no dispositivo/navegador e não é transmitido.
4. Criar uma amostra textual determinística, claramente identificada como prévia local, sem alegar geração de IA ou de PDF.
5. Não implementar pagamento, autenticação, persistência remota, envio por WhatsApp/e-mail ou processamento remoto de imagem.

## Referências

- Kidoo. Página inicial pública. Disponível em: <https://kidoo.kids/>. Acesso em: 18 nov. 2026.
- Kidoo. Livros infantis personalizados — exemplos. Disponível em: <https://kidoo.kids/livros-infantis-personalizados>. Acesso em: 18 nov. 2026.
- REA — Reverse Engineer Anything. Repositório oficial e documentação de instalação. Disponível em: <https://github.com/morluto/rea>. Acesso em: 18 nov. 2026.

## Referências técnicas usadas para o scaffold

- Flutter. What's new in Flutter: release 3.50, 11 nov. 2026. Disponível em: <https://docs.flutter.dev/release/whats-new>. Acesso em: 18 nov. 2026.
- Flutter packages. image_picker 1.2.4 — suporte listado para Android e Web; Android SDK 24+. Disponível em: <https://pub.dev/packages/image_picker>. Acesso em: 18 nov. 2026.
- Flutter. Support for WebAssembly — builds flutter build web --wasm, compatibilidade do navegador e fallback JavaScript. Disponível em: <https://docs.flutter.dev/platform-integration/web/wasm>. Acesso em: 18 nov. 2026.
- REA. Installation and setup. Disponível em: <https://github.com/morluto/rea/blob/main/docs/getting-started/installation.md>. Acesso em: 18 nov. 2026.
