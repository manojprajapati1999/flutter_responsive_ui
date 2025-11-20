import 'package:flutter/material.dart';
import 'breakpoints.dart';

/// A responsive column widget configuration similar to the
/// Bootstrap grid column system.
///
/// `BootstrapCol` defines how many grid columns a widget should take
/// depending on the screen width.
///
/// The breakpoints (`xs`, `sm`, `md`, `lg`, `xl`) map directly to:
///
/// | Device Type        | Breakpoint |
/// |--------------------|------------|
/// | Extra-small mobile | `xs`       |
/// | Small mobile       | `sm`       |
/// | Tablet portrait    | `md`       |
/// | Tablet landscape   | `lg`       |
/// | Desktop / Large    | `xl`       |
///
/// Usage example:
///
/// ```dart
/// BootstrapCol(
///   md: 6,
///   lg: 4,
///   xl: 3,
///   child: Text("Responsive Column"),
/// );
/// ```
class BootstrapCol {
  /// The widget inside the column.
  final Widget child;

  /// Number of columns to occupy on extra-small screens.
  /// Default is `12` (full width).
  final int xs;

  /// Number of columns to occupy on small screens.
  final int sm;

  /// Number of columns to occupy on medium screens.
  final int md;

  /// Number of columns to occupy on large screens.
  final int lg;

  /// Number of columns to occupy on extra-large screens.
  final int xl;

  /// Creates a responsive column entry for the Bootstrap-like grid.
  ///
  /// All breakpoints are optional and default to common
  /// Bootstrap-style values:
  ///
  /// - `xs = 12`
  /// - `sm = 12`
  /// - `md = 6`
  /// - `lg = 4`
  /// - `xl = 3`
  ///
  /// You must provide a [child] widget.
  BootstrapCol({
    required this.child,
    this.xs = 12,
    this.sm = 12,
    this.md = 6,
    this.lg = 4,
    this.xl = 3,
  });

  /// Returns the appropriate column size based on the given screen width.
  ///
  /// The method compares the width with defined breakpoints inside
  /// [BootstrapBreakpoints] and selects the correct column value.
  ///
  /// Example:
  /// ```dart
  /// int cols = col.getColumnForWidth(MediaQuery.of(context).size.width);
  /// ```
  int getColumnForWidth(double width) {
    if (width >= BootstrapBreakpoints.xl) return xl;
    if (width >= BootstrapBreakpoints.lg) return lg;
    if (width >= BootstrapBreakpoints.md) return md;
    if (width >= BootstrapBreakpoints.sm) return sm;
    return xs;
  }
}
