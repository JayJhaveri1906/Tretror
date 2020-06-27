import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

class RetroButton extends StatelessWidget {
  final Widget child;

  RetroButton({this.child});
  @override
  Widget build(BuildContext context) {
    return Button95(
      onTap: () {},
      child: child,
    );
  }
}
