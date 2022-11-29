import 'package:flutter/material.dart';

class NewContact extends StatelessWidget {
  const NewContact({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  label: Text('Enter Name'),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Create'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
