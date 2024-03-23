import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:collegeproject/planningpage.dart'; // Import the PlanningPage widget

void main() {
  testWidgets('Initial widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(PlanningPage()); // Use PlanningPage directly

    // Verify that the PlanningPage widget is rendered.
    expect(find.byType(PlanningPage), findsOneWidget);

    // You can add more specific widget checks here if needed.
  });
}
