import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/main.dart';

void main() {
  testWidgets('App loads and shows counter UI', (WidgetTester tester) async {
    // Run the full app (includes main(), MyApp, Home)
    await tester.pumpWidget(const MyApp());

    // Ensure title is present
    expect(find.text('Counter app with bloc pattern'), findsOneWidget);

    // Check initial state
    expect(find.text('The counter is 0'), findsOneWidget);

    // Tap Increment and test
    await tester.tap(find.text('Increment'));
    await tester.pump();
    expect(find.text('The counter is 1'), findsOneWidget);

    // Tap Reset
    await tester.tap(find.text('Reset'));
    await tester.pump();
    expect(find.text('The counter is 0'), findsOneWidget);
  });
  testWidgets('Decrement', (tester) async {
    await tester.pumpWidget(MyApp());
    await tester.tap(find.byKey(ValueKey("decrement")));
    await tester.pump();
    expect(find.text("The counter is -1"), findsOneWidget);
  });
}
