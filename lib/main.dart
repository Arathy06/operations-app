import 'package:flutter/material.dart';

void main()
{
  runApp(ArithApp());
}
class ArithApp extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Arithematic Operations"),
        ),
       body: Container(
         padding: EdgeInsets.all(10.0),
         child: Column(
           children: <Widget>[
             SizedBox(height: 30.0,),
             TextField(
               controller: num1,
               decoration: InputDecoration(
                 hintText: "Enter first number",
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.confirmation_number),

               ),
             ),
             SizedBox(height: 30.0,),
             TextField(
               controller: num2,
               decoration: InputDecoration(
                 hintText: "Enter second number",
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.confirmation_number),
               ),
             ),
             SizedBox(height: 30.0,),
             RaisedButton(onPressed: (){
               var n1= num1.text;
               var n2=num2.text;
               var addresult=n1+n2;
               print(addresult);
             }),
             SizedBox(height: 30.0,),
             RaisedButton(onPressed: (){
               var n1=num1.text;
               var n2=num2.text;
               var subresult=n1-n2;
               print(subresult);
             }),
             SizedBox(height: 30.0,),
             RaisedButton(onPressed: (){
               var n1=num1.text;
               var n2=num2.text;
               var mulresult=n1*n2;
               print(mulresult);
             }),
             SizedBox(height: 30.0,),
             RaisedButton(onPressed: (){
               var n1=num1.text;
               var n2=num2.text;
               var divresult=n1/n2;
               print(divresult);
             })
           ],
         ),
       ),
      ),
    );
  }
}
