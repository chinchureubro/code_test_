import 'package:code_test/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  String username;
  int color =0xffe3e3e3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff042c38),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset('assets/Mask Group -1.png',
                        fit: BoxFit.fill),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon:
                                Icon(Icons.arrow_back_ios, color: Colors.white),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          Text("Back",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),


                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Create new account",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 20,),
          Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Container(
                  color: Colors.white,
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: ListView(
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
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
                                    username = value;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 30,
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
                                height: 30,
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
                                      Icons.email_outlined,
                                      color: Color(0xff373737),
                                    ),
                                    hintText: 'Email',
                                    labelStyle: TextStyle(
                                      color: Color(0xffa7a7a7),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (val) {
                                    if (val.length == 0)
                                      return "Please enter email";
                                    else if (!val.contains("@"))
                                      return "Please enter valid email";
                                    else
                                      return null;
                                  },
                                  onSaved: (String value) {
                                    _email = value;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      color: Color(color),
                                    ),
                                    onTap: ()
                                    {
                                      setState(() {
                                        color =0xff0ab7af;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 4, right: 4),
                                    child: Text("I have accepted the",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffa7a7a7),
                                            fontWeight: FontWeight.normal)),
                                  ),
                                  InkWell(
                                    child: Text("Tearms and Condition",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff00a79b),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
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
                                  child: Text("Sign Up".toUpperCase(),
                                      style: TextStyle(fontSize: 16)),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
