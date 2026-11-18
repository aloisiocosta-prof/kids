# AGENTS.md — kids

## Product direction
Build an original Flutter application and production workflow for personalized children's picture books. The initial editorial project is **Uma Noite Mágica com Papai Noel**, with courage as its emotional theme and "cartoon mágico" as its visual direction.

## Mandatory project skills
Before book-production work, read relevant files under skills/:
- book-production-orchestrator for end-to-end workflow and dependencies.
- reference-material-analysis for websites, sample books, screenshots, page images and PDFs.
- character-photo-adaptation for user-provided photographs.
- children-picturebook-writing and storyboard-30-pages for manuscript and page plan.
- magical-cartoon-art-direction and picturebook-illustration-production for visual consistency.
- narration-and-audio-script for spoken text and audio notes.
- picturebook-layout, child-safety-and-editorial-review and book-export-preflight before delivery.

## Non-negotiable constraints
- Use Flutter/Dart as the cross-platform application stack (Web + Android).
- Use supplied photos only to create the user-requested stylized fictional book characters; never infer or claim the depicted person's identity.
- Never commit real character photographs, face crops, private prompts containing personal details, or generated private book pages to this public repository unless the user separately and explicitly authorizes that exact publication.
- Do not save supplied photos as persistent reference images unless the user explicitly requests that separate action and supplies/confirms the reference name.
- Do not reuse the reference publisher's text, characters, book illustrations, logos, testimonials or proprietary assets.
- Courage means recognizing feelings, asking for help and taking safe, thoughtful actions; never equate courage with hiding fear, obeying strangers or taking dangerous risks.
- Use at least 30 numbered narrative pages. Cover, title, dedication, credits and back cover are additional pages and do not count toward the 30 narrative pages.
- Keep each page's prose, illustration brief, composition, narration and continuity notes together in the storyboard.
- Do not claim that a story treats anxiety, guarantees empathy or produces a developmental outcome.
- Label evidence as OBSERVED, INFERRED, UNKNOWN or PRODUCT DECISION.
- Do not implement remote storage, photo upload, AI generation backend, payments, account systems or messaging integrations without separate specifications and approval.

## Verification
For Flutter work, run:
1. dart format --output=none --set-exit-if-changed .
2. flutter analyze
3. flutter test
4. flutter build web --release --wasm --base-href /kids/
5. flutter build apk --debug

For book-production work, run the checklist in skills/book-export-preflight/SKILL.md, prove the narrative-page count from the manifest, and inspect every page in sequence. State clearly if a visual page-by-page review has not been completed.
