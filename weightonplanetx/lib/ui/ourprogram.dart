import 'package:flutter/material.dart';

class Listform extends StatefulWidget {
  @override
  _ListformState createState() => _ListformState();
}

class data {
  String Name = "";
  double weight = 0.0;

  data({this.Name, this.weight});

  @override
  String toString() {
    // TODO: implement toString
    return "$Name is $weight in Kilograms ";
  }
}

class _ListformState extends State<Listform> {
  final TextEditingController _weightcontroller = TextEditingController();
  data _data = data();
  final _formKey = GlobalKey();
  int radioValue = 0;

  void HandleTheRadioCahnge(int value) {
    setState(() {
      radioValue = value;

      if ((int.parse(_weightcontroller.text).toString().isNotEmpty ==
          0 | int.parse(_weightcontroller.text) > 0)) {
        if (value == 0) {
          _data.Name = "Neptune";
          _data.weight = 17.1 * int.parse(_weightcontroller.text);
        } else if (value == 1) {
          _data.Name = "Mercury";
          _data.weight = 0.0553 * int.parse(_weightcontroller.text);
        } else {
          _data.Name = "Venus";
          _data.weight = 0.815 * int.parse(_weightcontroller.text);
        }
      } else {
        _data.Name = "Error";
        _data.weight = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ListView(
        padding: const EdgeInsets.all(2.3),
        children: <Widget>[
          Image.asset(
            'images/planet.png',
            height: 190,
            width: 130,
          ),
          Container(
            margin: const EdgeInsets.all(4.2),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _weightcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Enter your weight on Earth",
                      hintText: " In Kilograms",
                      icon: Icon(Icons.face)),
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio<int>(
                      value: 0,
                      groupValue: radioValue,
                      onChanged: HandleTheRadioCahnge,
                      activeColor: Colors.lightBlue,
                    ),
                    Text(
                      "Neptune",
                      style: TextStyle(color: Colors.white),
                    ),
                    Radio<int>(
                        value: 1,
                        groupValue: radioValue,
                        onChanged: HandleTheRadioCahnge,
                        activeColor: Colors.lightBlue),
                    Text(
                      "Mercury",
                      style: TextStyle(color: Colors.white),
                    ),
                    Radio<int>(
                        value: 2,
                        groupValue: radioValue,
                        onChanged: HandleTheRadioCahnge,
                        activeColor: Colors.lightBlue),
                    Text(
                      "Venus",
                      style: TextStyle(color: Colors.white),
                    ),

                    // Result
                  ],
                ),
                Text(
                  "your Weight on $_data ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
