import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: ProfileCard())),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 36, child: Text('AG')),
          SizedBox(height: 16),
          Text(
            'Ana García',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Product Manager'),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.email),
              SizedBox(width: 8),
              Text('ana@mail.com'),
            ],
          ),
        ],
      ),
    );
  }
}
