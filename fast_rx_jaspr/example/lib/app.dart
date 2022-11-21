import 'package:fast_rx_jaspr/fast_rx_jaspr.dart';
import 'package:jaspr/jaspr.dart';

class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Text('App');

    yield Counter();
  }
}

class Counter extends StatelessComponent {
  final counter = 0.rx;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Button(
      label: 'Click Me',
      onPressed: () => counter.value++,
    );

    yield FastBuilder(() => [Text('Count: $counter')]);
  }
}

class Button extends StatelessComponent {
  const Button({required this.label, required this.onPressed});

  final String label;
  final void Function() onPressed;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'button',
      child: Text(label),
      events: {'click': (e) => onPressed()},
    );
  }
}
