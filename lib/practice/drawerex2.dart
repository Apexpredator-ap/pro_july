import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: Drawer(
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.bottomRight,
                  end: Alignment.topRight,
                  colors: [
                    Colors.pink,
                    Colors.white,
                    Colors.blue
                  ])
                ),
                child: UserAccountsDrawerHeader(
                  accountName: const Text("Sundar pichai",style: TextStyle(color: Colors.black),),
                  accountEmail: const Text("CEO of Alphabet inc",style: TextStyle(color: Colors.black)),
                  currentAccountPicture: GestureDetector(
                    onTap: () {
                     Navigator.of;
                    },
                    child:  CircleAvatar(
                      backgroundImage: AssetImage("Beckham.jpg"),

                    ),
                  ),


                ),
              ),
               ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("DashBoard"),
              ),
              ListTile(
                leading: Icon(Icons.leak_add_sharp),
                title: Text("Leads"),
              ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Clients"),
              ),

             ListTile(
                leading: Icon(Icons.rocket_launch),
                title: Text("Projects"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}