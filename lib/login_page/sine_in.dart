import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/Home/home_page.dart';
import 'package:food_app/login_page/registration_page.dart';
import 'package:food_app/screen/textfield.dart';

class SineIn extends StatefulWidget {
  const SineIn({Key? key}) : super(key: key);

  @override
  State<SineIn> createState() => _SineInState();
}

final _formkey = GlobalKey<FormState>();

final TextEditingController emailConrdoller = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _SineInState extends State<SineIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assetes/background.png'),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'Sign in to Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Vagi',
                    style:
                        TextStyle(fontSize: 60, color: Colors.white, shadows: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.green,
                        offset: Offset(3, 3),
                      )
                    ]),
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: CustomFormTextField(
                            hintText: 'Email',
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (value) {
                              emailConrdoller.text = value!;
                            },
                            prefixicon: Icon(Icons.email_outlined),
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return ('Email must not be empty');
                              } else if (!value.contains("@gmail.com")) {
                                return ('Invalided email');
                              }
                              return null;
                            },
                            controller: emailConrdoller,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: .5, horizontal: 20),
                          child: CustomFormTextField(
                            hintText: 'Password',
                            onSaved: (value) {
                              emailConrdoller.text = value!;
                            },
                            prefixicon: Icon(Icons.lock_outline_sharp),
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return ('Enter your password');
                              } else if (value.length < 6) {
                                return ('Enter minimum 6 carector');
                              }
                              return null;
                            },
                            controller: passwordController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: Text(
                'Sign In',
              ),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print('login');
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },

                style: ElevatedButton.styleFrom(
                  primary: Color(0xffe81481),
                  onPrimary: Color(0xff06F33B),
                  textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)
                ),

            ),
            SizedBox(
              height: 30,
            ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have an account?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800,color: Color(
                            0xfffa6666)),
                      ))
                ],
              ),
          ],
        ),
      ),
    );
  }
}
