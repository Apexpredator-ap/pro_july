import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    //deafult theme of our flutter app
    home: SplashPage(), //initial page to be launched while running an app
  )); //materialapp
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.favorite, size: 90, color: Colors.red,),
               //Image(image: AssetImage("assets/icons/Angrybird.png")),
                Image(image: NetworkImage("https://cdn3.iconfinder.com/data/icons/materia-halloween-free/24/039_013_skull_halloween_skeleton_horror-512.png"),
               width:100,height:100),
                Text("My Application",
                    style:GoogleFonts.montaga(
                      fontSize:30,
                      color:Colors.blueAccent,
                      fontWeight: FontWeight.bold
                    ),
                  // ,style:TextStyle(fontSize: 20,color:Colors.black87 ,fontWeight: FontWeight.bold),
                    )
              ]
          ),
        ));
  }
}