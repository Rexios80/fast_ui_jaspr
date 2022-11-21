Reactive Jaspr components and convenience components for fast_rx

[![pub package](https://img.shields.io/pub/v/fast_rx_jaspr)](https://pub.dev/packages/fast_rx_jaspr)
[![codecov](https://img.shields.io/codecov/c/github/Rexios80/fast_ui_jaspr/master?flag=fast_rx_jaspr)](https://codecov.io/gh/Rexios80/fast_ui_jaspr)
![checks](https://img.shields.io/github/checks-status/Rexios80/fast_ui_jaspr/master)
[![popularity](https://img.shields.io/pub/popularity/fast_rx_jaspr)](https://pub.dev/packages/fast_rx_jaspr/score)
[![likes](https://img.shields.io/pub/likes/fast_rx_jaspr)](https://pub.dev/packages/fast_rx_jaspr/score)
[![pub points](https://img.shields.io/pub/points/fast_rx_jaspr)](https://pub.dev/packages/fast_rx_jaspr/score)

## Features
| Class       | Use-case                                    |
| ----------- | ------------------------------------------- |
| FastBuilder | Rebuilds when reactive values within change |

## Usage
<!-- embedme readme/usage.dart -->
```dart
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

```

See [fast_rx](https://pub.dev/packages/fast_rx) for more documentation

## Additional information
See [fast_ui_jaspr](https://pub.dev/packages/fast_ui_jaspr) for more information