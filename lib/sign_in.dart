import 'package:code_test/sing_up.dart';
import 'package:code_test/splash.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff042c38),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Stack(
                  children: [
                    Image.asset('assets/Mask Group -2.png', fit: BoxFit.fill),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 1,
                    width: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Welcome",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("to Room Control",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          color: Colors.white,
                          child: new TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffa7a7a7),
                                ),
                              ),
                              filled: true,
                              icon: const Icon(
                                Icons.person,
                                color: Color(0xff373737),
                              ),
                              hintText: 'User name',
                              labelStyle: TextStyle(
                                color: Color(0xffa7a7a7),
                              ),
                            ),
                            validator: (val) {
                              if (val.length == 0)
                                return "Please enter username";
                              else
                                return null;
                            },
                            onSaved: (String value) {
                              _email = value;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.white,
                          child: new TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffa7a7a7),
                                ),
                              ),
                              filled: true,
                              icon: const Icon(
                                Icons.lock,
                                color: Color(0xff373737),
                              ),
                              hintText: 'Password',
                              labelStyle: TextStyle(
                                color: Color(0xffa7a7a7),
                              ),
                            ),
                            obscureText: true,
                            validator: (val) {
                              if (val.length == 0)
                                return "Please enter password";
                              else if (val.length <= 5)
                                return "Your password should be more then 6 char long";
                              else
                                return null;
                            },
                            onSaved: (String value) {
                              _password = value;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Color(0xff00a79b))),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Splash()),
                                );
                              }
                            },
                            color: Color(0xff00a79b),
                            textColor: Colors.white,
                            child: Text("Sign IN".toUpperCase(),
                                style: TextStyle(fontSize: 16)),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              child: Text("Don't have an account ?",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffa7a7a7),
                                      fontWeight: FontWeight.normal)),
                            ),
                            InkWell(
                              onTap: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignUP()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Text("SIGN UP",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff00a79b),
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
