import 'package:flutter/material.dart';
import 'dart:collection';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          leading: new Icon(Icons.list),
          title: new Text("Data diri"),
          backgroundColor: Colors.teal,
        ),
        body: new ListView(
          children: [
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: controllerNama,
                    decoration: new InputDecoration(
                        hintText: "Nama Lengkap",
                        labelText: "Nama Lengkap",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new TextField(
                    controller: controllerPass,
                    obscureText: true,
                    decoration: new InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new TextField(
                    controller: controllerMotto,
                    maxLines: 3,
                    decoration: new InputDecoration(
                        hintText: "Motto hidup",
                        labelText: "Motto hidup",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new RadioListTile(
                    value: "Laki-Laki",
                    title: new Text("Laki-Laki"),
                    groupValue: _jk,
                    onChanged: (String? value) {
                      _pilihjk(value!);
                    },
                    activeColor: Colors.blue,
                    subtitle: new Text("Pilih ini jika anda laki-laki"),
                  ),
                  new RadioListTile(
                    value: "Perempuan",
                    title: new Text("Perempuan"),
                    groupValue: _jk,
                    onChanged: (String? value) {
                      _pilihjk(value!);
                    },
                    activeColor: Colors.blue,
                    subtitle: new Text("Pilih ini jika anda Perempuan"),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        "Agama",
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(left: 15.0),
                      ),
                      DropdownButton(
                        onChanged: (String? value) {
                          pilihAgama(value!);
                        },
                        value: _agama,
                        items: agama.map((String value) {
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  new ElevatedButton(
                      child: new Text("Ok"),
                      onPressed: () {
                        kirimdata();
                      })
                ],
              ),
            )
          ],
        ));
  }

  List<String> agama = ["Islam", "Kristen", "Katolik", "hindu", "Budha"];
  String _agama = "Islam";
  String _jk = "";
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerMotto = new TextEditingController();

  void _pilihjk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Password: ${controllerPass.text}"),
            new Text("Motto hidup : ${controllerMotto.text}"),
            new Text("Jenis kelamin : ${_jk}"),
            new Text("Agama : ${_agama}"),
            new ElevatedButton(
              child: new Text("Ok"),
              onPressed: () => Navigator.pop(context),
              // color: Colors.teal,
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
