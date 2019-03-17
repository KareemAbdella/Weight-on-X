import 'package:flutter/material.dart';
import 'package:weightonplanetx/ui/ourprogram.dart';

class our_home extends StatefulWidget {
  @override
  _our_homeState createState() => _our_homeState();
}

class _our_homeState extends State<our_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weight on X",
        ),
        centerTitle: true,
        backgroundColor: Colors.black12,

      ),
      body: Listform(),
      backgroundColor: Colors.teal,
    );
  }
}
