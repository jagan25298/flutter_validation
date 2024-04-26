import 'package:company_assignment/Saved%20text.dart';
import 'package:flutter/material.dart';

class SharePreferenceConcept extends StatefulWidget {
  const SharePreferenceConcept({super.key});

  @override
  State<SharePreferenceConcept> createState() => _SharePreferenceConceptState();
}

class _SharePreferenceConceptState extends State<SharePreferenceConcept> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Share Preferences'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                prefixIconColor: Colors.blueAccent,
                label: Text('Name'),
                hintText: 'Enter the name',
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter the name';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: _mailController,
              decoration: InputDecoration(
                hintText: 'Enter the Mail',
                prefixIconColor: Colors.blueAccent,
                prefixIcon: Icon(Icons.mail),
                label: Text('mail'),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter the mail';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('sumbitted');
            },
            child: Text('Sumbit'),
          )
        ],
      ),
    );
  }
}
