# Kids — Flutter + habilidades de produção de livros infantis

Aplicativo demonstrativo independente em Flutter para personalização de livros infantis, acompanhado por habilidades versionadas para analisar referências, adaptar personagens a partir de fotografias fornecidas pela família e produzir um livro ilustrado original.

## Projeto editorial inicial

**Uma Noite Mágica com Papai Noel**  
**Tema emocional:** coragem.  
**Direção visual:** cartoon mágico.  
**Extensão:** no mínimo 30 páginas narrativas; capa, folha de rosto, dedicatória, créditos e contracapa são adicionais.

A história deverá mostrar coragem como reconhecer o medo, pedir ajuda e agir com segurança — não como ausência de medo ou exposição a perigo.

## O que a referência pública permite afirmar

A página pública de O Natal Gentil de Duda informa estilo "Cartoon mágico", 30 páginas com narração, protagonista de cinco anos, avó, cachorrinha e uma noite de Natal com Papai Noel. O leitor público expõe um contador "1 de 18", diferença que permanece sem explicação. As capturas enviadas mostram a seleção de faixas etárias e uma etapa de cadastro do protagonista. Consulte docs/reference-analysis/kidoo-reference.md.

A leitura textual do site e as capturas não dão acesso às 18 imagens internas do exemplo. Os seus textos e cenas não foram transcritos; o projeto não os copia.

## Skills

| Skill | Uso |
|---|---|
| book-production-orchestrator | Ordenar todo o processo e os entregáveis |
| reference-material-analysis | Ler capturas, imagens, livros e fluxos de referência |
| character-photo-adaptation | Converter fotos fornecidas em personagens ilustrados consistentes |
| children-picturebook-writing | Escrever texto infantil original e adequado à idade |
| storyboard-30-pages | Planejar pelo menos 30 páginas narrativas individualizadas |
| magical-cartoon-art-direction | Definir estilo, paleta, personagens, cenários e prompts |
| picturebook-illustration-production | Produzir e revisar ilustrações página a página |
| narration-and-audio-script | Preparar texto para narração e direção de voz |
| picturebook-layout | Diagramar texto e imagem para livro digital/impresso |
| child-safety-and-editorial-review | Revisar privacidade, representação e conteúdo emocional |
| book-export-preflight | Verificar arquivos finais e contagem de páginas |

## Fluxo de criação

1. Receber imagens e instruções do fluxo de referência e catalogar cada evidência.
2. Confirmar faixa etária, nome curto do protagonista, gênero/forma de representação, personalidade, interesses e papel de cada pessoa fotografada.
3. Criar ficha visual de cada personagem a partir das fotos e aprovar os modelos antes de gerar cenas.
4. Escrever a narrativa, revisá-la e aprovar o texto antes das ilustrações.
5. Gerar storyboard de 30+ páginas; cada página tem texto, ilustração, composição, narração e continuidade.
6. Gerar ilustrações com o mesmo guia de personagens e estilo.
7. Diagramar, revisar todas as páginas e exportar.
8. Confirmar a contagem, legibilidade, continuidade, direitos de uso e qualidade dos arquivos.

## Fotos e privacidade

As fotos fornecidas são materiais privados de trabalho. Não as adicione a este repositório público nem a artefatos públicos de CI. Antes do envio, confirme que você tem autorização para usar cada imagem e que as pessoas/responsáveis compreendem a finalidade. As imagens devem ser usadas apenas para a adaptação visual solicitada; não fazemos reconhecimento de identidade.

## Aplicação

O site pretendido é https://aloisiocosta-prof.github.io/kids/ e o workflow encontra-se em .github/workflows/flutter-ci.yml. A primeira publicação depende da validação do workflow e da configuração de Pages com fonte GitHub Actions.

## Base de evidências e bibliografia

- Metadados e limites da referência: docs/reference-analysis/kidoo-reference.md.
- Base de pesquisa: docs/book-production/research-and-design-basis.md.
- Brief editorial e plano de 30 páginas: docs/book-production/editorial-brief.md e docs/book-production/30-page-structure.md.

## Licença

Os arquivos originais deste repositório são disponibilizados sob MIT. Essa licença não concede direitos sobre as marcas, imagens ou textos do site de referência.
