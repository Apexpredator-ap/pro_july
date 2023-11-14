import 'package:flutter/material.dart';

class Fire_Storage extends StatefulWidget {

  @override
  State<Fire_Storage> createState() => _Fire_StorageState();
}

class _Fire_StorageState extends State<Fire_Storage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Storages"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              MaterialButton(onPressed: (){},minWidth: 120,height: 40,
              color: Colors.green,
                  child: Text("Camera"),),
              MaterialButton(onPressed: (){},minWidth: 120,height: 40,
                color: Colors.purple,
                child: Text("Gallery"),)
            ],
            
          ),
          Expanded(
              child: FutureBuilder(
                  ///If firebase connection is success  then executes this function(load data)
                  future: loadData(), builder: (context,AsyncSnapshot<List<Map<String,dynamic>>>)))
        ],
      ),
    );
  }

  loadData() {}
}
