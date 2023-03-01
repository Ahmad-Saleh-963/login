import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login/Auth/register.dart';
import 'package:login/wighet/custom_botton.dart';
import 'package:login/wighet/custom_text.dart';
import 'package:lottie/lottie.dart';

import '../wighet/custom_faild.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return SafeArea(
      child: Scaffold(
       // backgroundColor: const Color.fromRGBO(10, 10, 10, 1),
        body: Stack(
          //alignment: Alignment.topLeft,
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.fill,
              )),
            ),

            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                     Lottie.asset("assets/images/login.json",height: height / 3, width: width,),

                    CustomText(txt: 'Email'),
                    CustomFaild(
                      hidPass: false,
                      prefixIcon: const Icon(Icons.mail, color: Colors.white),
                      textInputType: TextInputType.emailAddress,
                      suffixIcon: const Icon(Icons.visibility_off, color: Colors.white),
                    ),
                    const SizedBox(height: 25),

                    CustomText(txt: 'Password'),
                    CustomFaild(
                      hidPass: true,
                      prefixIcon: const Icon(Icons.lock, color: Colors.white),
                      textInputType: TextInputType.visiblePassword,
                      suffixIcon: const Icon(Icons.visibility_off, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      margin:const EdgeInsetsDirectional.only(start: 40),
                      child: RichText(
                        text:  TextSpan(
                          text:"Are have\'t account ? ",
                          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontFamily: 'Shantell',),
                          children: <TextSpan>[
                            TextSpan(text: 'Register', style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w400, fontFamily: 'Shantell',),
                                recognizer: TapGestureRecognizer()..onTap = () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register()));}

                            ),

                            // TextSpan(text: ' world!'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomBotton(txt: "LogIn"),
                        //Text("Create Account"),
                      ],
                    ),



                  ],
                ),
              ),
            ),






          ],
        ),
      ),
    );
  }
}
