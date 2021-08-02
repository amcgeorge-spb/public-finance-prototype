import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_container.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_header.dart';

class PfContent3 extends StatelessWidget {
  const PfContent3({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
