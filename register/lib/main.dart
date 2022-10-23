import 'dart:collection';
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new FormRegister(),
  ));
}

class FormRegister extends StatefulWidget {
  @override
  _FormRegisterState createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Form Register"),
        backgroundColor: Color.fromARGB(155, 185, 139, 139),
      ),
      body: new ListView(children: [
        new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Color.fromARGB(176, 218, 159, 159),
                  Color.fromARGB(134, 175, 120, 120),
                  Color.fromARGB(179, 255, 235, 235)
                ]),
          ),
          padding: new EdgeInsets.all(10.0),
          child: new Column(children: <Widget>[
            Text(
              'Register',
              style: TextStyle(
                  color: Color.fromARGB(201, 194, 90, 90),
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerEmail,
              decoration: new InputDecoration(
                  hintText: "E-mail",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerNama,
              decoration: new InputDecoration(
                  hintText: "Nama Lengkap",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerLahir,
              decoration: new InputDecoration(
                  hintText: "Tanggal Lahir",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerPass,
              obscureText: true,
              decoration: new InputDecoration(
                  hintText: "Password",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerAlamat,
              maxLines: 3,
              decoration: new InputDecoration(
                  hintText: "Alamat",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 199, 197, 197),
                primary: Color.fromARGB(255, 173, 113, 113), // foreground
              ),
              onPressed: () {},
              child: Text('Sign in'),
            )
          ]),
        ),
      ]),
    );
  }

  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerLahir = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerAlamat = new TextEditingController();
}
