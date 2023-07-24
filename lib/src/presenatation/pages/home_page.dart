import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration.collapsed(
                border: OutlineInputBorder(),
                hintText: 'lon',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'len'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32.0),
            child: OutlinedButton(
              onPressed: () => '',
              child: const Text('Find Weather'),
            ),
          ),
        ],
      ),
    );
  }
}
