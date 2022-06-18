import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
String Score = "";
TextEditingController InputController = TextEditingController();

class _HomePageState extends State<HomePage> {
  void p()
  {

    int ScoreInt = int.parse(InputController.text);
    setState(() {
      if (ScoreInt >= 0 && ScoreInt < 60)
          Score = "F";
      else if (ScoreInt >= 60 && ScoreInt < 67)
        Score = "D";
      else if (ScoreInt >= 67 && ScoreInt < 70)
        Score = "D+";
      else if (ScoreInt >= 70 && ScoreInt < 73)
        Score = "C-";
      else if (ScoreInt >= 73 && ScoreInt < 77)
        Score = "C";
      else if (ScoreInt >= 77 && ScoreInt < 80)
        Score = "C+";
      else if (ScoreInt >= 80 && ScoreInt < 83)
        Score = "B-";
      else if (ScoreInt >= 83 && ScoreInt < 87)
        Score = "B";
      else if (ScoreInt >= 87 && ScoreInt < 90)
        Score = "B+";
      else if (ScoreInt >= 90 && ScoreInt < 95)
        Score = "A-";
      else
        Score = "A";


    });
  }
  @override
  Widget build(BuildContext context) {
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
            keyboardType: TextInputType.number,
            maxLength: 3,

            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
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
            margin: EdgeInsets.all(30),
            child: ElevatedButton(onPressed: () {
              p();
            }, child: Text("Calculate"),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.pink,

              ),
            ),
          ),
          Container(

            child: Text(Score, style: TextStyle(
                fontSize: 26,
                color: Colors.pink
            ),),
          )
        ],
      ),
    );
  }
}

