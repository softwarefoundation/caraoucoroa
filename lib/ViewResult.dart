import 'dart:math';

import 'package:flutter/material.dart';

class ViewResult extends StatefulWidget {
  @override
  _ViewResultState createState() => _ViewResultState();
}

class _ViewResultState extends State<ViewResult> {
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
            jogarMoeda(),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child:  Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }

  Image jogarMoeda(){
    if((new Random().nextInt(10) % 2) == 0){
      return Image.asset("images/moeda_cara.png", width: 200, height: 200,);
    }else{
      return Image.asset("images/moeda_coroa.png", width: 200, height: 200,);
    }
  }

}
