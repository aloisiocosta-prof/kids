import 'dart:typed_data';

import 'package:material_ui/material_ui.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(const PequenosProtagonistasApp());

class PequenosProtagonistasApp extends StatelessWidget {
  const PequenosProtagonistasApp({super.key});

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF7058C7);
    return MaterialApp(
      title: 'Pequenos Protagonistas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: purple),
        scaffoldBackgroundColor: const Color(0xFFFFFCF8),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: const BorderSide(color: Color(0xFFF0ECF4)),
          ),
        ),
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  static const ink = Color(0xFF28233A);
  static const purple = Color(0xFF7058C7);
  static const muted = Color(0xFF716D7E);

  void _start(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => const BookBuilderPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _header(context),
              _hero(context),
              _steps(),
              _themes(),
              _footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) => Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Row(
              children: [
                const Icon(Icons.auto_stories_rounded, color: purple, size: 30),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'pequenos protagonistas',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: ink,
                      fontSize: 17,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => _start(context),
                  child: const Text('Criar história'),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _hero(BuildContext context) => Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 46, 24, 70),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final copy = Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0xFFDDF4E8),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        child: Text(
                          '✦ UMA AVENTURA COM A SUA IMAGINAÇÃO',
                          style: TextStyle(
                            color: Color(0xFF306B50),
                            fontWeight: FontWeight.w800,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'A criança é a estrela.\nA história é só dela.',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w900,
                            height: 1.08,
                            color: ink,
                            fontSize: constraints.maxWidth < 560 ? 39 : 52,
                          ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'Crie uma aventura personalizada com nome, personagens queridos e um universo escolhido em família.',
                      style: TextStyle(color: muted, height: 1.6, fontSize: 17),
                    ),
                    const SizedBox(height: 26),
                    FilledButton.icon(
                      onPressed: () => _start(context),
                      icon: const Icon(Icons.auto_awesome_rounded),
                      label: const Text('Começar minha história'),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'Prévia demonstrativa gratuita · sem cadastro',
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                  ],
                );
                final artwork = Container(
                  height: 340,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0ECFF),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Center(
                    child: Container(
                      width: 205,
                      height: 270,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFFD989), Color(0xFFFFA18E)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3328233A),
                            blurRadius: 28,
                            offset: Offset(0, 15),
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.auto_awesome, size: 38, color: Colors.white),
                          SizedBox(height: 18),
                          Text(
                            'A GRANDE\nAVENTURA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              height: 1.1,
                              fontWeight: FontWeight.w900,
                              color: ink,
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            'da criança mais\nincrível do mundo',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: ink, height: 1.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                if (constraints.maxWidth < 760) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [copy, const SizedBox(height: 34), artwork],
                  );
                }
                return Row(
                  children: [
                    Expanded(flex: 11, child: copy),
                    const SizedBox(width: 36),
                    Expanded(flex: 9, child: artwork),
                  ],
                );
              },
            ),
          ),
        ),
      );

  Widget _steps() => Container(
        width: double.infinity,
        color: const Color(0xFFF6F3FF),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 65),
        child: const Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1080),
            child: const Column(
              children: [
                const Text(
                  'Uma história em três passos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ink,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 30),
                const Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    _StepCard(
                      number: '01',
                      title: 'Conte quem é a estrela',
                      description: 'Informe nome, idade e detalhes que tornam a criança única.',
                      icon: Icons.face_rounded,
                    ),
                    _StepCard(
                      number: '02',
                      title: 'Escolha o universo',
                      description: 'Selecione tema, estilo de ilustração e mensagem da aventura.',
                      icon: Icons.public_rounded,
                    ),
                    _StepCard(
                      number: '03',
                      title: 'Veja a prévia',
                      description: 'Revise suas escolhas e explore uma amostra da história.',
                      icon: Icons.menu_book_rounded,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget _themes() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 68),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1080),
            child: Column(
              children: [
                const Text(
                  'Todo mundo tem um mundo favorito',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ink,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 26),
                const Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    _ThemeCard(emoji: '🌳', title: 'Floresta mágica'),
                    _ThemeCard(emoji: '🚀', title: 'Viagem espacial'),
                    _ThemeCard(emoji: '⚽', title: 'Aventura esportiva'),
                    _ThemeCard(emoji: '🏰', title: 'Reino encantado'),
                    _ThemeCard(emoji: '🎂', title: 'Dia especial'),
                    _ThemeCard(emoji: '🎒', title: 'Escola divertida'),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget _footer() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xFFEFEAF2))),
        ),
        child: const Text(
          'Pequenos Protagonistas · Projeto demonstrativo independente',
          textAlign: TextAlign.center,
          style: TextStyle(color: muted, fontSize: 12),
        ),
      );
}

