import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  // variavel que controla se poderá entrar o tanto de pessoas 
  String _info = "Pode Entrar";
  // variavel condizente a se é pessoas ou pessoa pela quantidade
  String _generoInfo = "Pessoas:";
  // variavel condizente a conta de pessoas
  int _peoples = 0 ;

  // metodo para fazer a alteracao nos buttons
  void _change(delta) {
    setState(() {
      _peoples += delta;

      if(_peoples < 0) {
        _info = "Aliens ??";
        _generoInfo = "Aliens:";
      }else if(_peoples == 0) {
        _info = "Pode Entrar";
        _generoInfo = "Pessoa:";
      }else if( _peoples > 10) {
        _info = "Lotado";
      }else {
        _info = "Pode Entrar";
        _generoInfo = "Pessoas:";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurant.jpg",
        fit: BoxFit.cover,
        height: 1000.0,
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$_generoInfo $_peoples",
              style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold)
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                    "+1",
                    style: TextStyle(color: Colors.white, fontSize: 35.0),
                  ),
                  onPressed: () {
                    _change(1);
                  },
                  ),
                  FlatButton(
                    child: Text(
                    "-1",
                    style: TextStyle(color: Colors.white, fontSize: 35.0,),
                  ),
                  onPressed: () {
                    _change(-1);
                  },
                  )
                ],
              ),
            ),
            Text(
              "$_info",
              style: TextStyle(color: Colors.white, fontSize: 25.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.w100)
            ),
          ],
        )
      ],
    );
  }
}