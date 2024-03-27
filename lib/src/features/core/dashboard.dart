import 'package:flutter/material.dart';

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
        
      ),
    );
  }
}
