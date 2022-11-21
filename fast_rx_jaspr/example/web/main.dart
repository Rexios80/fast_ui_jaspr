// any .dart file inside the /web directory is compiled bundled to javascript
// and executed in the browser

// browser-specific jaspr import
import 'package:jaspr/jaspr.dart';

import 'package:fast_rx_jaspr_example/app.dart';

void main() {
  // attaches the [App] component to the <body> of the page
  // - attachment target can be changed using the [attachTo] parameter of [runApp]
  runApp(App());
}
