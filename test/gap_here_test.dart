import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gap_here/gap_here.dart';

void main() {
  testWidgets('GapHere widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Container(color: Colors.blue, width: 100, height: 100),
              const GapHere(0.2), // Testing the GapHere widget
              Container(color: Colors.green, width: 100, height: 100),
            ],
          ),
        ),
      ),
    );

    // Verify that the GapHere widget adds correct spacing
    expect(find.byType(GapHere), findsOneWidget);
    final SizedBox spacing = tester.widget(find.byType(GapHere));
    expect(spacing.width, null);
    expect(spacing.height,
        0.2); // Ensure 20% vertical spacing of the screen height
  });
}
