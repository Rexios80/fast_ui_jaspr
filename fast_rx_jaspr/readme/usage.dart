import 'package:fast_rx_jaspr/fast_rx_jaspr.dart';
import 'package:jaspr/jaspr.dart';

void example() {
  // ...

  final count = 0.rx;

  // ...

  // ignore: avoid_print
  count.stream.listen(print);

  // ...

  FastBuilder(() => [Text('$count')]);
  FastBuilder(
    () => [Text('$count')],
    condition: () => true,
  );

  // ...

  // Will print the value and trigger a rebuild of FastBuilders
  count.value = 1;

  final list = <int>[].rx;
  // Will only notify after the run block completes
  list.run(() {
    list.add(1);
    list.add(2);
  });
}
