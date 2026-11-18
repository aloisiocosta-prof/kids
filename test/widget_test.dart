import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pequenos_protagonistas/main.dart';

void main() {
  testWidgets('mostra a página inicial e o principal ponto de entrada', (tester) async {
    await tester.pumpWidget(const PequenosProtagonistasApp());

    expect(find.text('pequenos protagonistas'), findsOneWidget);
    expect(find.text('Começar minha história'), findsOneWidget);
    expect(find.text('Uma história em três passos'), findsOneWidget);
  });

  testWidgets('valida o nome antes de avançar no formulário', (tester) async {
    await tester.pumpWidget(const PequenosProtagonistasApp());
    await tester.tap(find.text('Começar minha história'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Continuar'));
    await tester.pumpAndSettle();

    expect(find.text('Informe o nome para continuar.'), findsOneWidget);
  });

  testWidgets('permite escolher tema e gerar uma prévia local', (tester) async {
    await tester.pumpWidget(const PequenosProtagonistasApp());
    await tester.tap(find.text('Começar minha história'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextFormField).first, 'Lia');
    await tester.tap(find.text('Continuar'));
    await tester.pumpAndSettle();

    await tester.tap(find.widgetWithText(ChoiceChip, 'Espaço'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Continuar'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Criar prévia local'));
    await tester.pumpAndSettle();

    expect(find.text('Prévia local da aventura'), findsOneWidget);
    expect(find.text('e a aventura em Espaço'), findsOneWidget);
  });
}
