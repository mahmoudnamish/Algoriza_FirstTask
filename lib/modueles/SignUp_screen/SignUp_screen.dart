import 'package:first_taskdesign/modueles/login_screen/login_screen.dart';
import 'package:first_taskdesign/shared/Components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var EmailControl = TextEditingController();
  var PasswordControl = TextEditingController();
  var phoneController =  TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  bool textScure = true;
  var Keyform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: Keyform,
          child: Column(
      children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 100,
            child: Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image.asset(
                  'assets/images/clip-356.png',
                  height: 100,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.black,
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
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
                          Row(
                            children: [
                              Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              DefultTextButtom(
                                  function: () {},
                                  text: 'Help',
                                  color: Colors.blue),
                              Icon(
                                Icons.help,
                                color: Colors.blue,
                                size: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DefultTextFormField(
                            text: 'Eg. example@email.com',
                            type: TextInputType.emailAddress,
                            valaditor: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter the emailAddress ';
                              }
                              return null;
                            },
                            controle: EmailControl,
                          ),
                          SizedBox(height: 10,),
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

                          Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DefultTextFormField(
                            text: 'Passwored',
                            type: TextInputType.visiblePassword,
                            valaditor: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter the Password ';
                              }
                              return null;
                            },
                              textScure: textScure,
                            controle: PasswordControl,
                            sufex:textScure
                                ? Icons.visibility_off
                                : Icons.visibility ,
                            suficepress: ()
                            {
                              setState(() {
                                textScure =! textScure;
                              });
                            }

                          ),
                          SizedBox(
                            height: 15,
                          ),
                          DefultBottomtwo(
                              width: double.infinity,
                              background: Colors.blue,
                              onpresse: () {
                                if(Keyform.currentState!.validate()){

                                }
                              },
                              text: 'Register'),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Or',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 49,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Colors.blue))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/google_PNG19635.png',
                                      width: 30, height: 30),
                                  Text(
                                    'Sign With by google',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Has any account?',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              DefultTextButtom(
                                  function: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                                  },
                                  text: 'Sign in here',
                                  color: Colors.blue)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'By regestering your account, you are agree to our',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                          DefultTextButtom(function: (){}, text: 'terms and condition', color: Colors.blue),


                        ]),
                  ),
                ),
              ),
            ),
          )
      ],
    ),
        ));
  }
}
