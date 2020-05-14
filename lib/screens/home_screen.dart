import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _anim = 'spin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              if(_anim == 'spin')
                _anim = 'spin2';
              else
                _anim = 'spin';
            });
          },
          child: Container(
            width: 150,
            height: 150,
            child: FlareActor("assets/animations/cls.flr", animation: _anim,),
          ),
        ),
      ),
    );
  }
}

