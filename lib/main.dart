import 'package:atv_listview/colaboradores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              const Text("Colaboradores",style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 33, 110, 253), fontWeight: FontWeight.bold,),),
              const SizedBox(height: 100,),
              SizedBox (height: 500, child: Colaboradores()),
            ],
          ),
        )
    )),
  );
}
