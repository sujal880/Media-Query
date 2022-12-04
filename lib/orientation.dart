import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Media(),
    );
  }
}
class Media extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>Media_Page();
}
class Media_Page extends State<Media>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: OrientationBuilder(
        builder: (context,orientation){
          if(orientation == Orientation.portrait){
            return Portrait();
          }
          else{
            return Landscape();
          }
        },
      ),
    );
  }
}
class Portrait extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue
          ),
        ),
      ),
    );
  }
}
class Landscape extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue
          ),
        ),
      ),
    );
  }
}