import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_july/storages/sqflite_ex/sqflite_crud/sql_functions.dart';

class Contack_Book extends StatefulWidget {

  @override
  State<Contack_Book> createState() => _Contack_BookState();
}

class _Contack_BookState extends State<Contack_Book> {
  List<Map<String,dynamic>> contacts =[];
  bool isLoading =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contacts"),
      ),
      body: isLoading
          ? Text(
        "Create New Contact +",style: GoogleFonts.caesarDressing(fontSize: 25),
      )
          : ListView.builder(itemCount: contacts.length,itemBuilder:(context,index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.primaries[index % Colors.primaries.length],
                  child: Icon(Icons.person),
                ),
                title: Text(contacts[index]["cname"]),
                subtitle: Text(contacts[index]["cname"]),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete)),

                  ],
                ),
              ),
            );
      }),
      floatingActionButton: FloatingActionButton(onPressed: ()=>showsheet(null),child: Icon(Icons.person_add_alt_1_outlined),),
    );
  }
 final name_controller = TextEditingController();
  final num_controller = TextEditingController();

  void  showsheet(int? id) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context, builder: (context){
      return Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom +120
        ),
        child: Column(
          children: [
            TextField(
              controller: name_controller,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Name"),
            ),
            TextField(
              controller: num_controller,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Number"),

            ),
            ElevatedButton(onPressed: (){
              if(id == null){
                createContact(name_controller.text,num_controller.text);
              }
              if(id != null){
                //updateContact();
              }
              name_controller.text ="";
              num_controller.text ="";

            },
                child: Text(id == null ? "Create Contact" : "Update Contact"))
          ],
        ),
      );
    });
 }

 Future <void> createContact(String name, String number) async{
    await SQL_Functions.addnewContact(name,number);
 }
 @override
  void initState() {
    readContact_and_refresh_Ui();
    super.initState();
  }


Future<void> readContact_and_refresh_Ui() async{
  final mycontactss = await SQL_Functions.readContacts();
  setState((){
    contacts =mycontactss;
    isLoading = false;
  });
}
}
