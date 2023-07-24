import 'package:flutter/material.dart';
class view extends StatefulWidget {
  const view({Key? key}) : super(key: key);

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('ALL TASK TODO',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: 500,
            color: Colors.red,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(color: Colors.black,fontSize: 15),)),
                ),
                TextButton(onPressed: (){}, child: Text('Delete',style: TextStyle(color: Colors.black,fontSize: 15),)),
              ],
            ),

          )
        ],
      ),
    );
  }
}
