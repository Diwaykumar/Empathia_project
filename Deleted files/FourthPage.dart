import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/custom_button.dart';


class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

        backgroundColor: Colors.blue[50],
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.arrow_back_sharp, color: Colors.blue[400],),

                    ),
                  ),
                ],


              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Text(
                      'Build Community and \nStay Connected',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Rubik Medium',
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text('Now you can speak to your preferred doctor\n within 1 minute through chat/voice call/ video\n call',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff868686),
                    ),),


                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset('assets/doc4.png',
                  height: 300,
                  width: 300,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 :20),
                child: CustomButton(text: 'Get Started',
                    onTap: (){
                      Navigator.pushNamed(context, '/login');

                    }),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,

                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik Regular',
                            color: Color(0xff677294),
                            decoration: TextDecoration.underline

                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],

          ),
        ));

  }
}
