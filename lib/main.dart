
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RetailerForm(),
    );
  }
}

class RetailerForm extends StatefulWidget {
  @override
  _RetailerFormState createState() => _RetailerFormState();
}

class _RetailerFormState extends State<RetailerForm> {
  final TextEditingController _nameController = TextEditingController();

  void _submitForm() {
    String name = _nameController.text;
    if (name.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Retailer Name Saved: $name")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retailer Recce'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Retailer Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Save Info'),
            ),
          ],
        ),
      ),
    );
  }
}
