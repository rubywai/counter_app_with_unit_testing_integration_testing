import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:untitled/main.dart'; // Adjust if your main.dart is in another folder

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Full app integration test", (WidgetTester tester) async {
    //my app render
    await tester.pumpWidget(const MyApp());

    // Check initial state
    expect(find.text('The counter is 0'), findsOneWidget);

    // Tap increment
    await tester.tap(find.text('Increment'));
    await tester.pumpAndSettle();
    expect(find.text('The counter is 1'), findsOneWidget);

    await tester.tap(find.text('Increment'));
    await tester.pumpAndSettle();
    expect(find.text('The counter is 2'), findsOneWidget);

    // Tap decrement
    await tester.tap(find.text('Decrement'));
    await tester.pumpAndSettle();
    expect(find.text('The counter is 1'), findsOneWidget);

    // Tap reset
    await tester.tap(find.text('Reset'));
    await tester.pumpAndSettle();
    expect(find.text('The counter is 0'), findsOneWidget);
  });
}
