import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';
import 'package:publicfinanceprototype/features/transactions/transactions_screen.dart';

class PfContainer extends StatelessWidget {
  const PfContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: TransactionScreen(),
    );

    // SizedBox(
    //   width: double.infinity,
    //   child: ElevatedButton(
    //     child: Text('push'),
    //     onPressed: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => SecondRoute()),
    //       );
    //     },
    //   ),
    // ),
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
