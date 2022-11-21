import 'package:fast_rx/fast_rx.dart';
import 'package:jaspr/jaspr.dart';

/// A [StatefulWidget] that updates with it's observer
class FastBuilder extends StatefulComponent {
  /// A Widget builder containing reactive objects
  final ValueGetter<Iterable<Component>> builder;

  /// Rebuild if the [condition] is true
  ///
  /// Defaults to always rebuild
  final ValueGetter<bool>? condition;

  /// A [FastBuilder] updates when reactive properties within change
  const FastBuilder(this.builder, {super.key, this.condition});

  @override
  State<StatefulComponent> createState() {
    return _FastBuilderState();
  }
}

class _FastBuilderState extends State<FastBuilder> {
  final _observer = RxObserver();

  @override
  void initState() {
    super.initState();
    _observer.listen(() {
      if (!mounted || !(component.condition?.call() ?? true)) return;
      setState(() {});
    });
  }

  @override
  Iterable<Component> build(BuildContext context) {
    return _observer.setup(component.builder);
  }

  @override
  void dispose() {
    _observer.dispose();
    super.dispose();
  }
}
