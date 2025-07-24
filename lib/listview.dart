import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(20, (i) => 'العنصر رقم ${i + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('مثال على ListView'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            leading: const Icon(Icons.star, color: Colors.teal),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('تم الضغط على ${items[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
