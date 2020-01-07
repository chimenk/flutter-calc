import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  var input1 = 0, input2 = 0, result = 0;

  final TextEditingController txt1 = new TextEditingController(text: "0");
  final TextEditingController txt2 = new TextEditingController(text: "0");

  void opsTambah() {
    setState(() {
      input1 = int.parse(txt1.text);
      input2 = int.parse(txt2.text);
      result = input1 + input2;
    });
  }

  void opsKurang() {
    setState(() {
      input1 = int.parse(txt1.text);
      input2 = int.parse(txt2.text);
      result = input1 - input2;
    });
  }

  void opsKali() {
    setState(() {
      input1 = int.parse(txt1.text);
      input2 = int.parse(txt2.text);
      result = input1 * input2;
    });
  }

  void opsBagi() {
    setState(() {
      input1 = int.parse(txt1.text);
      input2 = int.parse(txt2.text);
      result = input1 ~/ input2;
    });
  }

  void opsBersih() {
    setState(() {
      txt1.text = "0";
      txt2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calc App"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hasil : $result",
              style: new TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number"
              ),
              controller: txt1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 2"
              ),
              controller: txt2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top:20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Add"),
                  color: Colors.greenAccent,
                  onPressed: opsTambah,
                ),
                new MaterialButton(
                  child: new Text("Substract"),
                  color: Colors.greenAccent,
                  onPressed: opsKurang,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Multiply"),
                  color: Colors.greenAccent,
                  onPressed: opsKali,
                ),
                new MaterialButton(
                  child: new Text("Divide"),
                  color: Colors.greenAccent,
                  onPressed: opsBagi,
                )
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: opsBersih,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}