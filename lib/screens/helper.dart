import 'package:flutter/material.dart';
import 'package:sliver_appbar/screens/grocery/grocery.dart';
import 'package:sliver_appbar/screens/bank/sliver_appbar.dart';

class HelperScreen extends StatelessWidget {
  const HelperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SliverScreen();
          }));
        }, child: Text("First Screen")),
        SizedBox(height: 50,),
        TextButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return GroceryScreen();
          }));

        }, child: Text("Second Screen")),
      ],),
    );
  }
}
