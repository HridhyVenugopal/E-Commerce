import 'package:flutter/material.dart';
import 'package:shopping_final/features/authentication/screen/home/curvered_edges_container.dart';


class CurvedEdges extends StatelessWidget {
  const CurvedEdges({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
