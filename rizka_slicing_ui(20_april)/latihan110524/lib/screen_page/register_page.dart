import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latihan110524/screen_page/welcome_page.dart';

import 'login_page.dart';



class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {

    bool varBool = true;

    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  alignment: Alignment.topLeft,
                  child: Center(
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => WelcomePage()));
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Image.asset('assets/gambar/logo_udaskin.png'),
                      SizedBox(height: 40,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            hintText: 'Full Name'
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            hintText: 'Email'
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            hintText: 'Password'
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            hintText: ' Confirm Password'
                        ),
                      ),
                      SizedBox(height: 40,),
                      MaterialButton(onPressed: (){},
                        padding: EdgeInsets.symmetric(horizontal: 220, vertical: 15),
                        color: Color(0xff333333),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Text('Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('------------------------------------ or ----------------------------------',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 20,),
                      MaterialButton(onPressed: (){},
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/gambar/logo_google.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 20,),
                            Text('Sign in with Google',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 60,),
                      RichText(
                        text: TextSpan(
                            text: "Don't have an account?  ",
                            style: TextStyle(
                                color: Colors.grey
                            ),
                            children: [
                              TextSpan(
                                  text: 'Login',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      //untuk pindah ke page register
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (_) => PageLogin()));

                                    },
                                  style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold
                                  )
                              )
                            ]
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}