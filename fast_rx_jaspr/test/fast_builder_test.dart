import 'package:fast_rx_jaspr/fast_rx_jaspr.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_test/jaspr_test.dart';

void main() {
  late ComponentTester tester;

  setUp(() {
    tester = ComponentTester.setUp();
  });

  test('FastBuilder', () async {
    final reactive = 0.rx;
    await tester.pumpComponent(FastBuilder(() => [Text('${reactive.value}')]));
    expect(find.text('0'), findsOneComponent);
    reactive.value = 1;
    await tester.pump();
    expect(find.text('1'), findsOneComponent);
  });
}
