import 'package:flutter/material.dart';
import 'package:pro_july/assignments/Tourism/screens/3login.dart';
import 'package:pro_july/assignments/Tourism/screens/4signup.dart';

class Login_SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/loggggpng-hq.png',
              width: 300,height: 300,),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Tour_Signin()));
              },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 5),
                  child: ListTile(
                    title: Text('Login Here'),
                    trailing: Icon(Icons.people_alt_outlined),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Tour_SignUp()));
              },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 70.0,vertical: 5),
                  child: ListTile(
                    title: Text('Register Here'),
                    trailing: Icon(Icons.person_add_alt_1_outlined),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Tour_SignUp()));
              },
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 70.0,vertical: 5),
                  child: ListTile(
                    title: Text('Login with FaceBook'),
                    trailing: Icon(Icons.facebook),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){

              },
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 70.0,vertical: 5),
                  child: ListTile(
                    title: Text('Login with Google'),
                    trailing: Icon(Icons.facebook),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}








