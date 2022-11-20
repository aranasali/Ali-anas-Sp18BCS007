import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  String? name;
  int? coutn;
  CountScreen({Key? key,this.name,this.coutn}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('count here'),
      ),
          body: Center(

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[



          SizedBox(height: 50,),

          Text(
            '${widget.name}',
            style: TextStyle(
                fontSize: 40

            ),
          ),
          Text(
            'Maximum Count ${widget.coutn}',
            style: TextStyle(
                fontSize: 20

            ),
          ),
          SizedBox(height: 20,),

          Text(
            '$_counter',
            style: TextStyle(
                fontSize: 60
            ),
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                if(_counter!=widget.coutn!){
                  _incrementCounter();

                }else{
                 setState(() {
                   _counter=0;
                 });
                }
              }, child: Text('Count')),
              ElevatedButton(onPressed: (){
                setState(() {

                  _counter=0;
                });
              }, child: Text('Reset ')),
            ],
          )
        ],
      ),
    ),

    );
  }
}