class _StepCard extends StatelessWidget {
  const _StepCard({
    required this.number,
    required this.title,
    required this.description,
    required this.icon,
  });

  final String number;
  final String title;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 320,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: LandingPage.purple, size: 30),
                const SizedBox(height: 14),
                Text(
                  number,
                  style: const TextStyle(
                    color: LandingPage.purple,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 8),
                Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),
                const SizedBox(height: 6),
                Text(description, style: const TextStyle(height: 1.5)),
              ],
            ),
          ),
        ),
      );
}

class _ThemeCard extends StatelessWidget {
  const _ThemeCard({required this.emoji, required this.title});

  final String emoji;
  final String title;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 245,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              children: [
                Text(emoji, style: const TextStyle(fontSize: 28)),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class BookBuilderPage extends StatefulWidget {
  const BookBuilderPage({super.key});

  @override
  State<BookBuilderPage> createState() => _BookBuilderPageState();
}

class _BookBuilderPageState extends State<BookBuilderPage> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _details = TextEditingController();
  final _dedication = TextEditingController();
  final _picker = ImagePicker();

  int _step = 0;
  int _age = 6;
  String _theme = 'Floresta mágica';
  String _style = 'Aquarela';
  String _lesson = 'Amizade';
  Uint8List? _photo;
  bool _showPreview = false;

  static const _themes = [
    'Floresta mágica',
    'Espaço',
    'Futebol',
    'Reino encantado',
    'Aniversário',
    'Escola',
    'Dinossauros',
    'Fundo do mar',
  ];
  static const _styles = ['Aquarela', 'Mangá', 'Kawaii', 'Lápis de cor'];
  static const _lessons = ['Amizade', 'Coragem', 'Respeito', 'Empatia'];

  @override
  void dispose() {
    _name.dispose();
    _details.dispose();
    _dedication.dispose();
    super.dispose();
  }

  Future<void> _choosePhoto() async {
    final file = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1600,
      imageQuality: 88,
    );
    if (file == null) return;
    final bytes = await file.readAsBytes();
    if (!mounted) return;
    setState(() {
      _photo = bytes;
      _showPreview = false;
    });
  }

  void _continue() {
    if (_step == 0 && !(_formKey.currentState?.validate() ?? false)) return;
    if (_step < 2) {
      setState(() {
        _step++;
        _showPreview = false;
      });
    } else {
      setState(() => _showPreview = true);
    }
  }

