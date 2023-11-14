import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(home: Home_PHO(),));

class Home_PHO extends StatefulWidget {

  @override
  State<Home_PHO> createState() => _Home_PHOState();
}

class _Home_PHOState extends State<Home_PHO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Home Page'),backgroundColor: Colors.redAccent,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MELCOW!!!!',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('LOGOUT',),
            ),
          ],
        ),
      ),
    );
  }
}
