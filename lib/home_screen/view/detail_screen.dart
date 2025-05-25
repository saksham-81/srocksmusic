import 'package:flutter/material.dart';

class ServiceDetailsScreen extends StatelessWidget {
  final String serviceTitle;

  const ServiceDetailsScreen({required this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(serviceTitle)),
      body: Center(child: Text('You tapped on: $serviceTitle')),
    );
  }
}
