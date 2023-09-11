import 'package:flutter/material.dart';
import 'package:shopping_app/modules/welcome_screen.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFF06AB8D),
                  image: DecorationImage(
                    image: AssetImage("assets/register.png"),
                    fit: BoxFit.fitWidth
                  )
                ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 39, horizontal: 30),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Register', style:
                            TextStyle(fontSize: 28, fontWeight: FontWeight.bold , color: Colors.white),),
                            SizedBox(height: 20,),
                            Text('Enter your personel details to create your account', style:
                              TextStyle(fontSize: 12, color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                ),

                  Container(
                    margin: EdgeInsets.only(top: 147 ),
                    height: 669,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Container(
                            width: 314,
                            height: 57,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Full Name'
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 314,
                          height: 57,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Email Address'
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Container(
                            width: 314,
                            height: 57,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Phone Number'
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 314,
                          height: 57,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Password'
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 314,
                          height: 57,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Confirm Password'
                            ),
                          ),
                        ),
                        SizedBox(height: 59,),
                        Container(
                          height: 50,
                          width: 325,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFFB039),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)
                                )
                            ),
                            onPressed: () {  }, child: Text('Sign Up', style: TextStyle(fontSize: 14),),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          height: 20,
                          width: 219,
                          decoration: BoxDecoration(),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Have an account?', style: TextStyle(fontSize: 13, color: Colors.black), ),
                              SizedBox(
                                width: 10,
                              ),

                              InkWell(
                                  onTap: (){
                                    Navigator.pop(context, MaterialPageRoute(builder: (context) => WelcomeView()));
                                  },

                                  child: Text('Sign In', style: TextStyle(fontSize: 13, color: Color(0xFFFF8933)),))
                            ],
                          ),
                        )
                      ],
                    )
                  )
  ])


                  ],
                ),

            ],
          )

      );
  }
}
