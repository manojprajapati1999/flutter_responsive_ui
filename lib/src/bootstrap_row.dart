import 'package:flutter/material.dart';
import 'bootstrap_col.dart';

/// A responsive row widget similar to the Bootstrap grid `row` component.
///
/// `BootstrapRow` arranges multiple [BootstrapCol] items horizontally,
/// automatically wrapping them based on the available width and the
/// column sizes defined in each [BootstrapCol] instance.
///
/// It uses Flutter's [Wrap] widget internally to support:
/// - automatic wrapping when space runs out
/// - horizontal and vertical gutter spacing
/// - dynamic width calculation for each column
///
/// Example usage:
///
/// ```dart
/// BootstrapRow(
///   gutter: 16,
///   children: [
///     BootstrapCol(md: 6, lg: 4, child: Text("A")),
///     BootstrapCol(md: 6, lg: 4, child: Text("B")),
///     BootstrapCol(md: 12, lg: 4, child: Text("C")),
///   ],
/// );
/// ```
class BootstrapRow extends StatelessWidget {
  /// The list of responsive column elements inside this row.
  ///
  /// Each [BootstrapCol] defines its own breakpoint-based width behavior.
  final List<BootstrapCol> children;

  /// The spacing between columns and between wrapped rows.
  ///
  /// Defaults to `16`, similar to Bootstrap's `gutter` spacing.
  final double gutter;

  /// Creates a responsive grid row similar to Bootstrap's `row`.
  ///
  /// - [children] must contain one or more [BootstrapCol] elements.
  /// - [gutter] defines both horizontal and vertical spacing.
  const BootstrapRow({super.key, required this.children, this.gutter = 16});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: gutter,
          runSpacing: gutter,
          children: children.map((col) {
            // Determine column width based on screen size
            int cols = col.getColumnForWidth(width);

            // Convert Bootstrap-style column count (out of 12)
            // into an actual pixel width
            double itemWidth = (constraints.maxWidth / (12 / cols)) - gutter;

            return SizedBox(width: itemWidth, child: col.child);
          }).toList(),
        );
      },
    );
  }
}
