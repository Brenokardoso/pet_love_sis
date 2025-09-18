import 'package:flutter/material.dart';

class AdaptableLine extends StatelessWidget {
  const AdaptableLine({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.baseWidth = 1101,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.spacing,
  });

  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final double baseWidth;
  final CrossAxisAlignment crossAxisAlignment;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double maxWidth = MediaQuery.sizeOf(context).width;
        if (maxWidth < baseWidth) {
          List<Widget> updatedChildren = adjustFlexibleFromColumns(children);
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: spacing ?? 0,
            children: updatedChildren,
          );
        } else {
          return Row(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            spacing: spacing ?? 0,
            children: children,
          );
        }
      },
    );
  }

  List<Widget> adjustFlexibleFromColumns(List<Widget> widgets) {
    return widgets.map((widget) {
      Widget widgetReturn = widget;
      if (widget is Flexible) {
        widgetReturn = Flexible(child: widget.child);
      }
      return widgetReturn;
    }).toList();
  }
}
