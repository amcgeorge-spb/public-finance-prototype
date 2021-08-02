import 'package:flutter/material.dart';
import 'package:publicfinanceprototype/core/constants.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_container.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_content.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_content_1.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_content_2.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_content_3.dart';
import 'package:publicfinanceprototype/screens/widgets/pf_header.dart';
import 'package:publicfinanceprototype/screens/widgets/side_menu.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('App'),
      // ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: SideMenu(),
            ),
            Row(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width - 200,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(defaultPadding),
                                  child: PfHeader(),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: PfContent3(
                                  child: screen,
                                ),
                              )
                            ],
                          );
                          Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 2,
                                child: PfContent2(
                                  child: screen,
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 2,
                                child: PfContent2(
                                  child: screen,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
