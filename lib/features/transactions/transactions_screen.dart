import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // The number of tabs / content sections to display.
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          )),
          Container(
            child: TabBar(
              tabs: [
                Tab(
                  //icon: Icon(Icons.directions_car),
                  text: 'General',
                ),
                Tab(
                  //icon: Icon(Icons.directions_transit),
                  text: 'Financings',
                ),
                Tab(icon: Icon(Icons.directions_bike))
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                SingleChildScrollView(
                  child: Text(
                      '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') /*Very large widget*/,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
