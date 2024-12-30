import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _email, _phone, _gender, _country, _state, _city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField('Name', (value) {
                  if (value == null || value.isEmpty) return 'Name is required';
                  _name = value;
                  return null;
                }),
                _buildTextField('Email', (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  _email = value;
                  return null;
                }),
                _buildTextField('Phone', (value) {
                  if (value == null || value.isEmpty) return 'Phone is required';
                  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return 'Enter a valid phone number';
                  }
                  _phone = value;
                  return null;
                }),
                _buildDropdownField('Gender', ['Male', 'Female', 'Other'], (value) {
                  _gender = value;
                }),
                _buildTextField('Country', (value) {
                  if (value == null || value.isEmpty) return 'Country is required';
                  _country = value;
                  return null;
                }),
                _buildTextField('State', (value) {
                  if (value == null || value.isEmpty) return 'State is required';
                  _state = value;
                  return null;
                }),
                _buildTextField('City', (value) {
                  if (value == null || value.isEmpty) return 'City is required';
                  _city = value;
                  return null;
                }),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Form Submitted Successfully')),
                        );
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String? Function(String?) validator) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        validator: validator,
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> items, void Function(String?) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        items: items.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
        validator: (value) {
          if (value == null || value.isEmpty) return '$label is required';
          return null;
        },
      ),
    );
  }
}
