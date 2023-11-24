import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BelajarFlutter.com"),
      ),
      body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Contoh: Susilo Bambang",
                        labelText: "Nama Lengkap",
                        icon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Nama tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        icon: Icon(Icons.security),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                CheckboxListTile(
                    title: Text("Belajar Dasar Flutter"),
                    subtitle: Text("Dart, widget, http"),
                    activeColor: Colors.deepPurpleAccent,
                    value: nilaiCheckBox,
                    onChanged: (value) {
                      setState(() {
                        nilaiCheckBox = value!;
                        debugPrint("nilai checkbox $nilaiCheckBox");
                      });
                    }),
                SwitchListTile(
                    title: Text("Backend Programming"),
                    subtitle: Text("Dart, NodeJs, PHP, Java, dll"),
                    value: nilaiSwitch,
                    activeTrackColor: Colors.pink[100],
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        nilaiSwitch = value;
                        print("nilai switch $nilaiSwitch");
                      });
                    }),
                Slider(
                    value: nilaiSlider,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        nilaiSlider = value;
                        print("nilai slider $nilaiSlider");
                      });
                    }),
                ElevatedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {

                      }
                    })
              ]),
            ),
          )),
    );
  }
}
