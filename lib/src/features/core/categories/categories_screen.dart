import 'package:app_karengata/src/constants/image_strings.dart';
import 'package:app_karengata/src/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants/colors.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
        ),
        body: Padding(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              ListTile(
                onTap: null,
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tAccentColor.withOpacity(0.1),
                  ),
                  child: const Icon(
                    LineAwesomeIcons.file_invoice_with_us_dollar,
                    color: tPrimaryColor,
                    size: 20,
                  ),
                ),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '0 KES',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Contribution Title')
                  ],
                ),
              ),
              const SizedBox(
                height: tDefaultSize - 10,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: tSecondaryColor),
                      ),
                      onPressed: () {},
                      child: const Column(
                        children: [Text('50')],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: tSecondaryColor),
                      ),
                      onPressed: () {},
                      child: const Column(
                        children: [Text('100')],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: tSecondaryColor),
                      ),
                      onPressed: () {},
                      child: const Column(
                        children: [Text('200')],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: tSecondaryColor),
                      ),
                      onPressed: () {},
                      child: const Column(
                        children: [Text('500')],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: tSecondaryColor),
                      ),
                      onPressed: () {},
                      child: const Column(
                        children: [Text('1000')],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: tSecondaryColor),
                      ),
                      onPressed: () {},
                      child: const Column(
                        children: [Text('0')],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
