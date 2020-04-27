import 'package:TestsApp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test MyApp widget', (WidgetTester tester) async {
    int count = 0;
    await tester.pumpWidget(MyApp());

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    expect(find.widgetWithText(Scaffold, '${count+1}'), findsOneWidget);

  });
}
