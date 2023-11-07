import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/users.dart';



void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<Users>('Users');
  // await Hive.registerAdapter(adapter);
  runApp(MaterialApp(home: Hive_Reg(),));}

class Hive_Reg extends StatelessWidget {
  final email_controller =TextEditingController();
  final pwd_controller =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Registration Page"),
              SizedBox(height: 15,),

              TextField(
                controller: email_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email"
                ) ,
              ),
              TextField(
                controller: pwd_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password"
                ) ,
              ),
              MaterialButton(onPressed: () {},
                shape: StadiumBorder(),
                color: Colors.pink,
                child: Text("Register Here"),),
              TextButton(onPressed: (){
                Get.to(Hive_Reg());
              }, child: Text("Not a user Register Here !!!"))
            ],
          ),
        ),
      ),
    );
  }
}


