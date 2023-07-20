import 'package:flutter/material.dart';

class CapturaValoresDelInputPage extends StatefulWidget{
  @override
  State<CapturaValoresDelInputPage> createState() => _CapturaValoresInputPageState();
}

class _CapturaValoresInputPageState extends State<CapturaValoresDelInputPage> {
  String name = '';
  TextEditingController _nameController = TextEditingController(text: "Por defecto");
  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Capturando Inputs"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              label: Text("ingrese su nombre")
            ),
            onChanged: (String value){
              name = value;
              print(name);
            },
            onTap: (){
              print("ON TAAP");
            },
          ),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              label: Text("Ingrese tu nombre")
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print(_nameController.text);
            },
            child: const Text("Mostar valor"),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text("Teclados")
            ),
          )
        ],
      )
    );

    getNameData(){
      print(_nameController.text);
    }
  }
}