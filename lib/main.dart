import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class SentenceRoller extends StatefulWidget {
  @override
  _SentenceRollerState createState() => _SentenceRollerState();
}

class _SentenceRollerState extends State<SentenceRoller> {

  var sentences = ['ciao', 'hi', 'hello'];

  int prog=0; //inizializzo la variabile indice dell'array fuori dal costruttore! altrimenti...

  @override
  Widget build(BuildContext context) {
    //int prog=0; //... qui verrebbe richiamata da setstate() e reinizializzata a 0
    
    int rollSentences(){ 
    
    //var sentences = ['ciao', 'hi', 'hello'];
    
    prog++;

    return prog; 
    }
    
    int currentindex=prog;
    return Container(
      width: 150, 
      height: 150,
      color: Colors.redAccent,

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FlatButton(
          child: Container(
            alignment: Alignment.center,
            child: Text(sentences[currentindex], style:TextStyle(color:Colors.black))
            ),
          onPressed: (){
            
            setState(() {
              print(currentindex);
              currentindex = rollSentences();
              //rollSentences();
          });}
        ),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SentenceRoller()
      );
  }
}
