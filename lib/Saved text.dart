import 'package:flutter/material.dart';

class ValidationConcept extends StatefulWidget {
  const ValidationConcept({Key? key}) : super(key: key); // Fixed super.key

  @override
  State<ValidationConcept> createState() => _ValidationConceptState();
}

class _ValidationConceptState extends State<ValidationConcept> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  bool _validationName = false;
  bool _validationMobile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Name',
                hintText: 'Enter Name',
                prefixIcon: Icon(Icons.person),
                errorText: _validationName ? "Name can't be empty" : null, // Changed error message
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(

              controller: _mobileController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Mobile',
                hintText: 'Enter Number',
                errorText: _validationMobile ? "Number can't be empty" : null, // Changed error message
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  _validationName = _nameController.text.isEmpty;
                  _validationMobile = _mobileController.text.isEmpty;
                  if (!_validationName && !_validationMobile) {
                    print('--------------->Save Button Clicked');
                    _save();
                  }
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _save() async {
    print('--------------->Save Method');
    print('------------------> Name : ${_nameController.text}');
    print('------------------> Mobile No : ${_mobileController.text}');
  }
}

void main() {
  runApp(MaterialApp(
    home: ValidationConcept(),
  ));
}
