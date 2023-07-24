import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var actoncntrl=TextEditingController();
  var timectrl=TextEditingController();
 Future <void> sentdata() async{
    var data= {
      'action':actoncntrl.text,
      'time':timectrl.text,
    };
    var response=await post(Uri.parse("http://192.168.1.37/todo/insert.php"),body: data);
    print(response.body);
    print(response.statusCode);
    return jsonDecode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('ToDo',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(hintText: ' Write your task here',
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 20),
            ),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(vertical: 50),hintText: ' Description',),
            ),
          ),
          SizedBox(height: 50,),
          Column(
            children: [
              ElevatedButton(onPressed: (){
                print(actoncntrl.text);
                print(timectrl.text);
                sentdata();
              }, child: Text('ADD')),
            ],
          )

        ],
      ),
    );
  }
}
