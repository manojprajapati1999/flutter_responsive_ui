/// Defines responsive design breakpoints similar to the Bootstrap grid system.
///
/// These values represent common screen-width thresholds used to determine
/// how layout elements should behave across different device sizes.
///
/// Breakpoints are ordered from smallest to largest:
///
/// | Breakpoint | Width (px) | Typical Device Type                   |
/// |-----------|------------|----------------------------------------|
/// | `xs`      | ≥ 320      | Extra small phones (portrait)         |
/// | `sm`      | ≥ 481      | Small mobile devices (landscape)      |
/// | `md`      | ≥ 601      | Tablets (portrait)                    |
/// | `lg`      | ≥ 769      | Tablets (landscape) / small laptops   |
/// | `xl`      | ≥ 1025     | Large screens / desktops              |
///
/// These values are used by `BootstrapCol` and `BootstrapRow` to compute
/// responsive column widths.
///
/// Example:
/// ```dart
/// if (width >= BootstrapBreakpoints.md) {
///   // tablet or larger
/// }
/// ```
class BootstrapBreakpoints {
  /// Breakpoint for extra-small devices such as small mobile phones.
  static const double xs = 320;

  /// Breakpoint for small devices such as mobile phones in landscape mode.
  static const double sm = 481;

  /// Breakpoint for medium devices such as tablets in portrait orientation.
  static const double md = 601;

  /// Breakpoint for large devices such as tablets in landscape orientation.
  static const double lg = 769;

  /// Breakpoint for extra-large devices including desktops and large laptops.
  static const double xl = 1025;
}
