import 'package:flutter_test/flutter_test.dart';

import 'package:project_showcase_app/main.dart';

void main() {
  testWidgets('App renders landing screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Parveen Eswaran'), findsOneWidget);
    expect(find.text('View My Projects'), findsOneWidget);
  });
}
