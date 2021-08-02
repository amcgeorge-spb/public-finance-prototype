import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';

class TransactionListScreen extends StatelessWidget {
  const TransactionListScreen({Key? key}) : super(key: key);

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
          //color: Colors.purple,
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

  Widget original() {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'A',
      'B',
      'C',
      'A',
      'B',
      'C',
      'A',
      'B',
      'C',
      'A',
      'B',
      'C'
    ];
    final List<int> colorCodes = <int>[
      600,
      500,
      100,
      600,
      500,
      100,
      600,
      500,
      100,
      600,
      500,
      100,
      600,
      500,
      100
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(child: Text('T R A N S A C T I O N')),
                  ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding,
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add New"),
                  ),
                ],
              ),
            ),
            Row(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('body'),
                  SizedBox(
                      height: 300,
                      width: 300,
                      child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: entries.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 50,
                              color: Colors.amber[colorCodes[index]],
                              child: Center(
                                  child: Text('Entry ${entries[index]}')),
                            );
                          }))
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
