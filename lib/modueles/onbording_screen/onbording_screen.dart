import 'package:first_taskdesign/shared/Components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../SignUp_screen/SignUp_screen.dart';
import '../login_screen/login_screen.dart';

class BoardingModele {
  final String image;
  final String title;
  final String body;
  BoardingModele(
      {required this.image, required this.title, required this.body});
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool islast = false;
  var pageviewc = PageController();

  List<BoardingModele> modele = [
    BoardingModele(
        image: 'assets/images/sammy-bicycle-courier-delivering-food.png',
        title: 'Get Food delivery to your\n doorstep asap',
        body:
            'We have young and professional delivery\nteam that will bring your food as soon as\npossible to your doorstep'),
    BoardingModele(
        image: 'assets/images/sammy-done.png',
        title: 'Buy Any Food form your\n favorite restaurant',
        body:
            'We are constanty adding your favourite\nrestaurant throughout the territoryand around\nyour area area carefully selected'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            MaterialButton(
              onPressed: () {
                Submit();
              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow[100],
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png',
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  fit: BoxFit.contain),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    setState(() {
                      if (index == modele.length - 1) {
                        islast = true;
                      } else {
                        islast = false;
                      }
                    });
                  },
                  controller: pageviewc,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Bordinditem(modele[index]),
                  itemCount: modele.length,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SmoothPageIndicator(
                  effect: SwapEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.orangeAccent.withOpacity(.9),
                    radius: 6,
                    dotHeight: 6,
                    dotWidth: 18,
                  ),
                  controller: pageviewc,
                  count: modele.length),
              SizedBox(
                height: 18,
              ),
              DefultBottom(
                  width: double.infinity,
                  background: Colors.teal,
                  onpresse: () {
                    if (islast) {
                      Submit();
                    } else {
                      pageviewc.nextPage(
                        duration: Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  text: 'Get Started'),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DefultTextButtom(
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      text: 'Sign Up',
                      color: Colors.teal)
                ],
              ),
            ],
          ),
        ));
  }

  void Submit() => Navigator.pushAndRemoveUntil((context),
      MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
}

Widget Bordinditem(BoardingModele modele) =>
    Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Expanded(
          flex: 10,
          child: Image(
            image: AssetImage('${modele.image}'),
            width: 300,
            height: 300,
          )),
      Expanded(
        flex: 2,
        child: Text(
          '${modele.title}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Text(
          '${modele.body}',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
        ),
      ),
    ]);
