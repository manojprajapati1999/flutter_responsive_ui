/// The main library file for the `responsive_bootstrap_ui` package.
///
/// This library exports the core components needed to build a
/// Bootstrap-style responsive grid system in Flutter.
///
/// The exports include:
///
/// - **BootstrapBreakpoints** – Defines the screen-width breakpoints
/// - **BootstrapCol** – Represents a responsive column
/// - **BootstrapRow** – Arranges columns into a responsive row
///
/// These components work together to allow developers to build layouts
/// that automatically adapt to different screen sizes similar to the
/// Bootstrap grid system.
///
/// Example:
/// ```dart
/// import 'package:flutter_responsive_ui/responsive_bootstrap_ui.dart';
///
/// BootstrapRow(
///   children: [
///     BootstrapCol(md: 6, child: Text("Left")),
///     BootstrapCol(md: 6, child: Text("Right")),
///   ],
/// );
/// ```
library;

export 'src/breakpoints.dart';
export 'src/bootstrap_col.dart';
export 'src/bootstrap_row.dart';
