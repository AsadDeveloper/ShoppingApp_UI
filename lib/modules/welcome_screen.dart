import 'package:flutter/material.dart';
import 'package:shopping_app/modules/register_screen.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 285.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF06AB8D),
                          image: DecorationImage(
                              image: AssetImage("assets/Welcome.png"),
                              fit: BoxFit.fitWidth),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 31),
                              child: Column(
                                children: [
                                  Text(
                                    'Welcome',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Sign In to continue',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 240,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 600.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                child: TextFormField(
                                  maxLength: 20,
                                  decoration: InputDecoration(
                                      labelText: 'Your Email Address',
                                      labelStyle: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF8B9E9E)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueGrey))),
                                  onChanged: (value) {},
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30, right: 30),
                                child: TextFormField(
                                  maxLength: 20,
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF8B9E9E)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueGrey))),
                                  onChanged: (value) {},
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 30),
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: 0,
                                          groupValue: 1,
                                          onChanged: (value) {}),
                                      Text(
                                        'Remember Me',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF899B9A)),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFFFF8933)),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 50,
                                width: 325,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFFFB039),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  onPressed: () {},
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 20,
                                width: 219,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Don’t have an account?',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegisterView()));
                                        },
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFFFF8933)),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
