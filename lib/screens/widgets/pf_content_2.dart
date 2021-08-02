import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_container.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_header.dart';

class PfContent2 extends StatelessWidget {
  const PfContent2({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];
    final List<int> colorCodes = <int>[600, 500, 100, 200, 300];
    return LayoutBuilder(
      builder: (context, constraints) {
        print("constraints.maxHeight ${constraints.maxHeight}");
        print("constraints.maxWidth ${constraints.maxWidth}");
        print(MediaQuery.of(context).size.height.toString());
        return Container(
          color: Colors.purple,
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                width: 100,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        );
      },
    );
  }
}
