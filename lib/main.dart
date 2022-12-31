import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _textEditingController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textEditingController,
            keyboardType: TextInputType.number,
            obscureText: false, // FOR PASSWORD SET TRUE
            maxLines: 2,

              decoration: InputDecoration(
              hintText: "Enter Your Name",
              labelText: "Full Name",
              prefixIcon: Icon(Icons.ac_unit),
              suffixIcon: Icon(Icons.account_balance),
            ),
            onChanged: (val){
              setState(() {

              });
            },
          ),
          IconButton(
              onPressed: () {
                print(_textEditingController);
                print("IconButton Click");
              },
              icon: Icon(Icons.add_a_photo)),
          TextButton(
            onPressed: () {
              print("TextButton Click");
            },
            child: Text("Click"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)),
          ),
          Image.network("https://cdn.pixabay.com/photo/2018/08/18/13/26/interface-3614766__340.png",
            height: 150,
            width: 200,),

          OutlinedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)),
            onPressed: () {
              print("TextButton Click");
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}
