import 'package:app_karengata/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.person_outline_rounded),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                // -- Contribution Cards
                Row(
                  children: [
                    SizedBox(
                        height: 120,
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              LineAwesomeIcons.plus_circle,
                              size: 40,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('Create',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text(
                              'Specify Contribution',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        )),
                  ],
                ),
                // --Transactions History
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
