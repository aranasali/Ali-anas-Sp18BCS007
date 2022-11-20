import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasbeeh_app/fucntions.dart';

import 'customCount.dart';

class CreateTasbeh extends StatefulWidget {
  const CreateTasbeh({Key? key}) : super(key: key);

  @override
  State<CreateTasbeh> createState() => _CreateTasbehState();
}

class _CreateTasbehState extends State<CreateTasbeh> {
  TextEditingController name=TextEditingController();
  TextEditingController count=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Tasbeeh'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Enter Tasbeeh Name',style: TextStyle(
              fontSize: 20
            ),),
SizedBox(height: 20,),
            Container(

                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  controller: name,
                )),
            SizedBox(height: 30,),
            Text('Maximum count',style: TextStyle(
                fontSize: 20
            ),),
            SizedBox(height: 20,),
            Container(

                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  controller: count,
                )),
            SizedBox(height: 20,),
Center(child: ElevatedButton(onPressed: (){
  Music m=Music(
    name: name.text,
    count: int.parse(count.text),
  );
  addToList(m);
  Navigator.push(context, MaterialPageRoute(builder: (context)=>CountScreen(
    name: name.text,
    coutn: int.parse(count.text),
  )));




}, child: Text('Create Tashbeeh')))



          ],
        ),
      ),
    );
  }
}
