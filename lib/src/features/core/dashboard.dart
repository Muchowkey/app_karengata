import 'package:app_karengata/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(25.0),
            child: Icon(
              LineAwesomeIcons.user,
              size: 40,
            ),
          ),
          title: const Text('Dashboard'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: tSecondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(LineAwesomeIcons.plus),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: tSecondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(LineAwesomeIcons.plus),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: tSecondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(LineAwesomeIcons.plus),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
