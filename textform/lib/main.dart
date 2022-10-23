import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Flutter",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  @override
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form with Flutter"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Contoh: Nabila Zhafarina",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "Password",
                    icon: Icon(Icons.security),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
              ),
              CheckboxListTile(
                title: Text("Form Dasar FLutter"),
                subtitle: Text("Dart, Widget, http"),
                value: nilaiCheckBox,
                activeColor: Color.fromARGB(255, 255, 228, 106),
                onChanged: (value) {
                  setState(() {
                    nilaiCheckBox = value!;
                  });
                },
              ),
              SwitchListTile(
                title: Text("Backend Programming"),
                subtitle: Text("Dart, Nodejs, PHP, Java, dll"),
                value: nilaiSwitch,
                activeTrackColor: Color.fromARGB(255, 54, 244, 235),
                activeColor: Color.fromARGB(255, 226, 248, 255),
                onChanged: (value) {
                  setState(() {
                    nilaiSwitch = value;
                  });
                },
              ),
              Slider(
                value: nilaiSlider,
                min: 0,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    nilaiSlider = value;
                  });
                },
              ),
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                // color: Colors.blue,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
