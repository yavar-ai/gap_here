import 'package:flutter/material.dart';

/// A widget that adds spacing between its child and neighboring widgets.
///
/// The `GapHere` widget creates a space of a specified size between its child widget
/// and its neighboring widgets. It automatically adjusts the spacing direction
/// based on the layout context in which it's used, making it easy to add
/// spacing in both horizontal and vertical layouts.
class GapHere extends StatelessWidget {
  /// The size of the spacing.
  ///
  /// This value specifies the amount of space to be added between the child widget
  /// and its neighboring widgets. The actual spacing size is calculated based on
  /// the layout direction (horizontal or vertical) and the provided size value.
  final double size;

  /// Creates a GapHere widget.
  ///
  /// The [size] parameter specifies the size of the spacing to be added.
  /// The value should be in logical pixels.
  const GapHere(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the size of the screen
    final Size screenSize = MediaQuery.of(context).size;

    // Check if the parent widget is a Row or Column
    final bool isRow = context.findAncestorWidgetOfExactType<Row>() != null;
    final bool isColumn =
        context.findAncestorWidgetOfExactType<Column>() != null;

    // Return a SizedBox with adjusted width or height based on the layout direction
    return SizedBox(
      width: isRow ? screenSize.width * size : null,
      height: isColumn ? screenSize.height * size : null,
    );
  }
}
