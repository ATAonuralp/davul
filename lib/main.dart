import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(durum());
}

class durum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Center(
            child: Text(
              'DAVUL',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
        body: drumpage(),
      ),
    );
  }
}

class drumpage extends StatelessWidget {
  AudioCache player = AudioCache(prefix: 'web/music/');

  void sescal(String ses) {
    player.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('bongo');
                    },
                    child: Container(
                      color: Colors.purple[800],
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('bip');
                    },
                    child: Container(
                      color: Colors.purple[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('oobah');
                    },
                    child: Container(
                      color: Colors.purple[600],
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('how');
                    },
                    child: Container(
                      color: Colors.purple[500],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('crash');
                    },
                    child: Container(
                      color: Colors.purple[400],
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('clap3');
                    },
                    child: Container(
                      color: Colors.purple[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('clap2');
                    },
                    child: Container(
                      color: Colors.purple[200],
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.8),
                    onPressed: () {
                      sescal('clap1');
                    },
                    child: Container(
                      color: Colors.purple[100],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
