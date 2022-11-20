import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customCount.dart';
import 'fucntions.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    getData();

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved'),
      ),
      body: ListView.builder(
          itemCount: listCOunt.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>CountScreen(
  name:listCOunt[index].name! ,
  coutn: listCOunt[index].count!,
)));
              },


                leading: Text('${index+1}.',style: TextStyle(fontSize: 20)),
              title: Text(listCOunt[index].name!,style: TextStyle(fontSize: 20),),
            trailing  : Text(listCOunt[index].count!.toString(),style: TextStyle(fontSize: 20)),
            );


      }),
    );
  }
}
