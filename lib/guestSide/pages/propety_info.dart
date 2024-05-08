import 'package:flutter/material.dart';

class PropertyInfo extends StatefulWidget {
  const PropertyInfo({super.key});

  @override
  State<PropertyInfo> createState() => _PropertyInfoState();
}

class _PropertyInfoState extends State<PropertyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Property Info Page'),
      ),
    );
  }
}
