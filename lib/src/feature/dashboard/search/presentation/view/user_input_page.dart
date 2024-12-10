import 'package:flutter/material.dart';

class UserInputPage extends StatelessWidget {
  final List<Map<String, dynamic>> searchResults = [
    {'icon': Icons.search, 'text': 'space'},
    {'icon': Icons.search, 'text': 'space photography'},
    {'icon': Icons.search, 'text': 'space tattoos'},
    {'icon': 'assets/spacex.png', 'text': 'spacex', 'subtitle': 'SpaceX'},
    {
      'icon': 'assets/iss.png',
      'text': 'iss',
      'subtitle': 'International Space Station'
    },
    {
      'icon': 'assets/hubble.png',
      'text': 'nasahubble',
      'subtitle': 'Hubble Space Telescope'
    },
  ];

  UserInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'space',
            border: InputBorder.none,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Cancel', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          final result = searchResults[index];
          return ListTile(
            leading: result['icon'] is IconData
                ? Icon(result['icon'], color: Colors.grey)
                : CircleAvatar(
                    backgroundImage: AssetImage(result['icon']),
                    radius: 20,
                  ),
            title: Text(result['text']),
            subtitle: result.containsKey('subtitle')
                ? Text(result['subtitle'])
                : null,
          );
        },
      ),
    );
  }
}