  void _back() {
    if (_step == 0) {
      Navigator.of(context).pop();
    } else {
      setState(() {
        _step--;
        _showPreview = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Criar uma história'),
          leading: IconButton(
            onPressed: _back,
            icon: const Icon(Icons.arrow_back_rounded),
          ),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 880),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vamos imaginar juntos?',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Preencha os detalhes e monte uma prévia demonstrativa da aventura.',
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: List.generate(
                      3,
                      (index) => Expanded(
                        child: Container(
                          height: 6,
                          margin: EdgeInsets.only(right: index == 2 ? 0 : 8),
                          decoration: BoxDecoration(
                            color: index <= _step
                                ? LandingPage.purple
                                : const Color(0xFFE9E5EF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Form(
                    key: _formKey,
                    child: Stepper(
                      currentStep: _step,
                      onStepContinue: _continue,
                      onStepCancel: _back,
                      onStepTapped: (value) {
                        if (value <= _step ||
                            (_step == 0 &&
                                (_formKey.currentState?.validate() ?? false))) {
                          setState(() {
                            _step = value;
                            _showPreview = false;
                          });
                        }
                      },
                      controlsBuilder: (context, details) => Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 8),
                        child: Wrap(
                          spacing: 10,
                          children: [
                            FilledButton(
                              onPressed: details.onStepContinue,
                              child: Text(
                                _step == 2
                                    ? (_showPreview
                                        ? 'Atualizar prévia'
                                        : 'Criar prévia local')
                                    : 'Continuar',
                              ),
                            ),
                            OutlinedButton(
                              onPressed: details.onStepCancel,
                              child: Text(_step == 0 ? 'Voltar' : 'Anterior'),
                            ),
                          ],
                        ),
                      ),
                      steps: [
                        Step(
                          title: const Text('A criança protagonista'),
                          subtitle: const Text('Nome, idade e detalhes pessoais'),
                          isActive: _step >= 0,
                          state: _step > 0
                              ? StepState.complete
                              : StepState.editing,
                          content: _childFields(),
                        ),
                        Step(
                          title: const Text('O mundo da aventura'),
                          subtitle: const Text('Tema, visual e mensagem'),
                          isActive: _step >= 1,
                          state: _step > 1
                              ? StepState.complete
                              : StepState.indexed,
                          content: _adventureFields(),
                        ),
                        Step(
                          title: const Text('Revisar e experimentar'),
                          subtitle: const Text('Confira suas escolhas'),
                          isActive: _step >= 2,
                          content: _review(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF3E9),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      'Demonstração local: a foto permanece na memória desta tela e não é enviada a um servidor.',
                      style: TextStyle(height: 1.5, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _childFields() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _name,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              labelText: 'Nome da criança *',
              hintText: 'Ex.: Sofia',
            ),
            validator: (value) => value == null || value.trim().isEmpty
                ? 'Informe o nome para continuar.'
                : null,
            onChanged: (_) => _showPreview = false,
          ),
          const SizedBox(height: 14),
          DropdownButtonFormField<int>(
            initialValue: _age,
            decoration: const InputDecoration(labelText: 'Idade'),
            items: List.generate(
              11,
              (index) => DropdownMenuItem(
                value: index,
                child: Text('$index ${index == 1 ? 'ano' : 'anos'}'),
              ),
            ),
            onChanged: (value) => setState(() => _age = value ?? 6),
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: _details,
            maxLines: 2,
            decoration: const InputDecoration(
              labelText: 'Como é o personagem?',
              hintText: 'Cabelo, óculos, roupas ou características marcantes',
            ),
          ),
          const SizedBox(height: 14),
          OutlinedButton.icon(
            onPressed: _choosePhoto,
            icon: const Icon(Icons.add_photo_alternate_outlined),
            label: Text(
              _photo == null ? 'Adicionar foto (opcional)' : 'Trocar foto',
            ),
          ),
          if (_photo != null) ...[
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.memory(
                _photo!,
                height: 130,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ],
      );

  Widget _adventureFields() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Escolha o tema'),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: _themes
                .map(
                  (item) => ChoiceChip(
                    label: Text(item),
                    selected: _theme == item,
                    onSelected: (_) => setState(() => _theme = item),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 18),
          const Text('Estilo de ilustração'),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: _styles
                .map(
                  (item) => ChoiceChip(
                    label: Text(item),
                    selected: _style == item,
                    onSelected: (_) => setState(() => _style = item),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 18),
          const Text('Mensagem principal'),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: _lessons
                .map(
                  (item) => ChoiceChip(
                    label: Text(item),
                    selected: _lesson == item,
                    onSelected: (_) => setState(() => _lesson = item),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _dedication,
            maxLines: 3,
            decoration: const InputDecoration(
              labelText: 'Dedicatória (opcional)',
            ),
          ),
        ],
      );

  Widget _review() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _name.text.trim(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text('Idade: $_age anos'),
                  Text('Tema: $_theme'),
                  Text('Estilo: $_style'),
                  Text('Mensagem: $_lesson'),
                  Text(
                    'Foto: ${_photo == null ? 'não adicionada' : 'selecionada'}',
                  ),
                  if (_details.text.trim().isNotEmpty) Text(_details.text),
                ],
              ),
            ),
          ),
          if (_showPreview) ...[
            const SizedBox(height: 16),
            _preview(),
          ] else ...[
            const Text(
              'Ao criar a prévia, você verá uma amostra textual ilustrativa. Nenhum pedido será enviado.',
            ),
          ],
        ],
      );

  Widget _preview() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Prévia local da aventura',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFFFD989), Color(0xFFFFA18E)],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                if (_photo != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.memory(
                      _photo!,
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  const Icon(Icons.face_rounded, size: 70, color: Colors.white),
                const SizedBox(height: 10),
                Text(
                  _name.text.trim(),
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text('e a aventura em $_theme'),
                Text('Estilo: $_style'),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Era uma vez ${_name.text.trim()}, uma criança curiosa que descobriu um mundo de $_theme. Com $_lesson, encontrou forças para viver uma aventura especial.',
            style: const TextStyle(height: 1.55),
          ),
          if (_dedication.text.trim().isNotEmpty) ...[
            const SizedBox(height: 12),
            Text('Dedicatória: ${_dedication.text.trim()}'),
          ],
          const SizedBox(height: 8),
          const Text(
            'Amostra ilustrativa. Não representa um livro completo nem utiliza geração de IA.',
            style: TextStyle(fontSize: 11, color: LandingPage.muted),
          ),
        ],
      );
}
