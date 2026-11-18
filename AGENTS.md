# AGENTS.md — Pequenos Protagonistas

## Objetivo
Construir um aplicativo Flutter multiplataforma (Web + Android) para personalização de livros infantis, usando o site público `https://kidoo.kids/` apenas como referência funcional e de fluxo.

## Regras de implementação
- Use Flutter/Dart como stack principal; mantenha a lógica compartilhada entre Web e Android.
- Prefira APIs do Flutter SDK e dependências Dart/Flutter pequenas e multiplataforma.
- Verifique compatibilidade Web (incluindo o backend WebAssembly aplicável ao Flutter SDK em uso) e Android (SDK mínimo exigido pelas dependências, permissões e ciclo de vida).
- Não introduza código, marca, imagens, textos de marketing, testemunhos, bases de dados, APIs privadas ou credenciais do site de referência.
- Mantenha claro o que é comportamento observado, inferência ou decisão de design.
- Não implemente pagamento, autenticação, upload remoto ou geração real de livros sem especificação e autorização próprias.
- Fotos de crianças são dados pessoais sensíveis no contexto do produto: não persistir nem transmitir imagens nesta versão demonstrativa; explicar qualquer mudança de tratamento de dados antes de implementá-la.
- Faça mudanças incrementais e inclua testes para validações do formulário, seleção de tema e visualização.

## Verificação esperada
1. `dart format .`
2. `flutter analyze`
3. `flutter test`
4. `flutter build web`
5. `flutter build apk --debug`

Registre falhas de ambiente separadamente de falhas do código. Não declare testes executados quando não houver SDK/dispositivo disponível.
