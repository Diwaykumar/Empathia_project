import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/custom_button.dart';

class signup extends StatelessWidget {
  const signup({super.key});

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
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


              ],
            ),

            const Padding(
              padding: EdgeInsets.only(top: 70),
              child: Center(
                  child: Text(
                    'Welcome\n To',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff198EB6)),
                  )),
            ),


            const Image(
              height: 50,
              width: 200,
              image: AssetImage('assets/logoo.png'),
            ),

            const SizedBox(
              height: 30, width: 15,
            ),
            // Center(
            //     child:





            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.only(top: 120, left: 40, bottom: 12),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Rubik Medium',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff060607)),
                  ),
                )
              ],
            ),


        Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 :20),
              child: CustomButton(text: 'Psycologist',
                  onTap: (){
                    Navigator.pushNamed(context, '/psycologist');

                  }),
            ),

        const SizedBox(height: 15,),
        Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 :20),
              child: CustomButton(text: 'Patient',
                  onTap: (){
                    Navigator.pushNamed(context, '/Patient');

                  }),
            ),



            // ElevatedButton(
            //   onPressed: () {Navigator.pushNamed(context, '/Registration');
            //     // Button action
            //   },
            //   style: ElevatedButton.styleFrom(
            //     primary: Color(0xff2596be),
            //     padding: EdgeInsets.all(16),
            //     fixedSize: Size(340, 55),
            //     shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8), // Adjust border radius
            //     ),
            //   ),
            //   child: Text('Psychiatrist',style: TextStyle(
            //   fontSize: 20,
            //   fontFamily: 'Rubik Regular',
            //   color: Colors.white),
            //
            // ),
            // ),
            const SizedBox(
              height: 18,

            ),
            // ElevatedButton(
            //   onPressed: () {Navigator.pushNamed(context, '/Registration');
            //     // Button action
            //   },
            //   style: ElevatedButton.styleFrom(
            //     primary: Color(0xff2596be),
            //     padding: EdgeInsets.all(16),
            //     fixedSize: Size(340, 55),
            //     shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8), // Adjust border radius
            //     ),
            //   ),
            //
            //
            //   child: Text('Patient',style: TextStyle(
            //   fontSize: 20,
            //   fontFamily: 'Rubik Regular',
            //   color: Colors.white),
            //
            // ),
            // ),


          ],
        ),
      ),
    );
  }
}

