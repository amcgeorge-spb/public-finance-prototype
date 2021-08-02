import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_container.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_header.dart';

class PfContent1 extends StatelessWidget {
  const PfContent1({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
                height: 100,
                child: Container(color: Colors.red, child: Text('Header')))
          ],
        ),
        Row(
          children: [
            SizedBox(
                height: 50,
                child:
                    Container(color: Colors.yellow, child: Text('Sub Header')))
          ],
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                //height: 400,
                child: Container(
                  color: Colors.green,
                  child: LayoutBuilder(builder: (context, constraints) {
                    print(constraints.maxHeight);
                    print(MediaQuery.of(context).size.height.toString());
                    return Container(
                      color: Colors.purple,
                      child: Text('ajdgkask'),
                      height: MediaQuery.of(context)
                          .size
                          .height, //constraints.maxHeight / 2,
                    );
                  }),
                ),
              )

              //Text('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')))
            ],
          ),
        )
      ],
    );
  }
}
