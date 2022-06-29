import 'package:flutter/material.dart';

import '../onbording_screen/onbording_screen.dart';





class SplachScreen extends StatefulWidget {


  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState()
  {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()),
              (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: double.infinity,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            // SizedBox(height:150,),
             Image.asset('assets/images/sammy-man-6.png',width: 200,height: 200),
            SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Text('He',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.yellow[900]),),
               Text('llow',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.teal),)
             ],)

          ]),
        ),
      ),
    );
  }
}
