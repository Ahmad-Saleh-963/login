import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login/wighet/custom_botton.dart';
import 'package:login/wighet/custom_text.dart';
import 'package:lottie/lottie.dart';

import '../wighet/custom_faild.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(10, 10, 10, 1),
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  head(),
                 const SizedBox(height: 45),
                  //   Lottie.asset("images/login.json",height: height / 3, width: width,),

                  CustomText(txt: 'Name'),
                  CustomFaild(
                    hidPass: false,
                    prefixIcon: const Icon(Icons.person, color: Colors.white),
                    textInputType: TextInputType.name,
                    suffixIcon:
                    const Icon(Icons.visibility_off, color: Colors.white),
                  ),

                  const SizedBox(height: 25),
                  CustomText(txt: 'Email'),
                  CustomFaild(
                    hidPass: false,
                    prefixIcon: const Icon(Icons.mail, color: Colors.white),
                    textInputType: TextInputType.emailAddress,
                    suffixIcon:
                    const Icon(Icons.visibility_off, color: Colors.white),
                  ),
                  const SizedBox(height: 25),

                  CustomText(txt: 'Password'),
                  CustomFaild(
                    hidPass: true,
                    prefixIcon: const Icon(Icons.lock, color: Colors.white),
                    textInputType: TextInputType.visiblePassword,
                    suffixIcon:
                    const Icon(Icons.visibility_off, color: Colors.white),
                  ),
                  const SizedBox(height: 25),

                  CustomText(txt: 'Re-Password'),
                  CustomFaild(
                    hidPass: true,
                    prefixIcon: const Icon(Icons.lock, color: Colors.white),
                    textInputType: TextInputType.visiblePassword,
                    suffixIcon:
                    const Icon(Icons.visibility_off, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    margin:const EdgeInsetsDirectional.only(start: 40),
                    child: RichText(
                      text:  TextSpan(
                        text:"Are you have account ? ",
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontFamily: 'Shantell',),
                        children: <TextSpan>[
                          TextSpan(text: 'Login', style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w400, fontFamily: 'Shantell',),
                              recognizer: TapGestureRecognizer()..onTap = () {Navigator.pop(context);}

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
                      CustomBotton(txt: "Create"),
                      //Text("Create Account"),
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget head() => Padding(
    padding: const EdgeInsets.only(
      bottom: 10.0,
      left: 20.0,
      right: 20.0,
    ),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 60,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(70),
              bottomLeft: Radius.circular(70),
            ),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(0, 150, 50, 40),
                  Color.fromRGBO(44, 235, 60, 92),
                ]),
          ),
        ),
        const Positioned(
          top: 14,
          child: Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: 'Shantell',
              fontSize: 25,
            ),
          ),
        ),
      ],
    ),
  );

}
