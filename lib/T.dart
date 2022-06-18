import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController InputController = TextEditingController();
    String Score = "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Grade Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: InputController ,

            onChanged: (Scor){

              Score = Scor;

            },
            decoration: InputDecoration(

              hintText: "Type your score",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),

              ),
              prefixIcon: Icon(Icons.percent),

            ),
          ),
          Container(
            width: 200,
            height: 60,
            child: ElevatedButton(onPressed: () {
              Score = InputController.text;
              print(InputController.text);
            }, child: Text("Sumbit"),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.pink,

              ),
            ),
          ),
          Container(

            child: Text(InputController.text, style: TextStyle(
                fontSize: 26,
                color: Colors.pink
            ),),
          )
        ],
      ),
    );
  }
}

