import 'package:caraoucoroa/ViewResult.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void flowViewResult(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewResult()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      appBar: AppBar(
        title: Text("CARA ou COROA"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: flowViewResult,
              child:  Image.asset("images/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
