
import 'package:first_taskdesign/modueles/SignUp_screen/SignUp_screen.dart';
import 'package:first_taskdesign/shared/Components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController =  TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 210,
          color: Colors.blue,
          child: Image.asset(
            'assets/images/clip-356.png',
            height:210 ,
            width: double.infinity,
          ),
        ),
        SizedBox(
          height: 15,
        ),

        Center(
          child: SingleChildScrollView(
            child: Expanded(

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                             Text(
                            'welcome to Fashion Daily',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(children: [
                            Text('Sign in',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                            Spacer(),
                            DefultTextButtom(function: (){}, text: 'Help',color: Colors.blue),
                            Icon(Icons.help,color: Colors.blue,size: 20,)
                          ],),
                          SizedBox(height: 20,),
                          Text(
                            'phone Number',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(color: Colors.white30,),
                            height: 50,
                            alignment: Alignment.center,
                            child: InternationalPhoneNumberInput(
                              onInputChanged: (PhoneNumber value) {},
                              ignoreBlank: false,
                              textFieldController: phoneController,
                              initialValue: number,
                              formatInput: true,
                              inputBorder: InputBorder.none,
                            ),
                          ),
                          SizedBox(height: 10,),
                          DefultBottomtwo(width: double.infinity, background: Colors.blue, onpresse: (){}, text: 'Sign in'),
                          SizedBox(height: 15,),
                          Text('Or',style: TextStyle(color: Colors.grey,fontSize: 20),textAlign: TextAlign.center,),
                          SizedBox(height: 15,),
                         SizedBox(
                           height: 49,
                           child: OutlinedButton(
                             style: ButtonStyle(
                                 side: MaterialStateProperty.all(
                                     BorderSide(color: Colors.blue))),
                             onPressed: (){}, child:Row(

                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.asset('assets/images/google_PNG19635.png',width: 30,height: 30),
                               Text('Sign With by google',style: TextStyle(color: Colors.blue,),)

                             ],),),
                         ),
                          SizedBox(height: 20,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Text('Doesn\'t has any account?',style: TextStyle(color: Colors.grey[600],fontSize: 15,),textAlign: TextAlign.center,),

                             DefultTextButtom(function: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));

                             }, text: 'Register here', color:Colors.blue)
                         ],),
                          Text('Use the application according to policy rules. Any\nkinds of violations will be subject to sanctions',
                            style: TextStyle(color: Colors.grey,fontSize: 15),textAlign: TextAlign.center,),
                          SizedBox(height: 20,)


                        ]),
                  ),
                )),
          ),
        )
      ],
    ));
  }
}
