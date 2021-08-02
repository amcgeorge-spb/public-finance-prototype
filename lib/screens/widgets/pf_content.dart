import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_container.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_header.dart';

class PfContent extends StatelessWidget {
  const PfContent({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          PfHeader(),
          SizedBox(height: defaultPadding),
          //PfContainer(),
          Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
